package Models;

import aima.search.framework.HeuristicFunction;


public class BicingHeuristicFunctionIngresos implements HeuristicFunction{
	public boolean equals(Object obj) {
		boolean retValue;
		
		retValue = super.equals(obj);
		return retValue;
	}
	
	
	/*
	 si sobran furgos, haria falta quitar furgonetas (operador)
	*/
	@Override
	public double getHeuristicValue(Object state) {
		Board actual = (Board) state;
		return actual.getFurgosSinCargar()*10000 + actual.getDemanda();
	}
}
