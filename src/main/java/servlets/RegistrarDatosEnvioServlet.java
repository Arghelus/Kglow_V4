/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

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
@WebServlet(name = "RegistrarDatosEnvioServlet", urlPatterns = {"/RegistrarDatosEnvioServlet"})
public class RegistrarDatosEnvioServlet extends HttpServlet {
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String nombreApellido = request.getParameter("NOMBRES Y APELLIDOS");
    String dni = request.getParameter("DNI");
    String numeroContacto = request.getParameter("CELULAR");
    String nombreTarjeta = request.getParameter("nombreTarjeta");
    String numeroTarjeta = request.getParameter("numeroTarjeta");
    String fechaVencimiento = request.getParameter("fechaVencimiento");
    String cvv = request.getParameter("CVV");

    // Expresiones regulares para cada campo
    boolean isNombreValido = nombreApellido.matches("^[A-Za-zÁÉÍÓÚáéíóúñÑ\\s]+$");
    boolean isDniValido = dni.matches("^\\d{8}$");
    boolean isNumeroContactoValido = numeroContacto.matches("^\\d{9}$");
    boolean isNombreTarjetaValido = nombreTarjeta.matches("^[A-Za-zÁÉÍÓÚáéíóúñÑ\\s]+$");
    boolean isNumeroTarjetaValido = numeroTarjeta.matches("^\\d{16}$");
    boolean isCvvValido = cvv.matches("^\\d{3}$");
    
    //Validanción o test de que el servlet recibe el nombre y apellido
    System.out.println("Nombre y Apellido: " + nombreApellido);
    System.out.println("DNI: " + dni);
    System.out.println("Número de Contacto: " + numeroContacto);
    System.out.println("Nombre en Tarjeta: " + nombreTarjeta);
    System.out.println("Número de Tarjeta: " + numeroTarjeta);
    System.out.println("CVV: " + cvv);
    System.out.println("=================================================================================");
    // Validación de todos los campos
    if (isNombreValido && isDniValido && isNumeroContactoValido &&
        isNombreTarjetaValido && isNumeroTarjetaValido && isCvvValido) {
        // Procesar el pago
        // Aquí puedes agregar la lógica para procesar los datos válidos
        // Si todo sale bien te redirecciona a la pagina principal
        response.sendRedirect(request.getContextPath() + "/Interface/Principal.jsp");
    } else {
        // Manejar errores
        request.setAttribute("error", "Datos inválidos en uno o más campos.");
        request.getRequestDispatcher("/Interface/Pago.jsp").forward(request, response);
    }
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
            out.println("<title>Servlet RegistrarDatosEnvioServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarDatosEnvioServlet at " + request.getContextPath() + "</h1>");
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
