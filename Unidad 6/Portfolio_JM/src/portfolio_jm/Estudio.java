
package portfolio_jm;

import java.util.Date;


public class Estudio {
    protected String titulo;
    protected String institucion;
    protected String imagen;
    protected Date ingreso;
    protected Date egreso;

    public Estudio(String titulo, String institucion, String imagen, Date ingreso, Date egreso) {
        this.titulo = titulo;
        this.institucion = institucion;
        this.imagen = imagen;
        this.ingreso = ingreso;
        this.egreso = egreso;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getInstitucion() {
        return institucion;
    }

    public void setInstitucion(String institucion) {
        this.institucion = institucion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public Date getIngreso() {
        return ingreso;
    }

    public void setIngreso(Date ingreso) {
        this.ingreso = ingreso;
    }

    public Date getEgreso() {
        return egreso;
    }

    public void setEgreso(Date egreso) {
        this.egreso = egreso;
    }
    
    
    
}
