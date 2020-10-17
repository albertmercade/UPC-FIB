package Models;
import java.lang.Math;

public class Furgoneta implements Cloneable {
	private short coordX;
	private short coordY;
	private byte bicicletasCargadas;
	private boolean flagCargada;
	private boolean flagDescarga1;
	private boolean flagDescarga2;
	private short distanciaRecorrida;
	private int id;
	
	public Furgoneta(int x,int y, int id) {
		coordX = (short)x;
		coordY = (short)y;
		bicicletasCargadas = 0;
		flagCargada = false;
		flagDescarga1 = false;
		flagDescarga2 = false;
		distanciaRecorrida = 0;
		this.id = id;
	}
	
	
    public Furgoneta clone() throws CloneNotSupportedException {
    	Furgoneta c = new Furgoneta(coordX, coordY,this.id);
    	c.bicicletasCargadas = this.bicicletasCargadas;
    	c.flagCargada = this.flagCargada;
    	c.flagDescarga1 = this.flagDescarga1;
    	c.flagDescarga2 = this.flagDescarga2;
    	c.distanciaRecorrida = this.distanciaRecorrida;
        return c;
    }
	
	
	public int getCoordXActual() {
		return coordX;
	}
	
	public int getCoordYActual() {
		return coordY;
	}
	
	public void setCoordXActual(int newX) {
		distanciaRecorrida += (short) Math.abs((short) (newX - coordX)); 
		coordX = (short) newX;
	}
	
	public void setCoordYActual(int newY) {
		distanciaRecorrida += (short) Math.abs((short) (newY - coordY)); 
		coordY = (short) newY;
	}
	
	//pre: conBicletas > 0 & <= 30
	public void cargarFurgoneta(int conNBicicletas) {
		flagCargada = true;
		bicicletasCargadas = (byte) conNBicicletas;
	}
	
	// pre: nBicicletas <= bicicletasCargadas
	public void descargarFurgoneta(int nBicicletas) throws Exception {
		/*si flag descargada es true significa ultima estacion que peude descargar
		se puede representar este caso bajando el flag de cargada
		false false -> inicial
		true false -> cargada
		true true -> descargada 1 vez
		false true -> ha descaragado 2 veces o el total de bicis
		*/
		if(nBicicletas <= 0 || nBicicletas > bicicletasCargadas) {
			throw new Exception("no suficientes bicis Cargadas");
		}
		if(flagDescarga1 && flagDescarga2) {
			throw new Exception("furgoneta ya descargada");
		}
		
		if (! flagDescarga1) {
			flagDescarga1 = true;
			bicicletasCargadas -= nBicicletas;
		}
		else if (! flagDescarga2) {
			flagDescarga2 = true;
			bicicletasCargadas -= nBicicletas;
		}
	}
	
	public boolean isCargada() {
		return flagCargada;
	}
	
	public short getDistanciaRecorrida() {
		return distanciaRecorrida;
	}
	public byte getBicicletasCargadas() {
		return bicicletasCargadas;
	}
	
	public int getId() {
		return id;
	}
}
