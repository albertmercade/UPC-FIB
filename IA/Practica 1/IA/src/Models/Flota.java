package Models;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import IA.Bicing.Estacion;
import aima.basic.XYLocation;

public class Flota implements Cloneable {
	
	private int sizeFlota;
	private ArrayList<Furgoneta> flotaFurgonetas;
	private static int globalId = 0;
	
	// Para usar el posicionamiento simple de furgonetas
	public Flota(int nfurgonetas,int seed) {
		sizeFlota = nfurgonetas;
		flotaFurgonetas = new ArrayList<Furgoneta>();
		Random myRandom = new Random(seed);
		for(int i = 0; i < nfurgonetas; ++i) {
			Furgoneta f = new Furgoneta(myRandom.nextInt(100)*100, myRandom.nextInt(100)*100,globalId);
			++globalId;
			flotaFurgonetas.add(f);
		}
	}
	
	// Para usar el posicionamiento mas complejo de furgonetas
	public Flota(int nfurgonetas) {
		sizeFlota = nfurgonetas;
		flotaFurgonetas = new ArrayList<Furgoneta>();
	}
	
	public void addFurgoneta(int coordX, int coordY) {
		Furgoneta f = new Furgoneta(coordX, coordY,globalId++);
		flotaFurgonetas.add(f);
	}

	
	
	public int getSizeFlota() {
		return sizeFlota;
	}
		
	
	public Furgoneta getFurgoneta(int index) {
		return flotaFurgonetas.get(index);
	}
	
	
	public int getBicicletasCargadas(int index) {
		return flotaFurgonetas.get(index).getBicicletasCargadas();
	}
	
	
	public boolean furgonetaExistsAt(int xfrom, int yfrom) {
		Iterator<Furgoneta> i = flotaFurgonetas.iterator();
		while (i.hasNext()) {
			Furgoneta furgoneta = (Furgoneta) i.next();
			if (furgoneta.getCoordXActual() == xfrom && furgoneta.getCoordYActual() == yfrom)
				return true;
		}
		return false;
	}
	
	
	public void moveFurgonetaAt(int index, XYLocation xy) {
		flotaFurgonetas.get(index).setCoordXActual(xy.getXCoOrdinate());
		flotaFurgonetas.get(index).setCoordYActual(xy.getYCoOrdinate());
	}
	
	
	public void cargarFurgoneta(int index, int bibicles) {
		flotaFurgonetas.get(index).cargarFurgoneta(bibicles);
	}
	
	
	public void unloadBicicles(int van, int bicicles) {
		try { 
			flotaFurgonetas.get(van).descargarFurgoneta(bicicles);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Furgoneta> getPendingToLoad() {
		List<Furgoneta> result = new ArrayList<Furgoneta>();
		for(int i=0; i<flotaFurgonetas.size();++i) {
			Furgoneta target = flotaFurgonetas.get(i);
			if(!target.isCargada()) {
				result.add(target);
			}
		}
		return result; 
	}
	
	
}
