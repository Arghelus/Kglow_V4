/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Logica;

import Logica.DAO.CarritoDAO;
import Logica.DAO.DetalleCarritoDAO;
import Logica.DAO.ProductoDAO;
import java.util.List;

/**
 *
 * @author arghe
 */
public class CarritoService {
    private final CarritoDAO carritoDAO;
    private final DetalleCarritoDAO detalleCarritoDAO;
    private final ProductoDAO productoDAO;

    public CarritoService() {
        this.carritoDAO = new CarritoDAO();
        this.detalleCarritoDAO = new DetalleCarritoDAO();
        this.productoDAO = new ProductoDAO();
    }

    public CarritoClase obtenerCarrito(int idUsuario) {
        List<DetalleCarrito> detalles = carritoDAO.obtenerDetallesCarrito(idUsuario);
        CarritoClase carrito = new CarritoClase(idUsuario);
        carrito.setDetalles(detalles);
        return carrito;
    }

    public void agregarProductoAlCarrito(int idCarrito, int idVariante, int cantidad) {
        DetalleCarrito detalle = new DetalleCarrito(idVariante, cantidad);
        carritoDAO.agregarProductoCarrito(idCarrito, detalle);
    }

    public void eliminarProductoDelCarrito(int idDetalle) {
        carritoDAO.eliminarProductoCarrito(idDetalle);
    }

    public void actualizarCantidadProducto(int idDetalle, int cantidad) {
        detalleCarritoDAO.actualizarCantidad(idDetalle, cantidad);
    }

    public double calcularTotalCarrito(List<DetalleCarrito> detalles) {
        double total = 0.0;
        for (DetalleCarrito detalle : detalles) {
            Producto producto = productoDAO.buscarProductoPorId(detalle.getIdVariante());
            if (producto != null) {
                total += producto.getPrecio() * detalle.getCantidad();
            }
        }
        return total;
    }
}
