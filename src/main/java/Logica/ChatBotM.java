/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Logica;

/**
 *
 * @author airto
 */
public class chatbotm {

    public String getRespuesta(String input) {
        switch (input.toLowerCase()) {
            case "hola":
                return "¡Hola! ¿En qué puedo ayudarte hoy?\n" +
                       "1. Productos\n" +
                       "2. Horarios\n" +
                       "3. Redes sociales\n" +
                       "4. Otras consultas\n" +
                       "5. Cita para maquillajes";
            case "1":
                return "Información sobre productos: Aquí puedes encontrar detalles sobre nuestros productos.";
            case "2":
                return "Información sobre horarios: Nuestros horarios son de 9 AM a 6 PM de lunes a viernes.";
            case "3":
                return "Redes sociales: Síguenos en Facebook, Twitter e Instagram para las últimas novedades.";
            case "4":
                return "Para hablar con un asesor en vivo, por favor, visita el siguiente enlace: [Enlace al chat en vivo].";
            case "5":
                return "Cita para maquillajes: Para agendar una cita de maquillaje, por favor visita nuestra sección de citas en la página web.";
            default:
                return "Opción no válida. Por favor, selecciona una opción del 1 al 5.";
        }
    }
}