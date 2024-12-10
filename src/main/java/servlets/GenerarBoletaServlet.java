package servlets;

import Logica.Boleta;
import Logica.GeneradorPDF;
import Logica.Producto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;

@WebServlet("/GenerarPDF")
public class GenerarBoletaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Crea un objeto Boleta con datos simulados
            Boleta boleta = new Boleta();
            boleta.setNumeroBoleta("001");
            boleta.setClienteNombre("Juan");
            boleta.setClienteApellido("Pérez");
            boleta.setSubtotal(200.0);
            boleta.setIgv(36.0);
            boleta.setTotal(236.0);
            boleta.setProductos(List.of(
                    new Producto("Labial", "Rojo Tomate", 20.0, "https://media.vogue.mx/photos/5dc9dc9ab9285b0009b3a80a/master/w_1600%2Cc_limit/d-delight-dior-lipstick.jpg"),
                    new Producto("Base", "Color Marron", 50.0, "https://www.agenciasmotta.com/web/image/product.template/6141/image_1024?unique=096704f")
            ));

            // Genera el PDF
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "attachment; filename=boleta_" + boleta.getNumeroBoleta() + ".pdf");

            GeneradorPDF.generarBoleta(boleta, response.getOutputStream());

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al generar la boleta");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Captura de datos del formulario
            String nombreCliente = request.getParameter("nombreCliente");
            String dni = request.getParameter("dni");
            String celular = request.getParameter("celular");
            String direccion = request.getParameter("direccion");
            String tipoComprobante = request.getParameter("tipoComprobante");

            // Simulación de productos para la boleta
            List<Producto> productos = List.of(
                    new Producto("Labial", "Rojo Tomate", 20.0, "https://media.vogue.mx/photos/5dc9dc9ab9285b0009b3a80a/master/w_1600%2Cc_limit/d-delight-dior-lipstick.jpg"),
                    new Producto("Base", "Color Marron", 50.0, "https://www.agenciasmotta.com/web/image/product.template/6141/image_1024?unique=096704f")
            );

            // Cálculo de totales
            double subtotal = productos.stream().mapToDouble(Producto::getPrecio).sum();
            double igv = subtotal * 0.18; // 18% IGV
            double total = subtotal + igv;

            // Crear objeto Boleta
            Boleta boleta = new Boleta();
            boleta.setNumeroBoleta("001");
            boleta.setClienteNombre(nombreCliente);
            boleta.setClienteApellido(""); // Agregar campo si es necesario
            boleta.setSubtotal(subtotal);
            boleta.setIgv(igv);
            boleta.setTotal(total);
            boleta.setProductos(productos);

            // Generar PDF
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "attachment; filename=boleta_" + boleta.getNumeroBoleta() + ".pdf");
            GeneradorPDF.generarBoleta(boleta, response.getOutputStream());

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al generar la boleta");
        }
    }

}
