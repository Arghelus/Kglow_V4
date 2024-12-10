package Logica.DAO;

import Logica.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/kglow";
    private static final String USER = "root";
    private static final String PASSWORD = "A300305r";
    private static final Logger LOGGER = Logger.getLogger(UsuarioDAO.class.getName());

    private Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public boolean guardarUsuario(Usuario usuario) {
        String query = "INSERT INTO usuarios (nombres, apellidos, correo, contrasenia, celular, direccion, tipo_usuario) "
                     + "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {
            
            // Asignar los valores a la consulta
            stmt.setString(1, usuario.getNombreUsuario());
            stmt.setString(2, usuario.getApellido());
            stmt.setString(3, usuario.getCorreo());
            stmt.setString(4, usuario.getContrasenia());
            stmt.setString(5, usuario.getTelefono());
            stmt.setString(6, usuario.getDireccion());
            stmt.setString(7, usuario.getTipoRol());
            
            // Ejecutar la consulta
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0; // Si se insertó alguna fila, el registro fue exitoso
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Error al guardar el usuario
        }
    }

    public Usuario LoguearUsuario(Usuario usuario) {
        String sql = "SELECT * FROM Usuarios WHERE email = ? AND contraseña = ?";
        
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, usuario.getCorreo());
            ps.setString(2, usuario.getContrasenia());
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
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
            }
            
        } catch (SQLException | ClassNotFoundException e) {
            LOGGER.log(Level.SEVERE, "Error al loguear usuario", e);
        }
        
        return null;
    }
}