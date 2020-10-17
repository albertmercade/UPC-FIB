#include "Volume.h"
#include "glwidget.h"

void Volume::onPluginLoad()
{
	Scene* esc = scene();
	const Object& obj = esc->objects()[0];

	int nCares = obj.faces().size();

	float vol = 0.0;

	for (int i = 0; i < nCares; ++i) {
		const Face& cara = obj.faces()[i];
		float Nz = cara.normal().z();
		Point V1 = obj.vertices()[cara.vertexIndex(0)].coord();
		Point V2 = obj.vertices()[cara.vertexIndex(1)].coord();
		Point V3 = obj.vertices()[cara.vertexIndex(2)].coord();

		float A = QVector3D::crossProduct(V1-V2,V3-V2).length()/2.0;
		float Cz = ((V1 + V2 + V3)/3).z();

		vol += Cz * Nz * A;
	}

	cout << "Volume: " << vol << endl;
}
