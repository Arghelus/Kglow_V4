<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KGLOW - Recuperar Contraseña</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
    <link href="css/footer.css" rel="stylesheet" type="text/css"/>
    <style>
        .bg {
            background-image: url(ImagenesInterface/labiales.jpg);
            background-position: center center;
        }

        .secundary-text{
            color:#866383; 
        }
    </style>
</head>

<body>
    <header>
        <div class="container-fluid primary-color py-3">
            <div class="row align-items-center">
                <!-- Espacio vacío a la izquierda -->
                <div class="col-3"></div>

                <!-- Título K-GLOW centrado -->
                <div class="col-6 text-center">
                    <img src="ImagenesInterface/K-GLOW_big (1).png" alt="Logo K-GLOW" class="img-fluid" style="max-width: 230px;">
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

    
    <div class="MainFondo fondo-color">
        <div class="container bg-success w-75 rounded shadow my-5">
            <div class="row align-items-stretch">
                <div class="col primary-color rounded-end p-5">
                    <div class="text-center">
                        <i class="bi bi-envelope-fill" style="font-size: 4rem; color:rgb(255, 255, 255);"></i>
                    </div>
                    <h2 class="fw-bold text-center">Recuperar Contraseña</h2>

                    <!-- Recuperar Contraseña -->
                    <p class="text-center">Te entendemos, este tipo de cosas suelen ocurrir. Solo coloca tu correo electrónico y solucionaremos este problema.</p>

                    <form method="POST" action="${pageContext.request.contextPath}/RecuperarContrasenaServlet">
                        <div class="mb-4">
                            <label for="email" class="form-label">Correo Electrónico</label>
                            <input type="email" class="form-control" name="email" placeholder="Ingresa tu correo electrónico" required>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-light border-primarycolor w-50">Recuperar Contraseña</button>
                        </div>
                    </form>

                    <hr class="my-4">

                    <div class="text-center">
                        <p><a href="Register.jsp" class="secundary-text">Crea una cuenta.</a></p>
                        <p>¿Ya tienes una cuenta? <a href="Login.jsp" class="secundary-text">Inicia sesión.</a></p>
                    </div>


                    <div class="col text-center d-none d-md-block my-4">
                        <img src="ImagenesInterface/osito.png" alt="Imagen de Inicio de Sesión" class="img-fluid"
                            style="max-height: 300px;">
                    </div>
                </div>          

                <div class="col bg d-none d-lg-block col-md-5 col-lg-5 col-xl-6 rounded-start"></div>
                <!-- Imagen de labiales -->
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
    <script src="https://kit.fontawesome.com/81581fb069.js" crossorigin="anonymous"></script>
</body>

</html>
