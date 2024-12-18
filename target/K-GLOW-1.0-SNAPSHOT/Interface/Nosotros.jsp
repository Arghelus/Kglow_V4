<%-- 
    Document   : Nosotros
    Created on : 14 nov. 2024, 02:55:19
    Author     : Crhist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NOSOTROS K-GLOW</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
        <link href="css/footer.css" rel="stylesheet" type="text/css"/>
        <style>
            .brand-header {
                text-align: center;
                margin-bottom: 4%;
            }

            .brand-header h1 {
                font-family: 'Poppins', sans-serif;
                font-size: 4.5em;
                font-weight: bold;
            }

            .brand-header p {
                font-size: 1.2em;
                color: #666;
                line-height: 1.4em;
            }

            .content {
                display: flex;
                align-items: center;
                justify-content: center;
                max-width: 1200px;
                margin: 0 auto; 
            }

            /* Contenedor de texto a la izquierda */
            .text-content {
                flex: 1;
                padding-right: 2%; 
                margin-left: 1%; 
            }

            /* Contenedor de imagen a la derecha */
            .image-content {
                flex: 1;
                display: flex;
                justify-content: flex-start; 
                padding-left: 2%; 
            }

            .image-content img {
                max-width: 100%; /* Ajusta el tamaño de la imagen */
                margin-right: 1%;
            }

            .text-content h2 {
                font-family: 'Poppins', sans-serif;
                font-size: 2.5em;
                font-weight: bold;
                color: #000;
                margin-bottom: 1%;
            }

            .text-content p {
                font-size: 1em;
                color: #666;
            }

            /* Estilos para el diseño con imagen a la izquierda y texto a la derecha */
            .content-reverse {
                display: flex;
                align-items: center;
                justify-content: center;
                max-width: 1200px;
                margin: 0 auto;
            }

            /* Imagen a la izquierda */
            .content-reverse .image-content {
                flex: 1;
                display: flex;
                justify-content: flex-start; /* Alinea la imagen a la izquierda */
            }

            .content-reverse .image-content img {
                max-width: 100%;
                margin-left: 1%;
            }

            .content-reverse .text-content {
                flex: 1;
                padding-left: 2%; /* Espacio entre el texto y la imagen */
            }

            .content-reverse .text-content h2 {
                font-family: 'Poppins', sans-serif;
                font-size: 2.5em;
                font-weight: bold;
                color: #000;
                margin-bottom: 1%;
            }

            .content-reverse .text-content p {
                font-size: 1em;
                color: #666;
            }

            .section-spacing {
                margin-bottom: 4%;
            }
        </style>       
</head>
    
<body style="background-color: #f8f6f7;">
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

    <div class="py-8 section-spacing">
        <!-- Carrusel -->
        <div id="customCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="4000">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="ImagenesInterface/banners/car1.png" class="d-block w-100" alt="Imagen 1" style="border-radius: 10px;">
                </div>
                <div class="carousel-item">
                    <img src="ImagenesInterface/banners/car2.png" class="d-block w-100" alt="Imagen 2" style="border-radius: 10px;">
                </div>
                <div class="carousel-item">
                    <img src="ImagenesInterface/banners/car3.png" class="d-block w-100" alt="Imagen 3" style="border-radius: 10px;">
                </div>
            </div>
        </div>
    </div>

    <!--Contenido About Us-->
     <div class="brand-header">
        <h1 style="color: #ae4565;">K-Glow</h1>
        <p>순수하고 숙련된 멀티 메이크업 브랜드 코리안 글로우</p>
        <p style=" margin-left: 10%; margin-right: 10%;">K-Glow es para los que quieren expresarse, innovar y que cada detalle de su look sea único. 
            ¡Únete a nuestra comunidad y descubre productos con lo último en tendencias y ese toque personal que solo K-Glow tiene!"</p>
    </div>

    <!-- Historia -->
    <div class="content">
        <div class="text-content">
            <h2 style="margin-left: 20%; color:#ae4565;">ORIGEN</h2>
            <p style="margin-left: 20%;">Nacimos en Perú en 2020, primero en redes sociales, con la energía de quienes quieren destacar. 
                Empezamos trayendo lo mejor del maquillaje asiático a través de nuestras redes, pero crecimos tanto que ahora tenemos 
                nuestra propia web.</p>
        </div>
        <div class="image-content">
            <img src="ImagenesInterface/historia.png" alt="Historia">
        </div>
    </div>

    <!-- Sentimiento -->
    <div class="content-reverse">
        <div class="image-content">
            <img src="ImagenesInterface/sentir.png" alt="Sentimiento">
        </div>
        <div class="text-content">
            <h2 style="margin-right: 20%; color:#ae4565;">MISIÓN Y VISIÓN</h2>
            <p style="margin-right: 20%; font-size: 1em; color: #666; font-weight: lighter">En K-Glow, nuestra misión es resaltar tu estilo único ofreciendo maquillaje exclusivo que te 
                haga sentir increíble. Queremos ser tu destino favorito en Perú para descubrir lo mejor de los productos asiáticos de 
                calidad, con un toque auténtico que te inspire a expresarte y brillar con cada look.</p>
        </div>
    </div>

    <!-- Compromiso -->
    <div class="content">
        <div class="text-content">
            <h2 style="margin-left: 20%; color:#ae4565;">CALIDAD GARANTIZADA</h2>
            <p style="margin-left: 20%;">En K-Glow, garantizamos la calidad en cada producto, ofreciéndote maquillaje auténtico y 
                confiable que realza tu belleza de manera única, para que te sientas increíble con cada aplicación</p>
        </div>
        <div class="image-content">
            <img src="ImagenesInterface/compromiso.png" alt="Historia">
        </div>
    </div>

    <!-- Footer-->
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
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://kit.fontawesome.com/81581fb069.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    
</body>
</html>
