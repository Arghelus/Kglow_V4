package Logica.DAO;

import Logica.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
    public boolean guardarUsuario(Usuario usuario) {
        
        Connection conn = null;
        PreparedStatement ps = null;
        
        try {
            // Registra el controlador
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establece la conexión
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
            
            String sql = "INSERT INTO Usuarios (nombre, apellido, email, contraseña, telefono, direccion, tipo_usuario) VALUES (?, ?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, usuario.getNombreUsuario());
            ps.setString(2, usuario.getApellido());
            ps.setString(3, usuario.getCorreo());
            ps.setString(4, usuario.getContrasenia());
            ps.setString(5, usuario.getTelefono());
            ps.setString(6, usuario.getDireccion());
            ps.setString(7, "Cliente");

            return ps.executeUpdate() > 0;
        } catch (ClassNotFoundException e) {
            e.printStackTrace(); // Maneja la excepción como desees
            return false;
        } catch (SQLException e) {
            e.printStackTrace(); // Maneja la excepción como desees
            return false;
        } finally {
            // Cierra los recursos en el bloque finally
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public Usuario LoguearUsuario(Usuario usuario) {
        
        Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        // Registra el controlador
        Class.forName("com.mysql.cj.jdbc.Driver");
        // Establece la conexión
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
        
        String sql = "SELECT * FROM Usuarios WHERE email = ? AND contraseña = ?";
        ps = conn.prepareStatement(sql);
        
        ps.setString(1, usuario.getCorreo());
        ps.setString(2, usuario.getContrasenia());

        rs = ps.executeQuery();

        if (rs.next()) {
            // Crear y devolver el usuario encontrado
            Usuario usuarioEncontrado = new Usuario();
            usuarioEncontrado.setId_usuario(rs.getInt("id_usuario"));
            usuarioEncontrado.setNombreUsuario(rs.getString("nombre"));
            usuarioEncontrado.setApellido(rs.getString("apellido"));
            usuarioEncontrado.setCorreo(rs.getString("email"));
            usuarioEncontrado.setContrasenia(rs.getString("contraseña"));
            usuarioEncontrado.setTelefono(rs.getString("telefono"));
            usuarioEncontrado.setDireccion(rs.getString("direccion"));
            usuarioEncontrado.setTipoRol(rs.getString("tipo_usuario"));
            return usuarioEncontrado;
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    // Retorna null si el usuario no es encontrado
    return null;
    }
}