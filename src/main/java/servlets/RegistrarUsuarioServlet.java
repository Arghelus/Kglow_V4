package servlets;

import Logica.Usuario;
import Logica.DAO.UsuarioDAO;
import Logica.UsuarioService;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "RegistrarUsuarioServlet", urlPatterns = {"/RegistrarUsuarioServlet"})
public class RegistrarUsuarioServlet extends HttpServlet {
    
    // Configuración de la base de datos
    private static final String URL = "jdbc:mysql://localhost:3306/kglow2";
    private static final String USER = "root";
    private static final String PASSWORD = "A300305r";
    
    
    //metodo post
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recibir parámetros desde el formulario JSP, tienen que ser iguales al del formulario
        String nombre = request.getParameter("nombres");  // Cambiado
        String apellido = request.getParameter("apellidos");  // Cambiado
        String correo = request.getParameter("email");  // Cambiado
        String contrasenia = request.getParameter("password");  // Cambiado
        String telefono = request.getParameter("celular");  // Cambiado
        String direccion = request.getParameter("direccion");  // Correcto
        String tipoUsuario = "cliente";
        
        //verificacion de obtencion de datos
        System.out.println(nombre);
        System.out.println(apellido);
        System.out.println(correo);
        System.out.println("=================================================================================");
        Usuario usuario = new Usuario(nombre, apellido, correo, contrasenia, telefono, direccion, "Cliente");
        System.out.println(usuario);
        
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean registroExitoso = usuarioDAO.guardarUsuario(usuario);
        if (registroExitoso) {
                // Registro exitoso - redirigir a login
                response.sendRedirect("Login.jsp");
            } else {
                // Error en el registro
                request.setAttribute("error", "Error al registrar el usuario");
                request.getRequestDispatcher("/Register.jsp").forward(request, response);
            }
        
        
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrarUsuarioServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarUsuarioServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
