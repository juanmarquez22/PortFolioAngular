
package portfolio_jm;


public class Idioma {
    private String idiom;
    private String nivel;
    private String institucion;
    private String imagen;

    public Idioma(String idiom, String nivel, String institucion, String imagen){
        this.idiom = idiom;
        this.nivel = nivel;
        this.institucion = institucion;
        this.imagen = imagen;
    }

    public String getIdiom() {
        return idiom;
    }

    public void setIdiom(String idiom) {
        this.idiom = idiom;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public String getInsittucion() {
        return institucion;
    }

    public void setInsittucion(String insittucion) {
        this.institucion = insittucion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    @Override
    public String toString() {
        return "Idioma{" + "idiom=" + idiom + ", nivel=" + nivel + ", insittucion=" + institucion + ", imagen=" + imagen + '}';
    }
    
    
    
    
}
