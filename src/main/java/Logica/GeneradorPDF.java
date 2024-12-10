package Logica;

import com.itextpdf.kernel.pdf.*;
import com.itextpdf.layout.*;
import com.itextpdf.layout.element.*;
import java.io.OutputStream;

public class GeneradorPDF {

    public static void generarBoleta(Boleta boleta, OutputStream outputStream) throws Exception {
        // Inicializa el PDF
        PdfWriter writer = new PdfWriter(outputStream);
        PdfDocument pdf = new PdfDocument(writer);
        Document documento = new Document(pdf);

        // Encabezado
        documento.add(new Paragraph("Boleta de Venta").setBold().setFontSize(18));
        documento.add(new Paragraph("Número de Boleta: " + boleta.getNumeroBoleta()));
        documento.add(new Paragraph("Cliente: " + boleta.getClienteNombre() + " " + boleta.getClienteApellido()));
        documento.add(new Paragraph(" ")); // Espaciado

        // Tabla de productos
        Table tabla = new Table(new float[]{4, 6, 2, 2}); // Columnas con proporción
        tabla.addHeaderCell("Producto");
        tabla.addHeaderCell("Descripción");
        tabla.addHeaderCell("Precio");
        tabla.addHeaderCell("Imagen (URL)");

        for (Producto producto : boleta.getProductos()) {
            tabla.addCell(producto.getNombre());
            tabla.addCell(producto.getDescripcion());
            tabla.addCell(String.format("%.2f", producto.getPrecio()));
            tabla.addCell(producto.getImagen());
        }

        documento.add(tabla);

        // Totales
        documento.add(new Paragraph(" "));
        documento.add(new Paragraph("Subtotal: S/ " + String.format("%.2f", boleta.getSubtotal())));
        documento.add(new Paragraph("IGV: S/ " + String.format("%.2f", boleta.getIgv())));
        documento.add(new Paragraph("Total: S/ " + String.format("%.2f", boleta.getTotal())));

        documento.close();
    }
}
