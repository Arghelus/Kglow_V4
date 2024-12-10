package Logica;

import org.mindrot.jbcrypt.BCrypt;

public class PasswordUtils {
    // Método para generar un hash bcrypt
    public static String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    // Método para verificar si una contraseña coincide con el hash almacenado
    public static boolean checkPassword(String password, String hashed) {
        return BCrypt.checkpw(password, hashed);
    }

}
