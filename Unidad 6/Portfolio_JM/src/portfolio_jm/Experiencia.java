
package portfolio_jm;


public class Experiencia {
    private String empresa;
    private String periodo;
    private String descripcion;
    private String imagen;

    public Experiencia(String empresa, String periodo, String descripcion, String imagen) {
        this.empresa = empresa;
        this.periodo = periodo;
        this.descripcion = descripcion;
        this.imagen = imagen;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    @Override
    public String toString() {
        return "Experiencia{" + "empresa=" + empresa + ", periodo=" + periodo + ", descripcion=" + descripcion + ", imagen=" + imagen + '}';
    }
    
    
}
