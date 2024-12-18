/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import Logica.DAO.UsuarioDAO;
import Logica.PasswordUtils;
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
@WebServlet(name = "LoginUsuarioServlet", urlPatterns = {"/LoginUsuarioServlet"})
public class LoginUsuarioServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Recibir parámetros desde el formulario JSP, tienen que ser iguales al del formulario
    String correo = request.getParameter("email");
    String contrasenia = request.getParameter("password");
    
    // Verificación de obtención de datos
    System.out.println("Correo ingresado: " + correo);
    System.out.println("Contraseña ingresada: " + contrasenia);
    System.out.println("=================================================================================");

    // Crear el objeto Usuario con los datos del formulario
    Usuario usuario = new Usuario();
    usuario.setCorreo(correo);
    
    // Instanciar UsuarioDAO y llamar al método loguearUsuario
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    Usuario usuarioLogueado = usuarioDAO.LoguearUsuario(usuario);
    
        if (usuarioLogueado != null && PasswordUtils.checkPassword(contrasenia, usuarioLogueado.getContrasenia())) { // Verifica si el usuario fue encontrado
            // Obtener el rol del usuario
            String tipoUsuario = usuarioLogueado.getTipoRol();
            System.out.println("Hash en la base de datos: " + usuarioLogueado.getContrasenia());

            // Redirigir según el tipo de usuario
            if ("Administrador".equalsIgnoreCase(tipoUsuario)) {
                response.sendRedirect(request.getContextPath() + "/Interface/Login.jsp");
            } else if ("Cliente".equalsIgnoreCase(tipoUsuario)) {
                response.sendRedirect(request.getContextPath() + "/Interface/Principal.jsp");
            }
        } else {
            // Redirigir al registro si no se encontró al usuario
            System.out.println("Usuario no encontrado o contraseña incorrecta.");
            response.sendRedirect(request.getContextPath() + "/Interface/Login.jsp");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
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
            out.println("<title>Servlet LoginUsuarioServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginUsuarioServlet at " + request.getContextPath() + "</h1>");
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
