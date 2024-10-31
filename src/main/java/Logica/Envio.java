package Logica;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Envio {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    // Atributos de la clase Envio segun el UML
    private String spo;
    private double costo;
    private String direccion;
    private String agencia;
    private String correo;
    private String dni;
    private String nombres;
    
    // Constructor

    public Envio(String spo, double costo, String direccion, String agencia, String correo, String dni, String nombres) {
        this.spo = spo;
        this.costo = costo;
        this.direccion = direccion;
        this.agencia = agencia;
        this.correo = correo;
        this.dni = dni;
        this.nombres = nombres;
    }
    
    // Getters y Setters

    public String getSpo() {
        return spo;
    }

    public void setSpo(String spo) {
        this.spo = spo;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getAgencia() {
        return agencia;
    }

    public void setAgencia(String agencia) {
        this.agencia = agencia;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    
}
