/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Logica.DAO;

import Logica.DetalleCarrito;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author arghe
 */
public class CarritoDAO {
    public static List<DetalleCarrito> obtenerDetallesCarrito(int idUsuario) {
        List<DetalleCarrito> detalles = new ArrayList<>();
        String sql = "SELECT * FROM Detalle_Carrito WHERE id_usuario = ? AND estado = 'activo'";
        
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, idUsuario);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    DetalleCarrito detalle = new DetalleCarrito(rs.getInt("id_variante"), rs.getInt("cantidad"));
                    detalle.setIdDetalle(rs.getInt("id_detalle"));
                    detalles.add(detalle);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return detalles;
    }
    
    public static void agregarProductoCarrito(int idCarrito, DetalleCarrito detalle) {
        String sql = "INSERT INTO Detalle_Carrito (id_carrito, id_variante, cantidad) VALUES (?, ?, ?)";
        
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, idCarrito);
            ps.setInt(2, detalle.getIdVariante());
            ps.setInt(3, detalle.getCantidad());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public static void eliminarProductoCarrito(int idDetalle) {
        String sql = "DELETE FROM Detalle_Carrito WHERE id_detalle = ?";
        
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, idDetalle);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
