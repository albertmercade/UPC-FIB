#define GLM_FORCE_RADIANS
#include <QOpenGLFunctions_3_3_Core>
#include <QOpenGLWidget>
#include <QOpenGLShader>
#include <QOpenGLShaderProgram>
#include <QKeyEvent>
#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"

#include "model.h"

class MyGLWidget : public QOpenGLWidget, protected QOpenGLFunctions_3_3_Core
{
  Q_OBJECT

  public:
    MyGLWidget (QWidget *parent=0);
    ~MyGLWidget ();

  protected:
    // initializeGL - Aqui incluim les inicialitzacions del contexte grafic.
    virtual void initializeGL ( );
    // paintGL - Mètode cridat cada cop que cal refrescar la finestra.
    // Tot el que es dibuixa es dibuixa aqui.
    virtual void paintGL ( );
    // resizeGL - És cridat quan canvia la mida del widget
    virtual void resizeGL (int width, int height);
    // keyPressEvent - Es cridat quan es prem una tecla
    virtual void keyPressEvent (QKeyEvent *event);
    // mouse{Press/Release/Move}Event - Són cridades quan es realitza l'event
    // corresponent de ratolí
    virtual void mousePressEvent (QMouseEvent *event);
    virtual void mouseReleaseEvent (QMouseEvent *event);
    virtual void mouseMoveEvent (QMouseEvent *event);

  private:
    void creaBuffersTerra ();
    void creaBuffersPatr ();
    void carregaShaders ();
    void modelTransformTerra ();
    void modelTransformPatr1 ();
    void modelTransformPatr2 ();
    void modelTransformPatr3 ();
    void projectTransform ();
    void viewTransform ();
    void iniCamera ();
    void capsaContenidoraEscena ();
    void capsaContenidoraPatr ();

    // attribute locations
    GLuint vertexLoc, colorLoc;
    // uniform locations
    GLuint transLoc, projLoc, viewLoc;
    // VAO i VBO names
    GLuint VAO_Terra, VAO_Patr;
    // Model
    Model patr;
    // Program
    QOpenGLShaderProgram *program;
    // Viewport
    GLint ample, alt;
    // Internal vars
    glm::vec3 pos;
    // projectTransform
    float fov, ra, zn, zf;
    float l, r, b, t, zn2, zf2;
    bool cam;
    // viewTransform
    glm::vec3 obs, vrp, up;
    float eulX, eulY;
    // Mouse interaction
    typedef  enum {NONE, ROTATE} InteractiveAction;
    InteractiveAction DoingInteractive;
    int xClick, yClick;
    // capsa contenidora
    float radiEsc;
    glm::vec3 centreEscena, Pmax, Pmin;
    // capsa contenidora Patr
    glm::vec3 centreBasePatr;
    float escalaPatr;
};
