#include "MyGLWidget.h"

#include <iostream>

MyGLWidget::MyGLWidget (QWidget* parent) : QOpenGLWidget(parent), program(NULL)
{
  setFocusPolicy(Qt::StrongFocus);  // per rebre events de teclat
  cam = false;
  eulX = eulY = 0.0;
}

MyGLWidget::~MyGLWidget ()
{
  if (program != NULL)
    delete program;
}

void MyGLWidget::initializeGL ()
{
  // Cal inicialitzar l'ús de les funcions d'OpenGL
  initializeOpenGLFunctions();

  glClearColor(0.5, 0.7, 1.0, 1.0); // defineix color de fons (d'esborrat)
  carregaShaders();
  creaBuffersPatr();
  creaBuffersTerra();
  iniCamera();

  glEnable(GL_DEPTH_TEST);
}

void MyGLWidget::iniCamera () {
    Pmax = glm::vec3( 2.5, 1, 2.5);
    Pmin = glm::vec3(-2.5,0,-2.5);
    capsaContenidoraEscena();
    // perspective
    fov = 2*asin(0.5);
    ra = 1.0;
    zn = radiEsc;
    zf = 3*radiEsc;
    // ortho
    l = b = -radiEsc;
    r = t = radiEsc;
    zn2 = radiEsc;
    zf2 = 3*radiEsc;
    // viewTransform
    obs = centreEscena + glm::vec3(0,0,2*radiEsc);
    vrp = centreEscena;
    up = glm::vec3(0,1,0);

    projectTransform();
    viewTransform();
}

void MyGLWidget::paintGL ()
{
// Aquest codi és necessari únicament per a MACs amb pantalla retina.
#ifdef __APPLE__
  GLint vp[4];
  glGetIntegerv (GL_VIEWPORT, vp);
  ample = vp[2];
  alt = vp[3];
#endif

// En cas de voler canviar els paràmetres del viewport, descomenteu la crida següent i
// useu els paràmetres que considereu (els que hi ha són els de per defecte)
//  glViewport (0, 0, ample, alt);

  // Esborrem el frame-buffer
  glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  // Pintem Patricio1
  modelTransformPatr1 ();
  glBindVertexArray (VAO_Patr);
  glDrawArrays(GL_TRIANGLES, 0, patr.faces().size()*3);
  // Pintem Patricio2
  modelTransformPatr2 ();
  glBindVertexArray (VAO_Patr);
  glDrawArrays(GL_TRIANGLES, 0, patr.faces().size()*3);
  // Pintem Patricio3
  modelTransformPatr3 ();
  glBindVertexArray (VAO_Patr);
  glDrawArrays(GL_TRIANGLES, 0, patr.faces().size()*3);

  // Pintem terra
  modelTransformTerra ();
  glBindVertexArray (VAO_Terra);
  glDrawArrays(GL_TRIANGLES, 0, 6);

  glBindVertexArray (0);
}

void MyGLWidget::modelTransformTerra () {
    glm::mat4 TG (1.0f);
    glUniformMatrix4fv(transLoc, 1, GL_FALSE, &TG[0][0]);
}

void MyGLWidget::modelTransformPatr1 () {
    capsaContenidoraPatr();
    glm::mat4 TG (1.0f);
    TG = glm::translate(TG,glm::vec3(2,0,2));
    TG = glm::scale(TG, glm::vec3(escalaPatr,escalaPatr,escalaPatr));
    TG = glm::translate(TG, -centreBasePatr);
    glUniformMatrix4fv(transLoc, 1, GL_FALSE, &TG[0][0]);
}

void MyGLWidget::modelTransformPatr2 () {
    capsaContenidoraPatr();
    glm::mat4 TG (1.0f);
    TG = glm::rotate(TG, float(M_PI/2.0), glm::vec3(0,1,0));
    TG = glm::scale(TG, glm::vec3(escalaPatr,escalaPatr,escalaPatr));
    TG = glm::translate(TG, -centreBasePatr);
    glUniformMatrix4fv(transLoc, 1, GL_FALSE, &TG[0][0]);
}

void MyGLWidget::modelTransformPatr3 () {
    capsaContenidoraPatr();
    glm::mat4 TG (1.0f);
    TG = glm::translate(TG,glm::vec3(-2,0,-2));
    TG = glm::rotate(TG, float(M_PI), glm::vec3(0,1,0));
    TG = glm::scale(TG, glm::vec3(escalaPatr,escalaPatr,escalaPatr));
    TG = glm::translate(TG, -centreBasePatr);
    glUniformMatrix4fv(transLoc, 1, GL_FALSE, &TG[0][0]);
}

void MyGLWidget::projectTransform () {
    glm::mat4 PM (1.0f);
    if(!cam) PM = glm::perspective(fov, ra, zn, zf);
    else PM = glm::ortho(l, r, b, t, zn2, zf2);
    glUniformMatrix4fv(projLoc, 1, GL_FALSE, &PM[0][0]);
}

void MyGLWidget::viewTransform() {
    glm::mat4 VM (1.0f);
    //VM = glm::lookAt(obs,vrp,up);
    VM = glm::translate(VM,glm::vec3(0,0,-2*radiEsc));
    VM = glm::rotate(VM,eulX,glm::vec3(1,0,0));
    VM = glm::rotate(VM,-eulY,glm::vec3(0,1,0));
    VM = glm::translate(VM, -centreEscena);
    glUniformMatrix4fv(viewLoc, 1, GL_FALSE, &VM[0][0]);
}

void MyGLWidget::resizeGL (int w, int h)
{
    ample = w;
    alt = h;
    ra = float(ample)/float(alt);
    if(!cam) {
        if(ra<1) fov = 2*atan(tan(asin(0.5))/ra);
    }
    else {
        if(ra>1) {
            l = -ra * radiEsc;
            r = ra * radiEsc;
            b = -radiEsc;
            t = radiEsc;
        }
        else {
            b = -radiEsc / ra;
            t = radiEsc / ra;
            l = -radiEsc;
            r = radiEsc;
        }
    }
    projectTransform();
}

void MyGLWidget::capsaContenidoraEscena() {
    centreEscena = glm::vec3((Pmin[0]+Pmax[0])/2,(Pmin[1]+Pmax[1])/2,(Pmin[2]+Pmax[2])/2);
    radiEsc = sqrt(pow(Pmax[0]-Pmin[0],2)+pow(Pmax[1]-Pmin[1],2)+pow(Pmax[2]-Pmin[2],2))/2.0;
}

void MyGLWidget::keyPressEvent(QKeyEvent* event)
{
  makeCurrent();
  switch (event->key()) {
    case Qt::Key_O: {
      cam = !cam;
      projectTransform();
      break;
    }
    case Qt::Key_Z: {
      fov -= 0.1;
      projectTransform();
      break;
    }
    case Qt::Key_X: {
      fov += 0.1;
      projectTransform();
      break;
    }
    default: event->ignore(); break;
  }
  update();
}

void MyGLWidget::mousePressEvent (QMouseEvent *e)
{
  xClick = e->x();
  yClick = e->y();

  if (e->button() & Qt::LeftButton &&
      ! (e->modifiers() & (Qt::ShiftModifier|Qt::AltModifier|Qt::ControlModifier)))
  {
    DoingInteractive = ROTATE;
  }
}

void MyGLWidget::mouseReleaseEvent( QMouseEvent *)
{
  DoingInteractive = NONE;
}

void MyGLWidget::mouseMoveEvent(QMouseEvent *e)  // Cal modificar aquest mètode...
{
  makeCurrent();
  if (DoingInteractive == ROTATE)
  {
    eulY += (e->x() - xClick) * M_PI / 180;
    eulX += (e->y() - yClick) * M_PI / 180;
    viewTransform ();
  }

  xClick = e->x();
  yClick = e->y();

  update ();
}

void MyGLWidget::capsaContenidoraPatr() {
    float minx, maxx, miny, maxy, minz, maxz;
    minx = maxx = patr.vertices()[0];
    miny = maxy = patr.vertices()[1];
    minz = maxz = patr.vertices()[2];
    for(unsigned int i = 3; i < patr.vertices().size(); i+=3) {
        if(patr.vertices()[i] > maxx) maxx = patr.vertices()[i];
        if(patr.vertices()[i] < minx) minx = patr.vertices()[i];
        if(patr.vertices()[i+1] > maxy) maxy = patr.vertices()[i+1];
        if(patr.vertices()[i+1] < miny) miny = patr.vertices()[i+1];
        if(patr.vertices()[i+2] > maxz) maxz = patr.vertices()[i+2];
        if(patr.vertices()[i+2] < minz) minz = patr.vertices()[i+2];
    }
    centreBasePatr[0] = (maxx+minx)/2.0, centreBasePatr[1] = miny, centreBasePatr[2] = (maxz+minz)/2.0;
    escalaPatr = 1.0/(maxy-miny);
}

void MyGLWidget::creaBuffersPatr ()
{
  patr.load("../../models/Patricio.obj");

  // Creació del Vertex Array Object per pintar
  glGenVertexArrays(1, &VAO_Patr);
  glBindVertexArray(VAO_Patr);

  GLuint VBO_Patr[2];
  glGenBuffers(2, VBO_Patr);
  glBindBuffer(GL_ARRAY_BUFFER, VBO_Patr[0]);
  glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat)*patr.faces().size()*3*3, patr.VBO_vertices(), GL_STATIC_DRAW);

  // Activem l'atribut vertexLoc
  glVertexAttribPointer(vertexLoc, 3, GL_FLOAT, GL_FALSE, 0, 0);
  glEnableVertexAttribArray(vertexLoc);

  glBindBuffer(GL_ARRAY_BUFFER, VBO_Patr[1]);
  glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat)*patr.faces().size()*3*3, patr.VBO_matdiff(), GL_STATIC_DRAW);

  // Activem l'atribut colorLoc
  glVertexAttribPointer(colorLoc, 3, GL_FLOAT, GL_FALSE, 0, 0);
  glEnableVertexAttribArray(colorLoc);

  glBindVertexArray (0);
}

void MyGLWidget::creaBuffersTerra() {
    glm::vec3 Vertices[6];
    Vertices[0] = glm::vec3(-2.5,0.0,-2.5);
    Vertices[1] = glm::vec3( 2.5,0.0,-2.5);
    Vertices[2] = glm::vec3(-2.5,0.0, 2.5);
    Vertices[3] = glm::vec3( 2.5,0.0,-2.5);
    Vertices[4] = glm::vec3(-2.5,0.0, 2.5);
    Vertices[5] = glm::vec3( 2.5,0.0, 2.5);

    glm::vec3 Colors[6];
    Colors[0] = glm::vec3(1.0,0.0,0.0);
    Colors[1] = glm::vec3(1.0,0.0,0.0);
    Colors[2] = glm::vec3(1.0,0.0,0.0);
    Colors[3] = glm::vec3(1.0,0.0,0.0);
    Colors[4] = glm::vec3(1.0,0.0,0.0);
    Colors[5] = glm::vec3(1.0,0.0,0.0);

    glGenVertexArrays(1, &VAO_Terra);
    glBindVertexArray(VAO_Terra);

    GLuint VBO_Terra[2];
    glGenBuffers(2, VBO_Terra);

    glBindBuffer(GL_ARRAY_BUFFER, VBO_Terra[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(Vertices), Vertices, GL_STATIC_DRAW);

    glVertexAttribPointer(vertexLoc, 3, GL_FLOAT, GL_FALSE, 0, 0);
    glEnableVertexAttribArray(vertexLoc);

    glBindBuffer(GL_ARRAY_BUFFER, VBO_Terra[1]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(Colors), Colors, GL_STATIC_DRAW);

    glVertexAttribPointer(colorLoc, 3, GL_FLOAT, GL_FALSE, 0, 0);
    glEnableVertexAttribArray(colorLoc);

    glBindVertexArray (0);
}

void MyGLWidget::carregaShaders()
{
  // Creem els shaders per al fragment shader i el vertex shader
  QOpenGLShader fs (QOpenGLShader::Fragment, this);
  QOpenGLShader vs (QOpenGLShader::Vertex, this);
  // Carreguem el codi dels fitxers i els compilem
  fs.compileSourceFile("shaders/basicShader.frag");
  vs.compileSourceFile("shaders/basicShader.vert");
  // Creem el program
  program = new QOpenGLShaderProgram(this);
  // Li afegim els shaders corresponents
  program->addShader(&fs);
  program->addShader(&vs);
  // Linkem el program
  program->link();
  // Indiquem que aquest és el program que volem usar
  program->bind();

  // Obtenim identificador per a l'atribut “vertex” del vertex shader
  vertexLoc = glGetAttribLocation (program->programId(), "vertex");
  // Obtenim identificador per a l'atribut “color” del vertex shader
  colorLoc = glGetAttribLocation (program->programId(), "color");
  // Uniform locations
  transLoc = glGetUniformLocation(program->programId(), "TG");
  projLoc = glGetUniformLocation(program->programId(), "PM");
  viewLoc = glGetUniformLocation(program->programId(), "VM");
}
