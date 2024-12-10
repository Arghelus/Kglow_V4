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
    private static final String URL = "jdbc:mysql://localhost:3306/kglow";
    private static final String USER = "root";
    private static final String PASSWORD = "040405";
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
    public boolean actualizarProducto(Producto producto) {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405"); PreparedStatement ps = conn.prepareStatement(
                "UPDATE Productos SET nombre_producto = ?, descripcion = ?, precio = ?, marca = ?, contenido = ?, origen = ?, tipo = ?, id_categoria = ? WHERE id_producto = ?")) {

            ps.setString(1, producto.getNombre_producto());
            ps.setString(2, producto.getDescripcion());
            ps.setDouble(3, producto.getPrecio());
            ps.setString(4, producto.getMarca());
            ps.setString(5, producto.getComtenido());
            ps.setString(6, producto.getOrigen());
            ps.setString(7, producto.getTipo());
            ps.setInt(8, Integer.parseInt(producto.getCategoria())); // Si es ID
            ps.setInt(9, producto.getId_producto());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    
    // Método para eliminar un producto por ID
    public boolean eliminarProducto(int idProducto) {
    boolean eliminado = false;

        // Declarar las variables necesarias para la conexión
        Connection conexion = null;
        PreparedStatement ps = null;

        try {
            // Establecer conexión con la base de datos
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);

            // Consulta SQL para eliminar el producto
            String sql = "DELETE FROM Productos WHERE id_producto = ?";
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, idProducto);

            // Ejecutar la consulta
            eliminado = ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Cerrar los recursos utilizados
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conexion != null) {
                try {
                    conexion.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        return eliminado;
    }
    public List<Producto> ListarTodosLosProductos() {
    List<Producto> productos = new ArrayList<>();
    String sql = "SELECT * FROM Productos";

    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
         PreparedStatement ps = conn.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        while (rs.next()) {
            Producto producto = new Producto();
            producto.setId_producto(rs.getInt("id_producto"));
            producto.setNombre_producto(rs.getString("nombre_producto"));
            producto.setDescripcion(rs.getString("descripcion"));
            producto.setPrecio(rs.getDouble("precio"));
            producto.setMarca(rs.getString("marca"));
            producto.setCategoria(rs.getString("id_categoria"));
            productos.add(producto);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return productos;
    }
    
    
    public Producto obtenerProductoPorId(int idProducto) {
        Producto producto = null;
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405"); PreparedStatement ps = con.prepareStatement("SELECT * FROM Productos WHERE id_producto = ?")) {
            ps.setInt(1, idProducto);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    producto = new Producto();
                    producto.setId_producto(rs.getInt("id_producto"));
                    producto.setNombre_producto(rs.getString("nombre_producto"));
                    producto.setDescripcion(rs.getString("descripcion"));
                    producto.setPrecio(rs.getDouble("precio"));
                    producto.setMarca(rs.getString("marca"));
                    producto.setCategoria(rs.getString("id_categoria"));
                    producto.setComtenido(rs.getString("contenido"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return producto;
    }
    
    public List<Producto> obtenerProductosDelCarrito() {
        List<Producto> productos = new ArrayList<>();
        String query = "SELECT p.id_producto, p.nombre_producto, p.descripcion, p.precio, p.marca, p.id_categoria, p.contenido "
                + "FROM Carrito c "
                + "JOIN Productos p ON c.id_producto = p.id_producto";

        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405"); PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Producto producto = new Producto();
                producto.setId_producto(rs.getInt("id_producto"));
                producto.setNombre_producto(rs.getString("nombre_producto"));
                producto.setDescripcion(rs.getString("descripcion"));
                producto.setPrecio(rs.getDouble("precio"));
                producto.setMarca(rs.getString("marca"));
                producto.setCategoria(rs.getString("id_categoria"));
                producto.setComtenido(rs.getString("contenido"));

                productos.add(producto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return productos;
    }


    public List<Producto> obtenerProductosPorCategoria(String categoria) {
        List<Producto> productos = new ArrayList<>();
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405"); PreparedStatement ps = con.prepareStatement("SELECT * FROM Productos WHERE id_categoria = ?")) {
            ps.setString(1, categoria);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Producto producto = new Producto();
                    producto.setId_producto(rs.getInt("id_producto"));
                    producto.setNombre_producto(rs.getString("nombre_producto"));
                    producto.setDescripcion(rs.getString("descripcion"));
                    producto.setPrecio(rs.getDouble("precio"));
                    producto.setMarca(rs.getString("marca"));
                    producto.setCategoria(rs.getString("id_categoria"));
                    productos.add(producto);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productos;
    }
}
