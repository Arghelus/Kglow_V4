package Logica.DAO;

import Logica.Producto;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;


public class ProductoDAO {

    // Método para obtener todos los productos
public List<Producto> obtenerTodosLosProductos() {
    List<Producto> productos = new ArrayList<>();
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        // Registra el controlador
        Class.forName("com.mysql.cj.jdbc.Driver");
        // Establece la conexión
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
        String sql = "SELECT * FROM Productos";
        stmt = conn.prepareStatement(sql);
        rs = stmt.executeQuery();

        // Procesa el resultado de la consulta
        while (rs.next()) {
            Producto producto = new Producto();
            producto.setId_producto(rs.getInt("id_producto"));
            producto.setNombre_producto(rs.getString("nombre_producto"));
            producto.setDescripcion(rs.getString("descripcion"));
            producto.setPrecio(rs.getDouble("precio"));
            producto.setMarca(rs.getString("marca"));
            producto.setComtenido(rs.getString("contenido"));
            producto.setOrigen(rs.getString("origen"));
            producto.setTipo(rs.getString("tipo"));
            producto.setCategoria(rs.getString("id_categoria"));
            productos.add(producto);
        }
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    } finally {
        // Cierra los recursos en orden inverso al que fueron abiertos
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    return productos;
}

    // Método para agregar un nuevo producto
    public void agregarProducto(Producto producto) {
        String sql = "INSERT INTO Productos (nombre_producto, descripcion, precio, marca, contenido, origen, tipo, id_categoria) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, producto.getNombre_producto());
            ps.setString(2, producto.getDescripcion());
            ps.setDouble(3, producto.getPrecio());
            ps.setString(4, producto.getMarca());
            ps.setString(5, producto.getComtenido());
            ps.setString(6, producto.getOrigen());
            ps.setString(7, producto.getTipo());
            ps.setString(8, producto.getCategoria());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Método para buscar producto por ID
    public Producto buscarProductoPorId(int id) {
        Producto producto = null;
        String sql = "SELECT * FROM Productos WHERE id_producto = ?";
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    producto = new Producto();
                    producto.setId_producto(rs.getInt("id_producto"));
                    producto.setNombre_producto(rs.getString("nombre_producto"));
                    producto.setDescripcion(rs.getString("descripcion"));
                    producto.setPrecio(rs.getDouble("precio"));
                    producto.setMarca(rs.getString("marca"));
                    producto.setComtenido(rs.getString("contenido"));
                    producto.setOrigen(rs.getString("origen"));
                    producto.setTipo(rs.getString("tipo"));
                    producto.setCategoria(rs.getString("id_categoria"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return producto;
    }

    // Método para actualizar un producto existente
    public void actualizarProducto(Producto producto) {
        String sql = "UPDATE Productos SET nombre_producto = ?, descripcion = ?, precio = ?, marca = ?, contenido = ?, origen = ?, tipo = ?, id_categoria = ? WHERE id_producto = ?";
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, producto.getNombre_producto());
            ps.setString(2, producto.getDescripcion());
            ps.setDouble(3, producto.getPrecio());
            ps.setString(4, producto.getMarca());
            ps.setString(5, producto.getComtenido());
            ps.setString(6, producto.getOrigen());
            ps.setString(7, producto.getTipo());
            ps.setString(8, producto.getCategoria());
            ps.setInt(9, producto.getId_producto());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Método para eliminar un producto por ID
    public void eliminarProducto(int id) {
        String sql = "DELETE FROM Productos WHERE id_producto = ?";
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
