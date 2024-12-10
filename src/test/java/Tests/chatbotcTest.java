/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tests;

import static org.mockito.Mockito.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import Logica.chatbotm;
import Logica.vista;
import Logica.chatbotc;

class chatbotcTest {

    private chatbotm mockModelo;
    private vista mockVista;
    private chatbotc controlador;

    @BeforeEach
    public void setUp() {
        // Crear los mocks para modelo y vista
        mockModelo = mock(chatbotm.class);
        mockVista = mock(vista.class);
        
        // Crear una instancia de chatbotc con los mocks
        controlador = new chatbotc(mockModelo, mockVista);
    }

    @Test
   public void testProcesarPregunta() {
        // Configurar el comportamiento esperado del mock de vista
        when(mockVista.getPregunta()).thenReturn("hola");
        
        // Configurar el comportamiento esperado del mock del modelo
        when(mockModelo.getRespuesta("hola")).thenReturn("¡Hola! ¿En qué puedo ayudarte hoy?");

        // Llamar al método procesarPregunta para realizar la prueba
        controlador.procesarPregunta();

        // Verificar que la vista obtiene la pregunta del usuario
        verify(mockVista).getPregunta();

        // Verificar que el modelo proporciona una respuesta en función de la pregunta
        verify(mockModelo).getRespuesta("hola");

        // Verificar que la vista muestra la pregunta del usuario
        verify(mockVista).mostrarRespuestaUsuario("hola");

        // Verificar que la vista muestra la respuesta del modelo
        verify(mockVista).mostrarRespuesta("¡Hola! ¿En qué puedo ayudarte hoy?");

        // Verificar que el campo de texto se limpia después de enviar la respuesta
        verify(mockVista).limpiarCampoTexto();
    }
}


