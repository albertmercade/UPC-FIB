package Models;

import aima.search.framework.HeuristicFunction;


public class BicingHeuristicFunctionBeneficio implements HeuristicFunction{
	public boolean equals(Object obj) {
		boolean retValue;
		
		retValue = super.equals(obj);
		return retValue;
	}
	
	
	@Override
	public double getHeuristicValue(Object state) {
		Board actual = (Board) state;
		//return actual.getIngresos() - actual.getcosteDeDesplazamiento();
		return actual.getFurgosSinCargar()*10000
				+ (actual.getDemanda() + actual.getcosteDeDesplazamiento());

	}
}
