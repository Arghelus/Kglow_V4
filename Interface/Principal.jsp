<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KGLOW - INICIO</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
    <link href="css/footer.css" rel="stylesheet" type="text/css"/>
</head>

<body>
    <header>
        <div class="container-fluid primary-color py-3">
            <div class="row align-items-center">
                <!-- Espacio vacío a la izquierda -->
                <div class="col-3"></div>

                <!-- Título K-GLOW centrado -->
                <div class="col-6 text-center">
                    <img src="ImagenesInterface/K-GLOW_big (1).png" alt="Logo K-GLOW" class="img-fluid"
                        style="max-width: 230px;">
                </div>

                <!-- Botones de usuario alineados a la derecha -->
                <div class="col-3 d-flex justify-content-end">
                    <div class="dropdown me-3">
                        <button class="btn btn-dark rounded-0" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="bi bi-person-circle" style="font-size: 2rem; color:white;"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="perfil.php">Perfil</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="salirUser.php">Favoritos</a></li>
                            <li><a class="dropdown-item" href="salirUser.php">Cerrar Sesión</a></li>
                        </ul>
                    </div>
                    <div class="dropdown">
                        <button class="btn btn-dark rounded-0" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="bi bi-person-circle" style="font-size: 2rem; color:white;"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="Login.jsp">Iniciar Sesion</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <nav class="primary-color navbar navbar-expand-xl">
            <div class="container-fluid">
                <div class="offcanvas offcanvas-xl offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                    aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menú</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav ms-5 justify-content-center flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Principal.jsp">TODO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Ojos.jsp">OJOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Rostro.jsp">ROSTRO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Labios.jsp">LABIOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Servicios.jsp">SERVICIOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Nosotros.jsp">NOSOTROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="Contacto.jsp">CONTACTO</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
    </header>

    <section class="py-8 section-spacing">
        <div class="container-fluid">
            <img src="ImagenesInterface/banners/inicio.png" alt="Banner" class="banner-img" /> <!-- Imagen del banner -->
        </div>
    </section>

    <article class="article">
        <p>
            ¡Descubre las últimas tendencias en maquillaje asiático! Descuentos increíbles en productos de belleza,
            desde BB creams hasta labiales vibrantes. ¡No te lo pierdas!
        </p>
        <p>
            ¡Explora nuestra colección de maquillaje asiático en tendencia! Aprovecha ofertas especiales en
            productos que realzan tu belleza. ¡Solo aquí, en tu tienda de confianza!
        </p>
    </article>

    <div class="container text-center my-5">
        <div class="row gap-4 justify-content-center">
            <div class="col-3 d-flex justify-content-center">
                <a href="link_a_imagen1.jpg" onclick="window.open('link_a_imagen1.jpg', '_blank'); return false;">
                    <img src="ImagenesInterface/productos/Descuentos/Colecciones.png" alt="Descripción Imagen 1"
                        class="img-fluid" style="max-width: auto; height: 100%;" />
                </a>
            </div>
            <div class="col-3 d-flex justify-content-center">
                <a href="link_a_imagen2.jpg" onclick="window.open('link_a_imagen2.jpg', '_blank'); return false;">
                    <img src="ImagenesInterface/productos/Descuentos/Descuentos.png" alt="Descripción Imagen 2"
                        class="img-fluid" style="max-width: auto; height: 100%;" />
                </a>
            </div>
            <div class="col-3 d-flex justify-content-center">
                <a href="link_a_imagen3.jpg" onclick="window.open('link_a_imagen3.jpg', '_blank'); return false;">
                    <img src="ImagenesInterface/productos/Descuentos/Novedades.png" alt="Descripción Imagen 3"
                        class="img-fluid" style="max-width: auto; height: 100%;" />
                </a>
            </div>
        </div>
    </div>


    <article class="article">
        <p>
            ¡Descubre las últimas tendencias en maquillaje asiático! Descuentos increíbles en productos de belleza,
            desde BB creams hasta labiales vibrantes. ¡No te lo pierdas!
        </p>
        <p>
            ¡Explora nuestra colección de maquillaje asiático en tendencia! Aprovecha ofertas especiales en
            productos que realzan tu belleza. ¡Solo aquí, en tu tienda de confianza!
        </p>
    </article>

    <div class="container text-center my-6 overflow-hidden">
        <h2 style="color: #800000;">Influencers de K_Glow</h2> <!-- Título en rojo borgoña -->
        <div class="row justify-content-center flex-nowrap overflow-auto">
            <div class="col-lg-auto">
                <div class="instagram-post">
                    <blockquote class="instagram-media"
                        data-instgrm-permalink="https://www.instagram.com/p/DBq8jTPvfFN/?utm_source=ig_embed&amp;utm_campaign=loading"
                        data-instgrm-version="12"
                        style="background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 10px; max-width:300px;">
                        <a href="https://www.instagram.com/p/DBq8jTPvfFN/?utm_source=ig_embed&amp;utm_campaign=loading"
                            target="_blank">
                            <div style="padding:16px;">
                                <!-- Contenido del post -->
                            </div>
                        </a>
                    </blockquote>
                </div>
            </div>
            <div class="col-lg-auto">
                <div class="instagram-post">
                    <blockquote class="instagram-media"
                        data-instgrm-permalink="https://www.instagram.com/p/DBqtDS4Tn0r/?utm_source=ig_embed&amp;utm_campaign=loading"
                        data-instgrm-version="12"
                        style="background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 10px; max-width:300px;">
                        <a href="https://www.instagram.com/p/DBqtDS4Tn0r/?utm_source=ig_embed&amp;utm_campaign=loading"
                            target="_blank">
                            <div style="padding:16px;">
                                <!-- Contenido del post -->
                            </div>
                        </a>
                    </blockquote>
                </div>
            </div>
            <div class="col-lg-auto">
                <div class="instagram-post">
                    <blockquote class="instagram-media"
                        data-instgrm-permalink="https://www.instagram.com/reel/DBqNGm3qaVM/?utm_source=ig_embed&amp;utm_campaign=loading"
                        data-instgrm-version="12"
                        style="background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 10px; max-width:300px;">
                        <a href="https://www.instagram.com//DBqNGm3qaVM/?utm_source=ig_embed&amp;utm_campaign=loading"
                            target="_blank">
                            <div style="padding:16px;">
                                <!-- Contenido del post -->
                            </div>
                        </a>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Botón del chatbot -->
    <div id="chat-icon" style="position: fixed; bottom: 20px; right: 20px; cursor: pointer; z-index: 10;">
        <!-- Icono SVG del chatbot -->
        <svg xmlns="http://www.w3.org/2000/svg" fill="#866383" width="40" height="40" class="bi bi-robot" viewBox="0 0 16 16">
            <path d="M6 12.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5M3 8.062C3 6.76 4.235 5.765 5.53 5.886a26.6 26.6 0 0 0 4.94 0C11.765 5.765 13 6.76 13 8.062v1.157a.93.93 0 0 1-.765.935c-.845.147-2.34.346-4.235.346s-3.39-.2-4.235-.346A.93.93 0 0 1 3 9.219zm4.542-.827a.25.25 0 0 0-.217.068l-.92.9a25 25 0 0 1-1.871-.183.25.25 0 0 0-.068.495c.55.076 1.232.149 2.02.193a.25.25 0 0 0 .189-.071l.754-.736.847 1.71a.25.25 0 0 0 .404.062l.932-.97a25 25 0 0 0 1.922-.188.25.25 0 0 0-.068-.495c-.538.074-1.207.145-1.98.189a.25.25 0 0 0-.166.076l-.754.785-.842-1.7a.25.25 0 0 0-.182-.135"/>
            <path d="M8.5 1.866a1 1 0 1 0-1 0V3h-2A4.5 4.5 0 0 0 1 7.5V8a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1v1a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-1a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1v-.5A4.5 4.5 0 0 0 10.5 3h-2zM14 7.5V13a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V7.5A3.5 3.5 0 0 1 5.5 4h5A3.5 3.5 0 0 1 14 7.5"/>
        </svg>
    </div>

    <!-- Ventana del chatbot -->
    <div id="chatbox" style="display: none; position: fixed; bottom: 20px; right: 20px; width: 300px; height: 400px; background-color: #ffffff; border: 1px solid #ddd; border-radius: 8px; z-index: 10;">
        <!-- Cabecera de la ventana del chatbot -->
        <div style="background-color: #866383; color: white; padding: 10px; position: relative;">
            <!-- Logo de la empresa -->
            <img style="width: 150px; height: 30px;" src="ImagenesInterface/Glowy.png">
            <!-- Botón de cerrar -->
            <span id="close-chat" style="position: absolute; top: 5px; right: 10px; cursor: pointer;">&times;</span>
        </div>

        <!-- Contenido del chat -->
        <div id="chat-content" style="padding: 10px; height: 300px; overflow-y: auto;">
            <p>¡Hola! Soy Glowy, tu asistente virtual.</p>
        </div>

        <!-- Campo de entrada y botón de enviar -->
        <input id="user-input" type="text" placeholder="Escribe tu mensaje..." style="width: 100%; padding: 8px; border: none; border-top: 1px solid #ddd;">
        <button onclick="sendMessage()" style="width: 100%; background-color: #866383; color: white; border: none; padding: 10px;">Enviar</button>
    </div>

    <script>
        // Muestra el chatbot al hacer clic en el icono
        document.getElementById("chat-icon").addEventListener("click", function () {
            document.getElementById("chatbox").style.display = "block";
            document.getElementById("chat-icon").style.visibility = "hidden";
        });

        // Cierra el chatbot
        document.getElementById("close-chat").addEventListener("click", function () {
            document.getElementById("chatbox").style.display = "none";
            document.getElementById("chat-icon").style.visibility = "visible";
        });

        // Envía el mensaje y muestra la respuesta del chatbot
        function sendMessage() {
            const userInput = document.getElementById("user-input").value;
            const chatContent = document.getElementById("chat-content");

            // Mostrar mensaje del usuario
            const userMessage = document.createElement("p");
            userMessage.style.color = "blue";
            userMessage.textContent = "Tú: " + userInput;
            chatContent.appendChild(userMessage);

            // Lógica para la respuesta del bot
            const botResponse = getRespuesta(userInput);

            // Mostrar respuesta del chatbot
            const botMessage = document.createElement("p");
            botMessage.textContent = "Glowy: " + botResponse;
            chatContent.appendChild(botMessage);

            // Limpiar el campo de entrada y hacer scroll hacia abajo
            document.getElementById("user-input").value = "";
            chatContent.scrollTop = chatContent.scrollHeight;
        }

        // Función que define las respuestas del chatbot
        function getRespuesta(input) {
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
                    return "Para hablar con un asesor en vivo, por favor, visita el siguiente enlace: [Enlace al chat en vivo]";

                case "5":
                    return "Cita para maquillajes: Para agendar una cita de maquillaje, por favor visita nuestra sección de citas en la página web.";

                case "gracias":
                    return "¡De nada! 😊 Si necesitas más ayuda, estaré aquí.";

                case "adios":
                    return "¡Hasta pronto! 👋 Espero haberte sido de ayuda.";

                default:
                    return "Opción no válida. Por favor, selecciona una opción del 1 al 5.";
            }
        }
    </script>
    
    <footer class="footer">
        <div class="container-footer">
            <div class="menu-footer">
                <div class="contact-info">
                    <p class="title-footer">INFORMACIÓN</p>
                    <ul>
                        <li>Dirección legal: Av. La Marina 2355, San Miguel, Lima</li>
                        <li>RUC: 20548796321</li>
                        <li>Email: kglow@support.com</li>
                        <li>Teléfono: +51 934553657</li>
                    </ul>

                    <div class="social-icons">
                        <span class="facebook">
                            <i class="fab fa-facebook-f"></i>
                        </span>
                        <span class="twitter">
                            <i class="fab fa-twitter"></i>
                        </span>
                        <span class="youtube">
                            <i class="fab fa-youtube"></i>
                        </span>
                        <span class="pinterest">
                            <i class="fab fa-pinterest-p"></i>
                        </span>
                        <span class="instagram">
                            <i class="fab fa-instagram"></i>
                        </span>
                    </div>
                </div>


                <div class="information">
                    <p class="title-footer">¡TE AYUDAMOS!</p>
                    <ul>
                        <li><a href="#">Términos y condiciones</a></li>
                        <li><a href="#">Protección de datos</a></li>
                        <li><a href="#">Cambios y devoluciones</a></li>
                        <li><a href="#">Plazos de reembolso</a></li>
                        <li><a href="#">Campañas publicitarias</a></li>
                    </ul>
                </div>

                <div class="my-account">
                    <p class="title-footer">SERVICIO AL CLIENTE</p>
                    <ul>
                        <li><a href="#">Preguntas frecuentes</a></li>
                        <li><a href="#">Historial de órdenes</a></li>
                        <li><a href="#">Lista de deseos</a></li>
                        <li><a href="#">Seguimiento de Pedidos</a></li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2024 K-GLOW S.A.C. Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Solo carga el script de Instagram una vez -->
    <script async src="https://www.instagram.com/embed.js"></script>
    <script src="https://kit.fontawesome.com/81581fb069.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    
</body>

</html>
