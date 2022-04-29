
package portfolio_jm;

import java.util.Date;

public class Pregrado extends Estudio{
    
    private float promedio;

    public Pregrado(float promedio, String titulo, String institucion, String imagen, Date ingreso, Date egreso) {
        super(titulo, institucion, imagen, ingreso, egreso);
        this.promedio = promedio;
    }

    public float getPromedio() {
        return promedio;
    }

    public void setPromedio(float promedio) {
        this.promedio = promedio;
    }

    @Override
    public String toString() {
        return "Pregrado{" + "promedio=" + promedio + '}';
    }

       
    
}
