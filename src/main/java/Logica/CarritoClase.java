package Logica;

import Logica.DAO.CarritoDAO;
import Logica.DAO.DetalleCarritoDAO;
import Logica.DAO.ProductoDAO;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CarritoClase {
    @Id
    private int idCarrito;
    private int idUsuario;
    private String estado; // "activo" o "completado"
    private List<DetalleCarrito> detalles;

    public CarritoClase(int idUsuario) {
        this.idUsuario = idUsuario;
        this.estado = "activo";
    }

    // Getters y setters
    public int getIdCarrito() {
        return idCarrito;
    }

    public void setIdCarrito(int idCarrito) {
        this.idCarrito = idCarrito;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public List<DetalleCarrito> getDetalles() {
        return detalles;
    }

    public void setDetalles(List<DetalleCarrito> detalles) {
        this.detalles = detalles;
    }
}
