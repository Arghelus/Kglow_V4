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
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
    
        .services-container {
            text-align: center;
            padding: 40px 20px;
        }
    
        .services-container h1 {
            font-size: 2rem;
            margin-bottom: 20px;
        }
    
        .service-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            max-width: 1200px;
            margin: 0 auto; 
        }
    
        .service-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden; 
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
    
        .service-card img.card-image {
            width: 100%;
            max-height: 400px; 
            object-fit: cover; 
        }
    
        .service-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }
    
        .service-card h2 {
            font-size: 1.3rem;
            font-weight: bold;
            color: #774d72;
            margin: 10px;
        }
    
        .service-card p {
            font-size: 0.95rem;
            line-height: 1.5;
            color: #373737;
            margin: 10px;
        }
    
        .banner-img {
            width: 100%;
            max-height: 400px; 
            object-fit: cover; 
            margin-bottom: 20px;
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
    
    
    <section class="py-8 section-spacing">
        <section class="container-fluid">
            <img src="ImagenesInterface/banners/servicio.png" alt="Banner" class="banner-img" /> <!-- Imagen del banner -->
        </section>
    </section>

    <div class="services-container">
        <div class="service-cards" style="padding: 10px;">
            <a href="https://www.tiktok.com" target="_blank" class="service-card">
                <img src="ImagenesInterface/productos/Labios/gloss_MarcaPeriPera.png" alt="Imagen 1" class="card-image" style="margin-bottom: 4%;">
                <h2>Prueba Virtual de Labiales</h2>
                <p style="margin-bottom: 7%; margin-left: 4%; margin-right: 4%;">Descubre cómo te quedan los labiales Peripera con nuestro filtro virtual.</p>
            </a>
            <a href="tutoriales.jsp" class="service-card">
                <img src="ImagenesInterface/tutorial.png" alt="Imagen 2" class="card-image" style="padding: 4%; border-radius: 7%;">
                <h2>Tutoriales Personalizados</h2>
                <p style="margin-bottom: 7%; margin-left: 4%; margin-right: 4%;">Aprende a usar nuestros productos con tutoriales creados por expertos.</p>
            </a>
            <a href="test.jsp" class="service-card">
                <img src="ImagenesInterface/Rostro/Base_MarcaTIRTIR.png" alt="Imagen 3" class="card-image" style="margin-bottom: 4%;">
                <h2>Asesoría de Tipo de Base</h2>
                <p style="margin-bottom: 7%; margin-left: 4%; margin-right: 4%;">Completa nuestro cuestionario de tipo de piel y descubre las bases que te sientan mejor.</p>
            </a>
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
