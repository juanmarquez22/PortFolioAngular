package portfolio_jm;

import java.util.Date;

public class Grado extends Estudio{
    
    private String carrera;

    public Grado(String carrera, String titulo, String institucion, String imagen, Date ingreso, Date egreso) {
        super(titulo, institucion, imagen, ingreso, egreso);
        this.carrera = carrera;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    @Override
    public String toString() {
        return "Grado{" + "carrera=" + carrera + '}';
    }
    
    
    
}
