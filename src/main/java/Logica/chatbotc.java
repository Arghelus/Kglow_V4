/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Logica;

import com.google.common.collect.ImmutableList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import Logica.vista;
import Logica.vista;
import Logica.vista;

/**
 * Clase chatbotc que actúa como controlador para el chatbot.
 * Se encarga de procesar las preguntas del usuario y proporcionar respuestas.
 * Utiliza el patrón de diseño MVC (Modelo-Vista-Controlador).
 * 
 * @author LAB-USR-LNORTE
 */
public class chatbotc {

    // Logger para registrar información y errores
    private static final Logger logger = LoggerFactory.getLogger(chatbotc.class);
    
    // Modelo del chatbot
    private chatbotm Modelo;
    
    // Vista del chatbot
    private vista Vista;

    // Lista inmutable de respuestas
    // Se utilizan para mantener un conjunto fijo de respuestas que el chatbot puede dar.
    private final ImmutableList<String> respuestasInmutables = ImmutableList.of(
            "¡Hola! ¿En qué puedo ayudarte hoy?",
            "Información sobre productos: Aquí puedes encontrar detalles sobre nuestros productos.",
            "Información sobre horarios: Nuestros horarios son de 9 AM a 6 PM de lunes a viernes.",
            "Redes sociales: Síguenos en Facebook, Twitter e Instagram para las últimas novedades.",
            "Para hablar con un asesor en vivo, por favor, visita el siguiente enlace: [Enlace al chat en vivo]",
            "Para agendar una cita de maquillaje, por favor visita nuestra sección de citas en la página web."
    );

    /**
     * Constructor de la clase chatbotc.
     * Inicializa el modelo y la vista, y agrega un ActionListener al botón Enviar.
     *
     * @param Modelo Modelo del chatbot
     * @param Vista  Vista del chatbot
     */
    public chatbotc(chatbotm Modelo, vista Vista) {
        this.Modelo = Modelo;
        this.Vista = Vista;

        // Agregando el ActionListener al botón Enviar
        this.Vista.enviarPregunta(e -> procesarPregunta());
    }

    /**
     * Método que procesa la pregunta del usuario.
     * Obtiene la pregunta de la vista, la registra, y luego obtiene y muestra la respuesta.
     */
    public void procesarPregunta() {
        String pregunta = Vista.getPregunta(); // Obtener la pregunta del usuario
        logger.info("Pregunta del usuario: {}", pregunta); // Registrar pregunta del usuario

        Vista.mostrarRespuestaUsuario(pregunta); // Mostrar la pregunta en la vista
        String respuesta = Modelo.getRespuesta(pregunta); // Obtener respuesta del modelo
        Vista.mostrarRespuesta(respuesta); // Mostrar respuesta en la vista
        Vista.limpiarCampoTexto(); // Limpiar el campo de texto para la próxima pregunta

        logger.info("Respuesta del chatbot: {}", respuesta); // Registrar respuesta del chatbot
    }
    
    /**
     * Método opcional para mostrar todas las respuestas disponibles.
     * Registra cada respuesta en el nivel de depuración.
     */
    public void mostrarRespuestas() {
        for (String respuesta : respuestasInmutables) {
            logger.debug("Respuesta disponible: {}", respuesta); // Registrar respuesta disponible
        }
    }
}


