package Tests;
import Logica.CarritoDeCompras;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class CarritoComprasTest {
    private CarritoDeCompras carrito;

    @BeforeEach
    public void setUp() {
        carrito = new CarritoDeCompras();
    }

    @Test
    public void testCalculoSubtotal() {
        carrito.agregarProducto("Labial", 10.00, 2);
        carrito.agregarProducto("Base", 15.00, 1);
        assertEquals(35.00, carrito.calcularSubtotal());
    }

    @Test
    public void testCalculoDescuento() {
        carrito.agregarProducto("Labial", 10.00, 2);
        carrito.agregarProducto("Base", 15.00, 1);
        assertEquals(3.50, carrito.calcularDescuento(), 0.01); // Tolerancia de 0.01 para errores de redondeo
    }

    @Test
    public void testCalculoTotal() {
        carrito.agregarProducto("Labial", 10.00, 2);
        carrito.agregarProducto("Base", 15.00, 1);
        assertEquals(31.50, carrito.calcularTotal(), 0.01);
    }
}
