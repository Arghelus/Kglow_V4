package Logica;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Producto {
   
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_producto;
    private String nombre_producto;
    private String descripcion;
    private double precio;
    private String marca;
    private String contenido;
    private String origen;
    private String tipo;
    private String categoria;

    public Producto() {
    } 

    public Producto(int id_producto, String nombre, String descripcion, double precio, String marca, String contenido, String origen, String tipo, String categoria) {
        this.id_producto = id_producto;
        this.nombre_producto = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.marca = marca;
        this.contenido = contenido;
        this.origen = origen;
        this.tipo = tipo;
        this.categoria = categoria;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getComtenido() {
        return contenido;
    }

    public void setComtenido(String contenido) {
        this.contenido = contenido;
    }

    public String getOrigen() {
        return origen;
    }

    public void setOrigen(String origen) {
        this.origen = origen;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    
  
}
