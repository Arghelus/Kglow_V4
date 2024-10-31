package persistencia;

import Logica.Usuario;

public class ControladoraPersistencia {

    UsuarioJpaController usuarioJPA; // = new UsuarioJpaController;
    
    public ControladoraPersistencia() {
        
    usuarioJPA = new UsuarioJpaController();

    }
    public void crearUsuario(Usuario user) {
            usuarioJPA.create(user);
    }    
}
