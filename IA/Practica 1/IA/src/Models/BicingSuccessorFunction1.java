package Models;

import java.util.ArrayList;
import java.util.List;
import java.util.Queue;

import IA.Bicing.Estacion;
import aima.basic.XYLocation;
import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

public class BicingSuccessorFunction1 implements SuccessorFunction {
	
	public List getSuccessors(Object state) {
		List<Successor> successors = new ArrayList<Successor>();

		Board board = (Board) state;
		Board successor = null;
		Ciudad currentCity = Board.getCity();
		for(int i=0; i<currentCity.getSizeFlota();++i) {
			for(int j=0; j<currentCity.getSizeEstaciones(); ++j) {
				try {
					successor = board.loadFurgoTo(currentCity.getFlota().getFurgoneta(i), 
							currentCity.getEstaciones().get(j));
				}catch (Exception e) {
					// TODO: handle exception
				}
				if(successor != null) {
					Estacion est = Board.getCity().getEstaciones().get(j);
					try {
						successors.add(new Successor("load->["+i+",("+est.getCoordX()+","+est.getCoordY()+")] |"
								+ " ingreso = "+successor.getIngresos()+ "| carga "
										+ "= "+(successor.getCargaOfFurgo(currentCity.getFlota().getFurgoneta(i)))+ " | beneficio = "+(Math.round(successor.getBeneficios()*100.0)/100.0),
										successor));
					} catch (CloneNotSupportedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
		List<Estacion> aux = board.estacionesNoCargadas();
		for(int i=0; i<currentCity.getSizeFlota();++i) {
			for(int j=0; j<aux.size(); ++j) {
				try {
					successor = board.unloadFurgoTo(currentCity.getFlota().getFurgoneta(i), aux.get(j));
				} catch (Exception e) {
					// TODO: handle exception
				}
				if(successor != null) {
					Estacion est = aux.get(j);
					successors.add(new Successor("unloadRound1->["+i+",("+est.getCoordX()+","+est.getCoordY()+")]| ingreso = "+successor.getIngresos()+" | beneficio = "+(Math.round(successor.getBeneficios()*100.0)/100.0)+" | distancia = "+successor.getDistanciaAgregada(), successor));
				}
			}
		}
		
		return successors;
	}
	
}
