package Logica.DAO;

import Logica.PasswordUtils;
import Logica.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {
    public boolean guardarUsuario(Usuario usuario) {
        
        Connection conn = null;
        PreparedStatement ps = null;
        
        try {
            // Registra el controlador
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establece la conexión
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
            
            String sql = "INSERT INTO Usuarios (nombre, apellido, email, contraseña, celular, direccion, tipo_usuario) VALUES (?, ?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, usuario.getNombreUsuario());
            ps.setString(2, usuario.getApellido());
            ps.setString(3, usuario.getCorreo());
            ps.setString(4, usuario.getContrasenia());
            ps.setString(5, usuario.getCelular());
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

            // Consulta SQL para buscar el usuario por correo
            String sql = "SELECT * FROM Usuarios WHERE email = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, usuario.getCorreo());

            rs = ps.executeQuery();

            if (rs.next()) {
                // Recupera los datos del usuario y crea el objeto Usuario
                Usuario usuarioEncontrado = new Usuario();
                usuarioEncontrado.setId_usuario(rs.getInt("id_usuario"));
                usuarioEncontrado.setNombreUsuario(rs.getString("nombre"));
                usuarioEncontrado.setApellido(rs.getString("apellido"));
                usuarioEncontrado.setCorreo(rs.getString("email"));
                usuarioEncontrado.setContrasenia(rs.getString("contraseña")); // Hash almacenado
                usuarioEncontrado.setCelular(rs.getString("celular"));
                usuarioEncontrado.setDireccion(rs.getString("direccion"));
                usuarioEncontrado.setTipoRol(rs.getString("tipo_usuario"));
                return usuarioEncontrado;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
    public List<Usuario> obtenerTodosLosUsuarios() {
    List<Usuario> usuarios = new ArrayList<>();
    String sql = "SELECT * FROM Usuarios";

    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
         PreparedStatement ps = conn.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        while (rs.next()) {
            Usuario usuario = new Usuario();
            usuario.setNombreUsuario(rs.getString("nombre"));
            usuario.setApellido(rs.getString("apellido"));
            usuario.setCorreo(rs.getString("email"));
            usuario.setDireccion(rs.getString("direccion"));
            usuario.setCelular(String.valueOf(rs.getInt("celular")));
            usuario.setTipoRol(rs.getString("tipo_usuario"));
            usuarios.add(usuario);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return usuarios;
    }
    
}