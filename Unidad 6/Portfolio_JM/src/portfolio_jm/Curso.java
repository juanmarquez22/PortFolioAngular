
package portfolio_jm;


public class Curso {
    private String nombre;
    private String certificado;
    private String detalle;
    private String imagen;

    public Curso(String nombre, String certificado, String detalle, String imagen) {
        this.nombre = nombre;
        this.certificado = certificado;
        this.detalle = detalle;
        this.imagen = imagen;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCertificado() {
        return certificado;
    }

    public void setCertificado(String certificado) {
        this.certificado = certificado;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    @Override
    public String toString() {
        return "Curso{" + "nombre=" + nombre + ", certificado=" + certificado + ", detalle=" + detalle + ", imagen=" + imagen + '}';
    }
    
    
}
