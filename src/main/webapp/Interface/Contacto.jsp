<%-- 
    Document   : Contacto
    Created on : 14 nov. 2024, 14:18:34
    Author     : Crhist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
        <link href="css/footer.css" rel="stylesheet" type="text/css"/>
        <style>
            .contact-container {
                display: flex;
                background-color: #fff;
                padding: 40px;
                border-radius: 15px;
                box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
                max-width: 800px;
                width: 100%;
                margin: 20px auto;
            }
            .contact-informacion, .contact-form {
                width: 50%;
                padding: 0 20px;
            }
            .contact-informacion h2 {
                font-size: 1.8em;
                color: #c2185b;
                text-align: center;
            }
            .contact-informacion p, .contact-info .address {
                font-size: 1em;
                color: #8e8e8e;
                text-align: center;
            }
            .contact-informacion .address i {
                margin-right: 10px;
            }
            .contact-form h3 {
                font-size: 1.4em;
                color: #c2185b;
                margin-bottom: 15px;
            }
            .contact-form input, .contact-form textarea {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: 2px solid #f8bbd0;
                border-radius: 8px;
                outline: none;
            }
            .contact-form input:focus, .contact-form textarea:focus {
                border-color: #c2185b;
            }
            .contact-form label {
                font-size: 0.9em;
                color: #5e3558;
            }
            .contact-form .terms {
                font-size: 0.8em;
                color: #8e8e8e;
                display: flex;
                align-items: center;
            }
            .contact-form .terms input {
                margin-right: 10px;
            }
            .contact-form button {
                background-color: #e91e63;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 20px;
                font-size: 1em;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .contact-form button:hover {
                background-color: #d81b60;
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
    <div class="contact-container">
        <div class="contact-informacion">
            <h2>Aquí estamos para ayudarte</h2>
            <p>Aquí encontrarás nuestros canales de atención para poder ayudarte.</p>
            <img src="ImagenesInterface/osito-removebg-preview.png" alt="Osito" class="img-fluid"
                        style="max-width: 350px;">
        </div>
        <div class="contact-form">
            <h3>Déjanos tu mensaje</h3>
            <form id="contactForm">
                <input type="text" id="name" placeholder="Nombre y apellidos" required>
                <input type="email" id="email" placeholder="Correo electrónico" required>
                <input type="tel" id="phone" placeholder="Teléfono">
                <input type="text" id="subject" placeholder="Asunto">
                <textarea id="message" placeholder="Mensaje" rows="4"></textarea>
                <div class="terms">
                    <input type="checkbox" id="terms" required>
                    <label>He leído y acepto la <a href="#" style="color: #c2185b;">política de protección de datos personales</a>.</label>
                </div>
                <button type="submit">Enviar</button>
            </form>
        </div>
    </div>

    <script>
        document.getElementById('contactForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Previene el envío del formulario estándar

        // Captura los valores de los campos
        const name = document.getElementById('name').value;
        const email = document.getElementById('email').value;
        const phone = document.getElementById('phone').value;
        const subject = document.getElementById('subject').value;
        const message = document.getElementById('message').value;
        const terms = document.getElementById('terms').checked;

        // Verifica si el checkbox de términos está marcado
        if (!terms) {
            alert("Debes aceptar la política de protección de datos personales.");
            return;
        }

        // Crea un objeto con los datos
        const data = {
            name: name,
            email: email,
            phone: phone,
            subject: subject,
            message: message
        };

        // Envía los datos usando fetch y AJAX (AQUIII EL APIII)
        fetch('https://tuservidor.com/api/contact', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                alert('Mensaje enviado con éxito.');
            } else {
                alert('Hubo un problema al enviar el mensaje.');
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Error al enviar el mensaje.');
        });
    });
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
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
</body>
</html>
