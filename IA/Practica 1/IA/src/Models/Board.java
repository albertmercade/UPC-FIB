package Models;
import java.awt.geom.Point2D;
import java.awt.geom.Point2D.Float;
import java.util.ArrayList;
import java.util.List;

import IA.Bicing.Estacion;
import IA.Bicing.Estaciones;

public class Board implements Cloneable {

	private static Ciudad city;
	
	private List <Point2D> load;//lista de furgos con las estaciones donde carga cada una
	private List <Point2D> unloadRound1;//lista de furgos con las estaciones donde descarga cada uno
	private List <Point2D> unloadRound2;
	private List <Integer> movedBikes;
	private int demandaASatisfacer;
	private int distanciaAgregada;
	private double costeDeDesplazamiento;
	private int furgosSinCargar;
	private double ingresos;
	
	public Board(Ciudad ciudad) throws CloneNotSupportedException {
		city = ciudad;
		load = new ArrayList<Point2D>();
		unloadRound1 = new ArrayList<Point2D>();
		unloadRound2 = new ArrayList<Point2D>();
		movedBikes = new ArrayList<Integer>();
		furgosSinCargar = city.getFlota().getSizeFlota();
		for(int i=0; i<furgosSinCargar; ++i) {
			load.add(new Point2D.Float(-1, -1));
			unloadRound1.add(new Point2D.Float(-1, -1));
			unloadRound2.add(new Point2D.Float(-1, -1));
		}
		
		for(int i=0; i<city.getEstaciones().size(); ++i) {
			movedBikes.add(0);
		}
		demandaASatisfacer = city.getDemandaTotal();
		distanciaAgregada = 0;
		costeDeDesplazamiento = 0;
		ingresos = 0;
	}
	
	private Board(Board board) {
		load = new ArrayList<Point2D>(board.load);
		unloadRound1 = new ArrayList<Point2D>(board.unloadRound1);
		unloadRound2 = new ArrayList<Point2D>(board.unloadRound2);
		movedBikes = new ArrayList<Integer>(board.movedBikes);
		demandaASatisfacer = board.demandaASatisfacer;
		distanciaAgregada = board.distanciaAgregada;
		costeDeDesplazamiento = board.costeDeDesplazamiento;
		ingresos = board.ingresos;
		furgosSinCargar = board.furgosSinCargar;
	}
	
	@Override
	public Object clone() {
		return new Board(this);
	}
	
	public double getIngresos() {
		return ingresos;
	}
	
	public double getcosteDeDesplazamiento () {
		return costeDeDesplazamiento/1000;
	}
	public int getDistanciaAgregada() {
		return distanciaAgregada;
	}
	public int getFurgosSinCargar() {
		return furgosSinCargar;
	}
	public int getDemanda() {
		return demandaASatisfacer;
	}
	
	public Board loadFurgoTo(Furgoneta furgo, Estacion est) throws CloneNotSupportedException {
		Estaciones stations = city.getEstaciones();
		int sobran = est.getNumBicicletasNext() - est.getDemanda();
		int stationId = stations.indexOf(est);
		if(sobran <= 0 || load.get(furgo.getId()).getX() != -1 || movedBikes.get(stationId) != 0) {
			return null;
		}
		Board newBoard = (Board) this.clone();
		newBoard.load.set(furgo.getId(), new Point2D.Float(est.getCoordX(),est.getCoordY()));
		if(Math.min(sobran,est.getNumBicicletasNoUsadas()) == 0) 
			return null;
		newBoard.movedBikes.set(stationId,-1*Math.min(30,Math.min(sobran,est.getNumBicicletasNoUsadas())));
		int manhattanDistance = Math.abs(furgo.getCoordXActual()-est.getCoordX()) + Math.abs(furgo.getCoordYActual()-est.getCoordY());
		newBoard.distanciaAgregada += manhattanDistance;
		newBoard.costeDeDesplazamiento += manhattanDistance*0.9;
		--newBoard.furgosSinCargar;
		return newBoard;
	}
	// (numBikes + 9)/10 * distancia
	public Board unloadFurgoTo(Furgoneta furgo, Estacion est) {
		Estaciones stations = city.getEstaciones();
		int faltan = est.getDemanda() - est.getNumBicicletasNext();
		int stationId = stations.indexOf(est);
		if(faltan <= 0 || unloadRound1.get(furgo.getId()).getX() != -1 || movedBikes.get(stationId) < 0) {
			return null;
		}
		Board newBoard = (Board) this.clone();
		newBoard.unloadRound1.set(furgo.getId(), new Point2D.Float(est.getCoordX(),est.getCoordY()));
		int currentBikes = newBoard.movedBikes.get(stationId);
		int loadStationId = -1;
		for(int i=0; i<stations.size(); ++i) {
			int x = stations.get(i).getCoordX();
			int y = stations.get(i).getCoordY();
			if(load.get(furgo.getId()).equals(new Point2D.Float(x,y))) {
				loadStationId = i;
				break;
			}
		}
		if(loadStationId == -1)
			return null;
		int carga = -1*movedBikes.get(loadStationId);
		if(faltan < carga) {
			newBoard.unloadRound1.set(furgo.getId(), new Point2D.Float(est.getCoordX(),est.getCoordY()));
			newBoard.movedBikes.set(loadStationId, -1*(carga-faltan));
			newBoard.movedBikes.set(stationId, faltan);
			newBoard.ingresos += faltan;
			newBoard.demandaASatisfacer -= faltan;
		}
		else {
			newBoard.unloadRound1.set(furgo.getId(), new Point2D.Float(est.getCoordX(),est.getCoordY()));
			newBoard.movedBikes.set(loadStationId, 0);
			newBoard.movedBikes.set(stationId, currentBikes+carga);
			newBoard.ingresos += carga;
			newBoard.demandaASatisfacer -= carga;
		}
		int manhattanDistance = Math.abs((int)load.get(furgo.getId()).getX()-est.getCoordX()) + Math.abs((int)load.get(furgo.getId()).getY()-est.getCoordY());
		newBoard.distanciaAgregada += manhattanDistance;
		newBoard.costeDeDesplazamiento += manhattanDistance*((carga+9)/10);
		return newBoard;
	}
	
	public Board unloadFurgoToRound2(Furgoneta furgo, Estacion est) {
		Estaciones stations = city.getEstaciones();
		int loadStationId = -1;
		for(int i=0; i<stations.size(); ++i) {
			int x = stations.get(i).getCoordX();
			int y = stations.get(i).getCoordY();
			if(load.get(furgo.getId()).getX() == x && load.get(furgo.getId()).getY() == y) {
				loadStationId = i;
				break;
			}
		}
		int faltan = est.getDemanda() - est.getNumBicicletasNext();
		int stationId = stations.indexOf(est);
		if(loadStationId == -1)
			return null;
		if(movedBikes.get(loadStationId) >= 0 || (int)unloadRound1.get(furgo.getId()).getX() == est.getCoordX() && (int)unloadRound1.get(furgo.getId()).getY() == est.getCoordY()) 
			return null;

		if(faltan <= 0 || unloadRound2.get(furgo.getId()).getX() != -1 || movedBikes.get(stationId) < 0 || unloadRound1.get(furgo.getId()).getX() == -1) 
			return null;
		
		Board newBoard = (Board) this.clone();
	
		
		int carga = -1*movedBikes.get(loadStationId);
		if(faltan < carga) {
			newBoard.unloadRound2.set(furgo.getId(), new Point2D.Float(est.getCoordX(),est.getCoordY()));
			newBoard.movedBikes.set(loadStationId, -1*(carga-faltan));
			newBoard.movedBikes.set(stationId, faltan);
			newBoard.ingresos += faltan;
			newBoard.demandaASatisfacer -= faltan;
		}
		else {
			int currentBikes = newBoard.movedBikes.get(stationId);
			newBoard.unloadRound2.set(furgo.getId(), new Point2D.Float(est.getCoordX(),est.getCoordY()));
			newBoard.movedBikes.set(loadStationId, 0);
			newBoard.movedBikes.set(stationId, currentBikes+carga);
			newBoard.ingresos += carga;
			newBoard.demandaASatisfacer -= carga;
		}
		
		int manhattanDistance = Math.abs((int)unloadRound1.get(furgo.getId()).getX()-est.getCoordX()) + Math.abs((int)unloadRound1.get(furgo.getId()).getY()-est.getCoordY());
		newBoard.distanciaAgregada += manhattanDistance;
		newBoard.costeDeDesplazamiento += manhattanDistance*((carga+9)/10);
		return newBoard;
	}
	
	public static Ciudad getCity() {
		return city;
	}
	
	public List<Estacion> estacionesNoCargadas() {
		List<Estacion> result = new ArrayList<Estacion>();
		for (int i = 0; i < city.getSizeEstaciones(); ++i) {
			if(movedBikes.get(i) >= 0) result.add(city.getEstaciones().get(i));
		}
		return result;
	}

	public int getCargaOfFurgo(Furgoneta furgo) {
		Estaciones stations = Board.getCity().getEstaciones();
		int loadStationId = -1;
		for(int i=0; i<stations.size(); ++i) {
			int x = stations.get(i).getCoordX();
			int y = stations.get(i).getCoordY();
			if(load.get(furgo.getId()).equals(new Point2D.Float(x,y))) {
				loadStationId = i;
				break;
			}
		}
		return -1*movedBikes.get(loadStationId);
	}
	
	public double getBeneficios() {
		return ingresos-getcosteDeDesplazamiento();
	}
}


