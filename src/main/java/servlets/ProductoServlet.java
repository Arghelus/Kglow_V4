package servlets;
import Logica.Conexion;
import Logica.Producto;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/productosLabios")
public class ProductoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Producto> productos = new ArrayList<>();
        String query = "SELECT idProducto, nombreProducto, descripcion, precio, cantidadStock, fechaIngreso FROM Productos";

        try (Connection conn = Conexion.conectar();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                int idProducto = rs.getInt("idProducto");
                String nombreProducto = rs.getString("nombreProducto");
                String descripcion = rs.getString("descripcion");
                double precio = rs.getDouble("precio");
                int cantidadStock = rs.getInt("cantidadStock");
                // Si tienes una imagen en la base de datos, inclúyela aquí.

                // Aquí, solo se agrega el producto, y la imagen se puede gestionar de otra manera.
                productos.add(new Producto(nombreProducto, descripcion, precio, "rutaImagenPorDefecto"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Pasar la lista de productos a la vista
        request.setAttribute("productos", productos);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Labios.jsp");
        dispatcher.forward(request, response);
    }
}
