/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import Logica.DAO.ProductoDAO;
import Logica.Producto;
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
@WebServlet(name = "EditarProductoServlet", urlPatterns = {"/EditarProductoServlet"})
public class EditarProductoServlet extends HttpServlet {

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
            out.println("<title>Servlet EditarProductoServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditarProductoServlet at " + request.getContextPath() + "</h1>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtén los parámetros del formulario
        int idProducto = Integer.parseInt(request.getParameter("id_producto"));
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        double precio = Double.parseDouble(request.getParameter("precio"));
        String marca = request.getParameter("marca");
        String contenido = request.getParameter("contenido");
        String origen = request.getParameter("origen");
        String tipo = request.getParameter("tipo");
        String categoria = request.getParameter("categoria");

        // Crear una instancia del producto actualizado
        Producto producto = new Producto(idProducto, nombre, descripcion, precio, marca, contenido, origen, tipo, categoria);

        // Llamar al DAO para actualizar el producto
        ProductoDAO productoDAO = new ProductoDAO();
        boolean actualizado = productoDAO.actualizarProducto(producto);

        // Redirigir con un mensaje
        if (actualizado) {
            response.sendRedirect("productos.jsp?mensaje=Producto actualizado con éxito");
        } else {
            response.sendRedirect("productos.jsp?error=No se pudo actualizar el producto");
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
