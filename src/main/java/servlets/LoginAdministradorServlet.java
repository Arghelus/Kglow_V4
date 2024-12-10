/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import Logica.DAO.UsuarioDAO;
import Logica.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author arghe
 */
@WebServlet(name = "LoginAdministradorServlet", urlPatterns = {"/LoginAdministradorServlet"})
public class LoginAdministradorServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginAdministradorServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginAdministradorServlet at " + request.getContextPath() + "</h1>");
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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         // Recibir parámetros desde el formulario JSP, tienen que ser iguales al del formulario
    String correo = request.getParameter("Email");
    String contrasenia = request.getParameter("Password");
    
    // Verificación de obtención de datos
    System.out.println(correo);
    System.out.println(contrasenia);
    System.out.println("=================================================================================");

    // Crear el objeto Usuario con los datos del formulario
    Usuario usuario = new Usuario();
    usuario.setCorreo(correo);
    usuario.setContrasenia(contrasenia);
    
    // Instanciar UsuarioDAO y llamar al método loguearUsuario
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    Usuario usuarioLogueado = usuarioDAO.LoguearUsuario(usuario);
    
        if (usuarioLogueado != null) { // Verifica si el usuario fue encontrado
            // Obtener el rol del usuario
            String tipoUsuario = usuarioLogueado.getTipoRol();

            // Redirigir según el tipo de usuario
            if ("Administrador".equalsIgnoreCase(tipoUsuario)) {
                response.sendRedirect(request.getContextPath() + "/Interface/cliente.jsp");
            } else if ("Cliente".equalsIgnoreCase(tipoUsuario)) {
                response.sendRedirect(request.getContextPath() + "/Interface/AdminLogin.jsp");
            }
        } else {
            // Redirigir al registro si no se encontró al usuario
            response.sendRedirect(request.getContextPath() + "/Interface/AdminLogin.jsp");
        }
    }

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
