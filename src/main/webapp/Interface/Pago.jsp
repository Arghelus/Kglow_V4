<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Metadatos y enlaces de estilo -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KGLOW - PAGO</title>
    <!-- Enlaces a Bootstrap CSS y otros estilos -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
    <link href="css/footer.css" rel="stylesheet" type="text/css"/>
    <!-- Estilos personalizados -->
    <style>
        .form-section {
            background-color: #e0e4f0;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            /* Eliminamos max-width para que se adapte al espacio disponible */
            margin: 0 auto;
            max-width: 800px;
        }

        .icon-input-group {
            display: flex;
            align-items: center;
        }

        .icon-input-group .bi {
            font-size: 1.2rem;
            margin-right: 10px;
            color: #6c757d;
        }

        .payment-options {
            background-color: #f3f0ff;
            border-radius: 8px;
            padding: 10px;
            margin-top: 15px;
        }

        .dynamic-fields {
            display: none;
            margin-top: 20px;
        }

        .submit-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* Ajuste opcional para centrar el botón en pantallas pequeñas */
        @media (max-width: 767px) {
            .submit-container {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
    <script>
        // Validación de solo letras para nombre y apellido
        function validarTexto(event) {
            const char = String.fromCharCode(event.which);
            if (!/[a-zA-Z\s]/.test(char)) {
                event.preventDefault();
            }
        }
        //Validación de solo numeros para celular
        function validarNumero(event) {
            const char = String.fromCharCode(event.which);
            if (!/[0-9]/.test(char)) {
                event.preventDefault();
            }
        }
        function limitarLongitud(event, input, maxLength) {
            // Se detalla que no se puede superar el maxLength establecidos en los parametros al llamar a la funcion
            if (input.value.length >= maxLength) {
            //Bloquea la entrada de caracteres cuando se excede el límite de longitud.    
            event.preventDefault();
    }
}
    </script>
</head>

<body>
    <!-- Encabezado -->
    <header>
        <div class="container-fluid primary-color py-3">
            <div class="row align-items-center">
                <div class="col-3"></div>
                <div class="col-6 text-center">
                    <img src="ImagenesInterface/K-GLOW_big (1).png" alt="Logo K-GLOW" class="img-fluid"
                        style="max-width: 230px;">
                </div>
                <div class="col-3 d-flex justify-content-end">
                    <!-- Dropdowns de usuario -->
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
                            <li><a class="dropdown-item" href="login.php">Iniciar Sesion</a></li>
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
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
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
                                <a class="nav-link mx-lg-2" href="Nosotros.jsp">NOSOTROS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mx-lg-2" href="contacto.html">CONTACTO</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
    </header>

    <!-- Sección del banner -->
    <section class="py-8 section-spacing">
        <div class="container-fluid">
            <img src="ImagenesInterface/banners/inicio.png" alt="Banner" class="banner-img" />
        </div>
    </section>

    <!-- Contenedor principal con anuncios a los lados -->
    <div class="container-fluid">
        <div class="row align-items-stretch">
            <!-- Imagen de anuncio izquierda -->
            <div class="col-md-2 d-none d-md-flex align-items-center justify-content-center">
                <img src="ImagenesInterface/banners/1.png" alt="Anuncio Izquierdo" class="img-fluid" />
            </div>

            <!-- Contenido Principal -->
            <div class="col-md-8">
                <div class="container my-5">
                    <div class="form-section">
                        <h4>Datos Para Envío</h4>
                        <form method="POST" action="${pageContext.request.contextPath}/RegistrarDatosEnvioServlet">
                            <!-- Campos del formulario -->
                            <div class="form-group icon-input-group">
                                <i class="bi bi-person"></i>
                                <input type="text" class="form-control" name="NOMBRES Y APELLIDOS" id="NOMBRES Y APELLIDOS" placeholder="NOMBRES Y APELLIDOS"
                                       pattern="[A-Za-z\s]+" title="Solo letras" required onkeypress="validarTexto(event)">
                            </div>
                            <div class="row mt-3">
                                <div class="col-6">
                                    <div class="form-group icon-input-group">
                                        <i class="bi bi-credit-card"></i>
                                        <input type="text" class="form-control" name="DNI" placeholder="DNI"
                                                pattern="\d{8}" title="Debe contener 8 dígitos numéricos" required onkeypress="validarNumero(event); limitarLongitud(event, this, 8)">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group icon-input-group">
                                        <i class="bi bi-telephone"></i>
                                        <input type="text" class="form-control" name="CELULAR" placeholder="CELULAR"
                                               pattern="\d{9}" title="Debe contener 9 dígitos numéricos" required onkeypress="validarNumero(event); limitarLongitud(event, this, 9)"">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group icon-input-group mt-3">
                                <i class="bi bi-geo-alt"></i>
                                <input type="text" class="form-control"
                                    placeholder="DIRECCIÓN DE LA AGENCIA DE ENVÍO">
                            </div>
                            <div class="form-check mt-3">
                                <input class="form-check-input" type="checkbox" id="terminos">
                                <label class="form-check-label" for="terminos">
                                    He leído y acepto los términos y condiciones
                                </label>
                            </div>

                            <h4 class="mt-4">Selecciona un Método de Pago</h4>
                            <div class="payment-options">
                                <table class="table table-borderless">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <input type="radio" name="metodoPago" id="paypal" value="paypal">
                                                <label for="paypal">PayPal</label>
                                            </td>
                                            <td class="text-right">
                                                <i class="bi bi-paypal" style="font-size: 1.5rem;"></i>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="radio" name="metodoPago" id="tarjeta" value="tarjeta">
                                                <label for="tarjeta">Tarjeta de Crédito o Débito</label>
                                            </td>
                                            <td class="text-right">
                                                <i class="bi bi-credit-card" style="font-size: 1.5rem;"></i>
                                                <i class="bi bi-credit-card-2-back" style="font-size: 1.5rem;"></i>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="radio" name="metodoPago" id="billetera"
                                                    value="billetera">
                                                <label for="billetera">Billetera Virtual</label>
                                            </td>
                                            <td class="text-right">
                                                <i class="bi bi-wallet2" style="font-size: 1.5rem;"></i>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <!-- Selección de tipo de comprobante -->
                            <div class="mt-4">
                                <h5>Tipo de Comprobante</h5>
                                <div class="row">
                                    <!-- Columna para las opciones de Boleta y Factura -->
                                    <div class="col-6">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="tipoComprobante"
                                                id="boleta" value="boleta">
                                            <label class="form-check-label" for="boleta">Boleta</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="tipoComprobante"
                                                id="factura" value="factura">
                                            <label class="form-check-label" for="factura">Factura</label>
                                        </div>
                                    </div>

                                    <!-- Columna para el campo de entrada RUC alineado a la derecha -->
                                    <div class="col-6 d-flex justify-content-end">
                                        <input type="text" class="form-control" id="rucInput"
                                            placeholder="Ingrese su RUC" style="display: none; max-width: 150px;">
                                    </div>
                                </div>
                            </div>

                            <!-- Campos dinámicos según el método de pago seleccionado -->
                            <div id="paypal-fields" class="dynamic-fields">
                                <h5>Detalles de PayPal</h5>
                                <div class="form-group">
                                    <label for="paypalEmail">Correo Electrónico de PayPal</label>
                                    <input type="email" class="form-control" name="paypalEmail" id="paypalEmail"
                                        placeholder="correo@ejemplo.com">
                                </div>
                            </div>

                            <div id="tarjeta-fields" class="dynamic-fields">
                                <h5>Detalles de Tarjeta de Crédito o Débito</h5>
                                <div class="form-group">
                                    <label for="nombreTarjeta">Nombre en la Tarjeta</label>
                                    <input type="text" class="form-control" name="nombreTarjeta" id="nombreTarjeta"
                                        placeholder="Nombre completo" onkeypress="validarTexto(event)">
                                </div>
                                <div class="form-group">
                                    <label for="numeroTarjeta">Número de Tarjeta</label>
                                    <input type="text" class="form-control" name="numeroTarjeta" id="numeroTarjeta"
                                        placeholder="XXXX - XXXX - XXXX - XXXX" pattern="\d{16}" title="Debe contener 16 dígitos numéricos" required
                                        onkeypress="validarNumero(event); limitarLongitud(event, this, 16)">
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="fechaVencimiento">Fecha de Vencimiento</label>
                                        <input type="month" class="form-control" name="fechaVencimiento" id="fechaVencimiento"
                                            placeholder="MM/AA" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="cvv">CVV</label>
                                        <input type="text" class="form-control" name="CVV" id="cvv" placeholder="CVV"
                                               pattern="\d{3}" title="Debe contener 3 dígitos numéricos" required onkeypress="validarNumero(event); limitarLongitud(event, this, 3)">
                                    </div>
                                </div>
                            </div>

                            <div id="billetera-fields" class="dynamic-fields">
                                <h5>Detalles de Billetera Virtual</h5>
                                <div class="form-group">
                                    <label for="telefonoBilletera">Número de Teléfono Asociado</label>
                                    <input type="text" class="form-control" id="telefonoBilletera"
                                        placeholder="Número de teléfono" required onkeypress="validarNumero(event); limitarLongitud(event, this, 9)">
                                </div>
                            </div>

                            <div class="submit-container mt-4">
                                <div></div> <!-- Espacio vacío a la izquierda -->
                                <div class="d-flex align-items-center">
                                    <img src="ImagenesInterface/osito-removebg-preview.png" alt="Mascota"
                                        style="width: 160px; height: 160px;">
                                    <button type="submit" class="btn"
                                        style="background-color: #e6c6e2; border-color: #e6c6e2; color: #fff;">Finalizar Compra</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

            <!-- Imagen de anuncio derecha -->

                <div class="col-md-2 d-none d-md-flex align-items-center justify-content-center">
                    <img src="ImagenesInterface/banners/2.png" alt="Anuncio Izquierdo" class="img-fluid" />
                </div>
        </div>
    </div>

    <!-- Pie de página -->
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

    <!-- Scripts de Bootstrap y otros -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Solo carga el script de Instagram una vez -->
    <script src="https://kit.fontawesome.com/81581fb069.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <!-- Scripts personalizados -->
    <script>
        document.getElementById("factura").addEventListener("change", function () {
            document.getElementById("rucInput").style.display = this.checked ? "block" : "none";
        });

        document.getElementById("boleta").addEventListener("change", function () {
            document.getElementById("rucInput").style.display = "none";
        });

        $(document).ready(function () {
            $('input[name="metodoPago"]').change(function () {
                // Ocultar todos los campos dinámicos
                $('.dynamic-fields').hide();

                // Mostrar los campos correspondientes al método de pago seleccionado
                if ($('#paypal').is(':checked')) {
                    $('#paypal-fields').show();
                } else if ($('#tarjeta').is(':checked')) {
                    $('#tarjeta-fields').show();
                } else if ($('#billetera').is(':checked')) {
                    $('#billetera-fields').show();
                }
            });
        });
    </script>
</body>

</html>
