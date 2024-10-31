package Logica;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Carrito {
    
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id_carrito;
    private String estado;
    //private List<detalle_carrito>DetallesCarrito;
    private String telefono;
    private String direccion;
    private String tipoRol;
    
}
