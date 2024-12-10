package Logica;
public class Labios {
    private int id;
    private String nombre;
    private double precioUnitario;
    private String imagen;

    public Labios(int id, String nombre, double precioUnitario, String imagen) {
        this.id = id;
        this.nombre = nombre;
        this.precioUnitario = precioUnitario;
        this.imagen = imagen;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public double getPrecioUnitario() {
        return precioUnitario;
    }

    public String getImagen() {
        return imagen;
    }
}
