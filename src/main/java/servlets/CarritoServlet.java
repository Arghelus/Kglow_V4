/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import Logica.Labios;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author airto
 */
@WebServlet("/Carrito")
public class CarritoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Suponiendo que tienes una lista de objetos Labios llamada "productosDisponibles"
        List<Labios> productosDisponibles = obtenerProductosLabios(); // Método para obtener los productos

        // Pasar la lista al request
        request.setAttribute("productos", productosDisponibles);

        // Redirigir a la página de Carrito.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Carrito.jsp");
        dispatcher.forward(request, response);
    }

    // Método que simula la obtención de productos (ejemplo)
    private List<Labios> obtenerProductosLabios() {
        List<Labios> lista = new ArrayList<>();
        lista.add(new Labios(1, "Labial Rojo Intenso", 29.90, "ImagenesInterface/productos/labialBarra_MarcaFlowerKnows.jpg"));
        lista.add(new Labios(2, "Labial Rosa Natural", 24.50, "ImagenesInterface/productos/labial2.jpg"));
        lista.add(new Labios(3, "Labial Nude Clásico", 26.80, "ImagenesInterface/productos/labial3.jpg"));
        return lista;
    }
}
