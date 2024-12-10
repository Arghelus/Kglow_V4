package Logica.DAO;

import Logica.Producto;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/productos")
public class ProductoDAO extends HttpServlet {
        private static final long serialVersionUID = 1L;

    private static final String URL = "jdbc:mysql://localhost:3306/kglow2"; // Cambia esto a tu base de datos
    private static final String USER = "root"; // Usuario de la base de datos
    private static final String PASSWORD = "A300305r"; // Contraseña de la base de datos

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Producto> productos = obtenerProductos();
        request.setAttribute("productos", productos);
        request.getRequestDispatcher("/WEB-INF/views/productos.jsp").forward(request, response);
    }

    public List<Producto> obtenerProductos() {
        List<Producto> productos = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement ps = conn.prepareStatement("SELECT nombre, descripcion, precio, imagen FROM productos");
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                String nombre = rs.getString("nombre");
                String descripcion = rs.getString("descripcion");
                double precio = rs.getDouble("precio");
                String imagen = rs.getString("imagen");
                productos.add(new Producto(nombre, descripcion, precio, imagen));
            }
        } catch (Exception e) {
            e.printStackTrace(); // Manejo básico de errores
        }
        return productos;
    }
}
