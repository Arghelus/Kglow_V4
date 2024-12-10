/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Logica.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author arghe
 */
public class TokenDAO {
    public static String getTokenByEmail(String email) {
        String token = null;
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");) {
            String query = "SELECT token FROM PasswordResetTokens WHERE email = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                token = rs.getString("token");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return token;
    }

    public static String createTokenForEmail(String email) {
        String token = java.util.UUID.randomUUID().toString();
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");) {
            String query = "INSERT INTO PasswordResetTokens (email, token, expiration) VALUES (?, ?, NOW() + INTERVAL 1 HOUR) " +
                           "ON DUPLICATE KEY UPDATE token = ?, expiration = NOW() + INTERVAL 1 HOUR";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, token);
            ps.setString(3, token);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return token;
    }
}
