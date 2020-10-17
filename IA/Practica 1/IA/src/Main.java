import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.Scanner;

import Models.BicingFinalState;
import Models.BicingHeuristicFunctionBeneficio;
import Models.BicingHeuristicFunctionIngresos;
import Models.BicingSuccessorFunction1;
import Models.BicingSuccessorFunction2;
import Models.Board;
import Models.Ciudad;
import IA.Bicing.Estaciones;

import java.awt.Desktop;
import java.awt.Desktop.Action;
import java.lang.System;

public class Main {
	public static void main(String[] args) throws Exception {
		Scanner escaner = new Scanner(System.in);
		Random myRandom = new Random(System.currentTimeMillis());
		
		System.out.println("BICING - IA");
		System.out.println("Que opción prefiere:");
		System.out.println("[1] Generación aleatoria del problema");
		System.out.println("[2] Insertar parametros manualmente");
		System.out.println("Si elige una opción inválida se generará el problema aleatoriamente.");
		byte opcion = escaner.nextByte();
		
		
		int nest = myRandom.nextInt(100);
		int nbic = nest * (myRandom.nextInt(10) + 50);
		int dem = myRandom.nextInt(1);
		int seed = myRandom.nextInt(100000);
		int nfurgo = nest / (myRandom.nextInt(1)+4);
		
		if(opcion == 2) {
			System.out.println("Inserte el número de estaciones:");
			nest = escaner.nextInt();
			System.out.println("Inserte el número de bicicletas:");
			nbic = escaner.nextInt();
			System.out.println("Inserte número de furgonetas:");
			nfurgo = escaner.nextInt();
			System.out.println("Inserte el tipo de demanda:");
			System.out.println("[0] Equilibrada");
			System.out.println("[1] Hora punta");
			System.out.println("Si elige una opción inválida se ejecutara el problema con demanda Equilibrada.");
			dem = escaner.nextInt();
			if(dem != 0 || dem != 1) dem = 0;
			System.out.println("Inserte una seed para la generación de estaciones:");
			seed = escaner.nextInt();
		}
		
		System.out.println("Que metodo de inicializacion de furgonetas quiere:");
		System.out.println("[1] Posicionamiento trivial");
		System.out.println("[2] Posicionamiento mas complejo");
		System.out.println("Si elige una opción inválida se ejecutara el problema con el metodo 2.");
		byte posicionamiento = escaner.nextByte();
		if(posicionamiento != 1) posicionamiento = 2;
		
		System.out.println("Que heuristico quiere:");
		System.out.println("[1] Maximizar ingresos");
		System.out.println("[2] Maximizar beneficios");
		System.out.println("Si elige una opción inválida se ejecutara el problema con el heuristico 2.");
		byte heuristico = escaner.nextByte();
		if(heuristico != 1) heuristico = 2;
		
		System.out.println("Que conjunto de operadores quiere:");
		System.out.println("[1] Solo una descarga");
		System.out.println("[2] Dos descargas");
		System.out.println("Si elige una opción inválida se ejecutara el problema con el conjunto de operadores 2.");
		byte operadores = escaner.nextByte();
		if(operadores != 1) operadores = 2;
		
		long ini = System.currentTimeMillis();
		
		Ciudad ciudad = new Ciudad(nest, nbic, dem, seed, nfurgo, posicionamiento);
		Board board = new Board(ciudad);
		
		Problem problem = null;
		
		if(heuristico == 1) {
			if(operadores == 1) {
				problem = new Problem(board, new BicingSuccessorFunction1(), new BicingFinalState(), new BicingHeuristicFunctionIngresos());
			}
			else {
				problem = new Problem(board, new BicingSuccessorFunction2(), new BicingFinalState(), new BicingHeuristicFunctionIngresos());
			}
		}
		else {
			if(operadores == 1) {
				problem = new Problem(board, new BicingSuccessorFunction1(), new BicingFinalState(), new BicingHeuristicFunctionBeneficio());
			}
			else {
				problem = new Problem(board, new BicingSuccessorFunction2(), new BicingFinalState(), new BicingHeuristicFunctionBeneficio());
			}
		}
		
		Search search = new HillClimbingSearch();
		
		SearchAgent agent = new SearchAgent(problem,search);
		
		long fin = System.currentTimeMillis();
		
		System.out.println("Bicing HillClimbing  -->");
		
		System.out.println();
		
		System.out.println("Número de biciletas: "+nbic);
		System.out.println("Número de estaciones: "+nest);
		System.out.println("Número de furgonetas: "+nfurgo);
		if(dem == 0) System.out.println("Tipo de demanda: Equilibrada");
		else System.out.println("Tipo de demanda: Hora Punta");
		System.out.println("Seed: "+seed);
		if(posicionamiento == 1) System.out.println("Metodo de posicionamiento de furgonetas 1");
		else  System.out.println("Metodo de posicionamiento de furgonetas 2");
		if(heuristico == 1) System.out.println("Heuristico: Maximizar ingresos");
		else System.out.println("Heuristico: Maximizar beneficios");
		if(operadores == 1) System.out.println("Conjunto de operadores 1 (solo una decarga)");
		else System.out.println("Conjunto de operadores 2 (dos decargas)");
		
		System.out.println();
		
		printActions(agent.getActions());
		printInstrumentation(agent.getInstrumentation());
		System.out.println("Time = "+(fin-ini)+" ms");
	}
	
	private static void printInstrumentation(Properties properties) {
		Iterator keys = properties.keySet().iterator();
		System.out.println();
		while (keys.hasNext()) {
			String key = (String) keys.next();
			String property = properties.getProperty(key);
			System.out.println(key + " : " + property);
		}
	}
	
	private static void printActions(List actions) {
		for (int i = 0; i < actions.size(); i++) {
			String action = (String) actions.get(i);
			System.out.println(action);
		}
	}

}
