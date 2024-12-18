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
                        <li><a href="#">Acumulación de puntos</a></li>
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
                        <li><a href="#">Consulta de Puntos</a></li>
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
