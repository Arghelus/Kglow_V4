<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
    <link href="css/footer.css" rel="stylesheet" type="text/css"/>
    <style>
        body {
            background-color: #f8f6f7;
            font-family: 'Poppins', sans-serif;
            text-align: center;
        }

        h1 {
            margin-top: 3%;
            color: #774d72;
            font-weight: bold;
        }

        .video-section {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px; /* Espacio entre las secciones */
            transition: transform 0.3s ease; /* Animación de aumento */
        }

        .video-section:hover {
            transform: scale(1.02); /* Efecto de aumento al pasar el mouse */
        }

        .video-section h2 {
            font-size: 1.5rem;
            color: #ae4565;
            margin-bottom: 10px;
        }

        iframe {
            width: 100%; /* Hacer que el iframe ocupe el 100% del contenedor */
            height: 315px; /* Altura fija para mantener el tamaño */
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <header>
        <section class="container-fluid primary-color py-3">
            <section class="row align-items-center">
                <!-- Espacio vacío a la izquierda -->
                <section class="col-3"></section>

                <!-- Título K-GLOW centrado -->
                <section class="col-6 text-center">
                    <img src="ImagenesInterface/K-GLOW_big (1).png" alt="Logo K-GLOW" class="img-fluid"
                        style="max-width: 230px;">
                </section>

                <!-- Botones de usuario alineados a la derecha -->
                <section class="col-3 d-flex justify-content-end">
                    <section class="dropdown me-3">
                        <button class="btn btn-dark rounded-0" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="bi bi-person-circle" style="font-size: 2rem; color:white;"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="perfil.php">Perfil</a></li>
                            <li>
                                <hr class="dropdown-sectionider">
                            </li>
                            <li><a class="dropdown-item" href="salirUser.php">Favoritos</a></li>
                            <li><a class="dropdown-item" href="salirUser.php">Cerrar Sesión</a></li>
                        </ul>
                    </section>
                    <section class="dropdown">
                        <button class="btn btn-dark rounded-0" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="bi bi-person-circle" style="font-size: 2rem; color:white;"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="login.html">Iniciar Sesion</a></li>
                        </ul>
                    </section>
                </section>
            </section>
        </section>

        <nav class="primary-color navbar navbar-expand-xl">
            <section class="container-fluid">
                <section class="offcanvas offcanvas-xl offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                    aria-labelledby="offcanvasNavbarLabel">
                    <section class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menú</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </section>
                    <section class="offcanvas-body">
                        <ul class="navbar-nav ms-5 justify-content-center flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="index.html">TODO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="ojos.html">OJOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="rostro.html">ROSTRO</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="labios.html">LABIOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="servicios.html">SERVICIOS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="nosotros.html">NOSOTROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="contacto.html">CONTACTO</a>
                            </li>
                        </ul>
                    </section>
                </section>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </section>
        </nav>
    </header>
    
    <h1>Tutoriales Personalizados - ¿POROS INVISIBLES?</h1>
    <p><a href="servicios.html" style="color: #774d72; text-decoration: none;">← Regresar a Servicios</a></p>
    
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <section class="video-section">
                    <h2>CÓMO USAR UNA BASE CUSHION</h2>
                    <iframe src="https://www.youtube.com/embed/ArqgN9EAre4?si=iEXF1bAtNTNlBV1X" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
            <div class="col-md-6">
                <section class="video-section">
                    <h2>TUTORIAL BASE EFECTO FILTRO</h2>
                    <iframe src="https://www.youtube.com/embed/x3loW72jmsY?si=v8J03e-czX3D6RzA" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
        </div>
    </div>
    
    <h1>Tutoriales Personalizados - SECRETOS PARA LABIOS</h1>
    <p><a href=# style="color:  #f8f6f7; text-decoration: none;">← Regresar a Servicios</a></p>
    
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <section class="video-section">
                    <h2>CÓMO USAR TUS TINTAS DE LABIOS</h2>
                    <iframe src="https://www.youtube.com/embed/3UonQZTnMps?si=52nlPZVEq8VuIA7e" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
            <div class="col-md-6">
                <section class="video-section">
                    <h2>¿ESTÁS COMETIENDO ERRORES?</h2>
                    <iframe src="https://www.youtube.com/embed/Ey7gs_--L3o?si=SJ8iFUEddgv_Jn_k" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
        </div>
    </div>

    <h1>Tutoriales Personalizados - RESALTEMOS TU MIRADA</h1>
    <p><a href=# style="color:  #f8f6f7; text-decoration: none;">← Regresar a Servicios</a></p>
    
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <section class="video-section">
                    <h2>OJOS DE IDOL CON K_GLOW</h2>
                    <iframe src="https://www.youtube.com/embed/apDF67zAli0?si=zYCSsIiWC-VuUmkN" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
            <div class="col-md-6">
                <section class="video-section">
                    <h2>SECRETOS PARA MAQUILAJE DOUYIN EN LATINAS</h2>
                    <iframe src="https://www.youtube.com/embed/zVTIm7Th8fQ?si=zxIfbqsJabTHFcC-" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
        </div>
    </div>

    <h1>Tutoriales Personalizados - RUBOR COQUETTE</h1>
    <p><a href=# style="color:  #f8f6f7; text-decoration: none;">← Regresar a Servicios</a></p>
    
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <section class="video-section">
                    <h2>RUBORES PARA PRINCIPIANTES</h2>
                    <iframe src="https://www.youtube.com/embed/Yi3pihMPCac?si=6M0ypKINRwQ1jmyF" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
            <div class="col-md-6">
                <section class="video-section">
                    <h2>UN RUBOR MUY COQUETTE</h2>
                    <iframe src="https://www.youtube.com/embed/Y4RQXzD7zoE?si=Vw1399qQeuf0-Aoh" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
        </div>
    </div>

    <h1>Tutoriales Personalizados - PARA SALIR DE APUROS</h1>
    <p><a href=# style="color:  #f8f6f7; text-decoration: none;">← Regresar a Servicios</a></p>
    
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <section class="video-section">
                    <h2>KIT BÁSICO Y EFECTIVO</h2>
                    <iframe src="https://www.youtube.com/embed/CYw23_WTP2w?si=a3VLSsyjIn8a75ar" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
            <div class="col-md-6">
                <section class="video-section">
                    <h2>¡MAQUILLATE CON SOLO 5 PRODUCTOS!</h2>
                    <iframe src="https://www.youtube.com/embed/YT-9FEh_Zy4?si=pS0E2FCIE52yRQkv" title="YouTube video player" frameborder="0" allowfullscreen></iframe>
                </section>
            </div>
        </div>
    </div>

    

    <footer class="footer">
        <section class="container-footer">
            <section class="menu-footer">
                <section class="contact-info">
                    <p class="title-footer">INFORMACIÓN</p>
                    <ul>
                        <li>Dirección legal: Av. La Marina 2355, San Miguel, Lima</li>
                        <li>RUC: 20548796321</li>
                        <li>Email: kglow@support.com</li>
                        <li>Teléfono: +51 934553657</li>
                    </ul>

                    <section class="social-icons">
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
                    </section>
                </section>


                <section class="information">
                    <p class="title-footer">¡TE AYUDAMOS!</p>
                    <ul>
                        <li><a href="#">Términos y condiciones</a></li>
                        <li><a href="#">Protección de datos</a></li>
                        <li><a href="#">Cambios y devoluciones</a></li>
                        <li><a href="#">Plazos de reembolso</a></li>
                        <li><a href="#">Campañas publicitarias</a></li>
                    </ul>
                </section>

                <section class="my-account">
                    <p class="title-footer">SERVICIO AL CLIENTE</p>
                    <ul>
                        <li><a href="#">Preguntas frecuentes</a></li>
                        <li><a href="#">Historial de órdenes</a></li>
                        <li><a href="#">Lista de deseos</a></li>
                        <li><a href="#">Seguimiento de Pedidos</a></li>
                    </ul>
                </section>
            </section>
            <section class="copyright">
                <p>&copy; 2024 K-GLOW S.A.C. Todos los derechos reservados.</p>
            </section>
        </section>
    </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>   
</body>
</html>
