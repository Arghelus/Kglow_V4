/*
 * Esta clase de prueba se utiliza para verificar el funcionamiento de la clase chatbotm.
 * Se utilizan métodos de la biblioteca JUnit 5 para realizar pruebas unitarias.
 */

package Tests; // Declaramos el paquete en el que se encuentra esta clase de prueba.

import Logica.chatbotm; // Importamos la clase chatbotm que se va a probar.
import org.junit.jupiter.api.Test; // Importamos la anotación @Test de JUnit.
import static org.junit.jupiter.api.Assertions.assertEquals; // Importamos el método assertEquals para comparar resultados esperados y obtenidos.

public class chatbotmTest { // Definimos la clase de prueba chatbotmTest.

    // Método de prueba para verificar la respuesta al saludo "hola".
    @Test
    public void testGetRespuesta_Hola() {
        chatbotm modelo = new chatbotm(); // Creamos una instancia del modelo chatbotm.
        
        // Llamamos al método getRespuesta con "hola" y almacenamos el resultado.
        String resultado = modelo.getRespuesta("hola");
        
        // Definimos el resultado esperado.
        String esperado = "¡Hola! ¿En qué puedo ayudarte hoy?\n" +
                          "1. Productos\n" +
                          "2. Horarios\n" +
                          "3. Redes sociales\n" +
                          "4. Otras consultas\n" +
                          "5. Cita para maquillajes";
        
        // Comparamos el resultado obtenido con el esperado.
        assertEquals(esperado, resultado);
    }

    // Método de prueba para verificar la respuesta al seleccionar la opción "1".
    @Test
    public void testGetRespuesta_Opcion1() {
        chatbotm modelo = new chatbotm(); // Creamos una instancia del modelo chatbotm.
        
        // Llamamos al método getRespuesta con "1" y almacenamos el resultado.
        String resultado = modelo.getRespuesta("1");
        
        // Definimos el resultado esperado.
        String esperado = "Información sobre productos: Aquí puedes encontrar detalles sobre nuestros productos.";
        
        // Comparamos el resultado obtenido con el esperado.
        assertEquals(esperado, resultado);
    }

    // Método de prueba para verificar la respuesta a una opción inválida.
    @Test
    public void testGetRespuesta_OpcionInvalida() {
        chatbotm modelo = new chatbotm(); // Creamos una instancia del modelo chatbotm.
        
        // Llamamos al método getRespuesta con "99" (opción inválida) y almacenamos el resultado.
        String resultado = modelo.getRespuesta("99");
        
        // Definimos el resultado esperado para una opción no válida.
        String esperado = "Opción no válida. Por favor, selecciona una opción del 1 al 5.";
        
        // Comparamos el resultado obtenido con el esperado.
        assertEquals(esperado, resultado);
    }
}

