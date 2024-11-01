package Logica.DAO;

import Logica.Producto;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class ProductoDAO {

    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("K-GLOW_PU");

    // Método para obtener todos los productos
    public List<Producto> obtenerTodosLosProductos() {
        EntityManager em = emf.createEntityManager();
        List<Producto> productos = null;
        try {
            Query query = em.createQuery("SELECT p FROM Producto p");
            productos = query.getResultList();
        } finally {
            em.close();
        }
        return productos;
    }

    // Método para agregar un nuevo producto
    public void agregarProducto(Producto producto) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(producto);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    // Método para buscar producto por ID
    public Producto buscarProductoPorId(int id) {
        EntityManager em = emf.createEntityManager();
        Producto producto = null;
        try {
            producto = em.find(Producto.class, id);
        } finally {
            em.close();
        }
        return producto;
    }

    // Método para actualizar un producto existente
    public void actualizarProducto(Producto producto) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(producto);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    // Método para eliminar un producto por ID
    public void eliminarProducto(int id) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            Producto producto = em.find(Producto.class, id);
            if (producto != null) {
                em.remove(producto);
            }
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
}
