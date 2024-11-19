<%-- 
    Document   : CarritoCliente
    Created on : 13 nov. 2024, 16:32:12
    Author     : arghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KGLOW - CARRITO</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
    <link href="css/footer.css" rel="stylesheet" type="text/css"/>
    <style>
    .cart-header {
        font-size: 1.5rem;
        font-weight: bold;
    }

    .remove-btn {
        display: flex;
        justify-content: center;
        right: 0;
        top: 50%;
        transform: translateY(100%);
    }


    .quantity input {
        max-width:50px; /* Ajusta el tamaño del input */
        text-align: center; /* Centra el texto dentro del input */
    }

    .discount-section,
    .totals-section {
        background-color: #F4F1FC;
        padding: 1rem;
        border-radius: 0.5rem;
        margin-top: 1rem;
    }

    .btn-danger {
        background-color: #8E5572;
        border: none;

    }

    .btn-danger:hover {
        background-color: #73294E;
    }

    .checkout-btn {
        background-color: #8E5572;
        color: white;
        border: none;
        padding: 0.75rem 1.5rem;
        font-size: 1rem;
        border-radius: 0.5rem;
        text-align: right;
    }

    .checkout-btn:hover {
        background-color: #73294E;
    }

    .product-row {
        position: relative;
        vertical-align: center;
    }

    .product-image {
        max-width: 150px;
        height: auto;
    }

    .table th,
    .table td {
        text-align: center;
    }

    .discount-total-container {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
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
                            <li><a class="dropdown-item" href="login.html">Iniciar Sesion</a></li>
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
                    </div>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
    </header>

        <div class="container my-5">
        <div class="d-flex align-items-center mb-4">
            <a href="index.html" class="me-3" style="color: gray;"><i class="bi bi-arrow-left"></i> Volver al Inicio</a>
        </div>

        <div class="d-flex align-items-center" style="color: rgb(78, 14, 14);">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-bag-fill me-2" viewBox="0 0 16 16">
                <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1m3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4z"/>
            </svg>
            <h1 class="cart-header">Carrito de Compras</h1>
        </div>

        <!-- Tabla de productos -->
        <div class="table-responsive">
            <table class="table table-bordered align-middle">
                <thead class="table-secondary">
                    <tr>
                        <th scope="col">Imagen</th>
                        <th scope="col">Nombre del producto</th>
                        <th scope="col">Cantidad</th>
                        <th scope="col">Precio Unit.</th>
                        <th scope="col">Total</th>
                        <th scope="col">Quitar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="product-row" style="vertical-align: center;">
                        <td><img src="assets/img/productos/Rostro/Base_MarcaTIRTIR.png" alt="Producto" class="product-image"></td>
                        <td class="product-name">Peripera Ink Mood Glowy Tint Peritage</td>
                        <td><input type="number" class="form-control w-75 mx-auto" value="10" min="1"></td>
                        <td class="price">S/. 35.00</td>
                        <td class="total">S/. 70.00</td>
                        <td class="remove-btn"><button class="btn btn-danger">ELIMINAR</button></td>
                    </tr>
                </tbody>
            </table>
        </div>


        <!-- Sección de descuento y totales alineados -->
        <div class="discount-total-container mt-4">
            <!-- Sección de descuento -->
            <div class="discount-section w-50 me-3">
                <p>¿Tiene algún código de descuento?</p>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Ingrese código">
                    <button class="btn btn-danger">+ AÑADIR</button>
                </div>
            </div>

            <!-- Sección de totales -->
            <div class="totals-section w-50 ms-3">
                <div class="d-flex justify-content-between">
                    <p>Subtotal:</p>
                    <p>S/. 161.98</p>
                </div>
                <div class="d-flex justify-content-between">
                    <p>Descuento:</p>
                    <p>S/. 21.00</p>
                </div>
                <div class="d-flex justify-content-between">
                    <p>Total:</p>
                    <p>S/. 140.98</p>
                </div>
            </div>
        </div>

        <!-- Botón para proceder al pago alineado a la derecha -->
        <div class="text-end mt-4">
            <a href="pago.html" class="checkout-btn">IR A PAGAR</a>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Solo carga el script de Instagram una vez -->
        <script src="https://kit.fontawesome.com/81581fb069.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
</body>
</html>