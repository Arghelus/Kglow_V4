package servlets;

import Logica.Usuario;
import Logica.DAO.UsuarioDAO;
import Logica.UsuarioService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegistrarUsuarioServlet", urlPatterns = {"/RegistrarUsuarioServlet"})
public class RegistrarUsuarioServlet extends HttpServlet {
    
    //metodo post
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recibir parámetros desde el formulario JSP, tienen que ser iguales al del formulario
        String nombre = request.getParameter("nombres");  // Cambiado
        String apellido = request.getParameter("apellidos");  // Cambiado
        String correo = request.getParameter("email");  // Cambiado
        String contrasenia = request.getParameter("password");  // Cambiado
        String telefono = request.getParameter("celular");  // Cambiado
        String direccion = request.getParameter("direccion");  // Correcto
        
        //verificacion de obtencion de datos
        System.out.println(nombre);
        System.out.println(apellido);
        System.out.println(correo);
        System.out.println("=================================================================================");
        Usuario usuario = new Usuario(nombre, apellido, correo, contrasenia, telefono, direccion, "Cliente");
        System.out.println(usuario);

        
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        if (usuarioDAO.guardarUsuario(usuario)) {
            //es necesario el "request.getContextPath() +" en las redirecciones ayuda a evitar problemas en el despliegue en caso de que el contexto cambie.
            response.sendRedirect(request.getContextPath() + "/Interface/Login.jsp");
        } else {
            //es necesario el "request.getContextPath() +" en las redirecciones ayuda a evitar problemas en el despliegue en caso de que el contexto cambie.
            response.sendRedirect(request.getContextPath() + "/Interface/Register.jsp");
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
