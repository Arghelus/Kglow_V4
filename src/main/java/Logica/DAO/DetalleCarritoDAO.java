/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Logica.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author arghe
 */
public class DetalleCarritoDAO {
    public static void actualizarCantidad(int idDetalle, int cantidad) {
        String sql = "UPDATE Detalle_Carrito SET cantidad = ? WHERE id_detalle = ?";
        
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, cantidad);
            ps.setInt(2, idDetalle);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
