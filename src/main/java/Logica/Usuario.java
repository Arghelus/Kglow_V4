package Logica;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Usuario implements Serializable {
    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_usuario;
    
    @NotNull
    private String nombreUsuario;
    
    @NotNull
    private String apellido;
    
    @NotNull
    @Email
    private String correo;
    
    @NotNull
    @Size(min = 8, message = "La contraseña debe tener al menos 8 caracteres")
    private String contrasenia;
    
    private String celular;
    private String direccion;
    private String tipoRol;

    // Constructor vacío para JPA
    public Usuario() {}

    public Usuario(String nombreUsuario, String apellido, String correo, String contrasenia, String celular, String direccion, String tipoRol) {
        this.nombreUsuario = nombreUsuario;
        this.apellido = apellido;
        this.correo = correo;
        this.contrasenia = contrasenia;
        this.celular = celular;
        this.direccion = direccion;
        this.tipoRol = tipoRol;
    }

    // Getters y Setters
    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTipoRol() {
        return tipoRol;
    }

    public void setTipoRol(String tipoRol) {
        this.tipoRol = tipoRol;
    }

    @Override
    public String toString() {
        return "Usuario{" +
                "id_usuario=" + id_usuario +
                ", nombreUsuario='" + nombreUsuario + '\'' +
                ", apellido='" + apellido + '\'' +
                ", correo='" + correo + '\'' +
                ", celular='" + celular + '\'' +
                ", direccion='" + direccion + '\'' +
                ", tipoRol='" + tipoRol + '\'' +
                '}';
    }
}
