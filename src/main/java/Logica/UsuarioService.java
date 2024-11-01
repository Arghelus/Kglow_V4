package Logica;

import Logica.DAO.UsuarioDAO;

public class UsuarioService {
    private UsuarioDAO usuarioDAO = new UsuarioDAO();
    
    public boolean registrarUsuario(String nombre, String apellido, String correo, String contrasena) {
        Usuario nuevoUsuario = new Usuario(nombre, apellido, correo, contrasena, "", "", "usuario");
        return usuarioDAO.guardarUsuario(nuevoUsuario);
    }
}
