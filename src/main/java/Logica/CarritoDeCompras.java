package Logica;
import java.util.ArrayList;
import java.util.List;

public class CarritoDeCompras {

    static class Producto {
        String nombre;
        double precio;
        int cantidad;

        public Producto(String nombre, double precio, int cantidad) {
            this.nombre = nombre;
            this.precio = precio;
            this.cantidad = cantidad;
        }

        public double obtenerPrecioTotal() {
            return precio * cantidad;
        }
        
        @Override
        public String toString() {
            return String.format("Producto: %s, Precio Unitario: S/. %.2f, Cantidad: %d, Total: S/. %.2f",
                    nombre, precio, cantidad, obtenerPrecioTotal());
        }
    }

    private List<Producto> carrito;
    private double tasaDescuento;

    public CarritoDeCompras() {
        this.carrito = new ArrayList<>();
        this.tasaDescuento = 0.1; // Descuento del 10%
    }

    public void agregarProducto(String nombre, double precio, int cantidad) {
        Producto producto = new Producto(nombre, precio, cantidad);
        carrito.add(producto);
        System.out.println(nombre + " agregado al carrito.");
        mostrarCarrito();
    }

    public void eliminarProducto(String nombre) {
        carrito.removeIf(producto -> producto.nombre.equalsIgnoreCase(nombre));
        System.out.println(nombre + " eliminado del carrito.");
        mostrarCarrito();
    }

    public double calcularSubtotal() {
        double subtotal = 0;
        for (Producto producto : carrito) {
            subtotal += producto.obtenerPrecioTotal();
        }
        return subtotal;
    }

    public double calcularDescuento() {
        return calcularSubtotal() * tasaDescuento;
    }

    public double calcularTotal() {
        return calcularSubtotal() - calcularDescuento();
    }

    public void mostrarCarrito() {
        System.out.println("\nContenido del carrito:");
        for (Producto producto : carrito) {
            System.out.println(producto);
        }
        System.out.printf("\nSubtotal: S/. %.2f\n", calcularSubtotal());
        System.out.printf("Descuento: S/. %.2f\n", calcularDescuento());
        System.out.printf("Total: S/. %.2f\n", calcularTotal());
    }

    public static void main(String[] args) {
        CarritoDeCompras carrito = new CarritoDeCompras();

        // Ejemplo de agregar productos
        carrito.agregarProducto("Labial", 10.00, 2);
        carrito.agregarProducto("Base", 15.00, 1);
        carrito.agregarProducto("Producto C", 20.00, 3);

        // Ejemplo de quitar un producto
        carrito.eliminarProducto("Base");

        // Mostrar el total
        carrito.mostrarCarrito();
    }
}
