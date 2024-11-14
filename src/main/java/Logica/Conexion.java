package Logica;

    import java.sql.Connection;
    import java.sql.DriverManager;
    import java.sql.PreparedStatement;
    import java.sql.SQLException;

    public class Conexion {
      private static final String URL = "jdbc:mysql://localhost:3306/kglow";
      private static final String USER = "root";
      private static final String PASSWORD = "040405";

      public static Connection conectar() throws SQLException {
          return DriverManager.getConnection(URL, USER, PASSWORD);
      }
}  

