package Models;

import IA.Bicing.Estaciones;
import IA.Bicing.Estacion;

import aima.basic.XYLocation;

import java.util.List;
import java.util.Random;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public class Ciudad implements Cloneable {
	private Estaciones estaciones;
	private Flota flota;
	
	int sizeEstaciones;
	private static List<XYLocation> unloadsPerStation;
	private static List<Integer> loadsPerStation;
	
	public Ciudad(int nest, int nbic, int dem, int seed, int nfurgonetas, int posicionamiento) {
		this.estaciones = new Estaciones(nest, nbic, dem, seed);
		estaciones.get(0).setDemanda(0);
		estaciones.get(0).setNumBicicletasNoUsadas(30);
		estaciones.get(1).setDemanda(15);
		estaciones.get(1).setNumBicicletasNext(0);
		estaciones.get(2).setDemanda(15);
		estaciones.get(2).setNumBicicletasNext(0);
		sizeEstaciones = nest;
		int countOfStationsWithDemanda = 0;
		for(int i=0;i<nest;++i) {
			if((estaciones.get(i).getNumBicicletasNext() - estaciones.get(i).getDemanda()) > 0)
				++countOfStationsWithDemanda;
		}
		if(posicionamiento == 1)this.flota = new Flota(Math.min(countOfStationsWithDemanda, nfurgonetas),seed);
		else {
			this.flota = new Flota(Math.min(countOfStationsWithDemanda, nfurgonetas));
			positionFurgonetas(nfurgonetas,seed);
		}
		
		unloadsPerStation = new ArrayList<XYLocation>(Collections.nCopies(nest, new XYLocation(0,0)));
		loadsPerStation = new ArrayList<Integer>(Collections.nCopies(nest, 0));
	}
	
	
	public Ciudad(Ciudad source) throws CloneNotSupportedException {
		this.estaciones = (Estaciones) source.getEstaciones();
		this.sizeEstaciones = estaciones.size();
		this.flota = (Flota) source.getFlota();
	}
	

	public Estaciones getEstaciones() {
		return (Estaciones) estaciones.clone();
	}
	public Flota getFlota() throws CloneNotSupportedException {
		return (Flota) flota;
	}
	public List<XYLocation> getUnloadsPerStation() {
		return unloadsPerStation;
	}
	public  List<Integer> getLoadsPerStation() {
		return loadsPerStation;
	}
	
	
	public int getSizeEstaciones() {
		return sizeEstaciones;
	}
	
	
	public int getSizeFlota() {
		return flota.getSizeFlota();
	}
	
	
	public int getBicicletasCargadas(int index) {
		return flota.getBicicletasCargadas(index);
	}
	
	
	public int getbiciclesAvailable(int index) {
		return estaciones.get(index).getNumBicicletasNext() - estaciones.get(index).getDemanda();
	}
	
	
	public boolean availableBicicles(int index) {
		return (estaciones.get(index).getNumBicicletasNext() - estaciones.get(index).getDemanda()) > 0;
	}
	
	
	public void moveFurgonetaAt(int index, XYLocation xy) {
		flota.moveFurgonetaAt(index, xy);
	}	
	
	
	public XYLocation getPositionStation(int index) {
		return new XYLocation(estaciones.get(index).getCoordX(),estaciones.get(index).getCoordY());
	}
	
	public void positionFurgonetas(int nfurgonetas, int seed) {
		int nestin = 0, nestout = 0;
		for(int i = 0; i < estaciones.size(); ++i) {
			Estacion est = estaciones.get(i);
			if(est.getDemanda() - est.getNumBicicletasNext() < 0 && est.getNumBicicletasNoUsadas() > 0) {
				if(est.getCoordX() <= 7500 && est.getCoordX() >= 2500 && est.getCoordY() <= 7500 && est.getCoordY() >= 2500) nestin++;
				else nestout++;
			}
		}
		
		int nfurgosin = nfurgonetas * nestin/(nestin+nestout);
		int nfurgosout = nfurgonetas - nfurgosin;
		
		Random myRandom = new Random(seed);
		
		for(int i = 0; i < nfurgosin; ++i) {
			flota.addFurgoneta((myRandom.nextInt(50)+25)*100, (myRandom.nextInt(50)+25)*100);
			
		}
		for(int i = 0; i < nfurgosout; ++i) {
			int coordX = myRandom.nextInt(100) * 100;
			int coordY = myRandom.nextInt(100) * 100;
			while(coordX<7500 && coordX>2500) coordX = myRandom.nextInt(100) * 100;
			while(coordY<7500 && coordY>2500) coordY = myRandom.nextInt(100) * 100;
			flota.addFurgoneta(coordX, coordY);
		}
	}
	
	
	public void cargarFurgoneta(int index, int estacion, int bicicles) {
		loadsPerStation.set(estacion, 1);
		flota.cargarFurgoneta(index, bicicles);
		int currentBicicles = estaciones.get(estacion).getNumBicicletasNext();
		estaciones.get(estacion).setNumBicicletasNext(currentBicicles-bicicles);
	}
	
	
	public boolean stationAvailableToUnload(int estacion) {
		//return unloadsPerStation.get(estacion).getYCoOrdinate() == 0;
		return true;
	}
	
	
	public boolean stationAvailableToload(int estacion) {
		//return loadsPerStation.get(estacion) == 0;
		return true;
	}
	

	public void unloadBicicles(int van, int estacion, int bicicles) {
		flota.unloadBicicles(van, bicicles);
		int currentBicicles = estaciones.get(estacion).getNumBicicletasNext();
		estaciones.get(estacion).setNumBicicletasNext(currentBicicles+bicicles);
		if (unloadsPerStation.get(estacion).getXCoOrdinate() == 0) {
			unloadsPerStation.set(estacion, new XYLocation(1,0));
		}
		else {
			unloadsPerStation.set(estacion, new XYLocation(1,1));
		}
	}
	
	
	public boolean biciclesUnderDemand(int index) {
		return (estaciones.get(index).getDemanda() - estaciones.get(index).getNumBicicletasNoUsadas()) > 0;
	}
	
	
	public int getDemandaTotal() {
		int result = 0;
		
		for(int i=0; i<estaciones.size(); ++i) {
			Estacion currentStation = estaciones.get(i);
			double aux = currentStation.getNumBicicletasNext()-currentStation.getDemanda();
			if(aux < 0) result += (aux*-1);
		}
		return result;
	}
	
	public int getBicisCargadasDistRecorrida() {
		int result = 0;
		for(int i=0; i<flota.getSizeFlota(); ++i) {
			Furgoneta currentFurgo = flota.getFurgoneta(i);
			result += currentFurgo.getBicicletasCargadas() * currentFurgo.getDistanciaRecorrida(); 
		}
		return result;
	}
}
