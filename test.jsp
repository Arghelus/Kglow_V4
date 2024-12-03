
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuestionario</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
    <link href="css/footer.css" rel="stylesheet" type="text/css"/>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            text-align: center;
        }

        main {
            padding: 5%;
            margin-left: 10%;
            margin-right: 10%;
        }

        h1 {
            font-size: 2rem;
            margin-bottom: 10px;
            text-align: left;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px;
        }

        img.osito {
            max-width: 100px;
            display: inline-block;
        }

        label {
            display: block;
            margin: 10px 0;
            text-align: left;
        }

        select {
            width: 100%;
            padding: 5px;
            margin-top: 5px;
        }

        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #774d72;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .result {
            margin-top: 20px;
            font-size: 1.2rem;
            font-weight: bold;
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

    <main>
        <h1 style="color: #774d72; font-weight: bold; font-size: 2.1rem;">
            <img src="ImagenesInterface/osito-removebg-preview.png" alt="Osito" class="osito">
            Cuestionario: Descubre tu tipo de piel
        </h1>
        <form id="skinTypeForm">
            <label>
                1. ¿Cómo se siente tu piel al tacto?
                <select name="q1">
                    <option value="seca">Áspera o tirante</option>
                    <option value="grasa">Grasosa o aceitosa</option>
                    <option value="mixta">Varía según la zona</option>
                </select>
            </label>
            <label>
                2. ¿Tu piel brilla durante el día?
                <select name="q2">
                    <option value="seca">Rara vez</option>
                    <option value="grasa">Sí, todo el tiempo</option>
                    <option value="mixta">Solo en ciertas zonas</option>
                </select>
            </label>
            <label>
                3. ¿Con qué frecuencia tienes brotes o granos?
                <select name="q3">
                    <option value="seca">Rara vez</option>
                    <option value="grasa">Frecuentemente</option>
                    <option value="mixta">Ocasionalmente</option>
                </select>
            </label>
            <label>
                4. ¿Cómo reacciona tu piel al clima frío?
                <select name="q4">
                    <option value="seca">Se seca rápidamente</option>
                    <option value="grasa">No afecta mucho</option>
                    <option value="mixta">Algunas zonas se secan</option>
                </select>
            </label>
            <label>
                5. ¿Cómo sientes tu piel después de lavarla?
                <select name="q5">
                    <option value="seca">Tirante o escamosa</option>
                    <option value="grasa">Aún grasosa</option>
                    <option value="mixta">Depende de la zona</option>
                </select>
            </label>
            <button type="button" onclick="calculateSkinType()">Ver Resultado</button>
        </form>
        <div class="result" id="result"></div>
        <p>
            <a href="servicios.html" style="color: #774d72; text-decoration: none;">← Regresar a Servicios</a>
        </p>
    </main>

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

    <!-- Script para el cálculo del tipo de piel -->
    <script>
        function calculateSkinType() {
            const form = document.getElementById('skinTypeForm');
            const answers = Array.from(form.elements)
                .filter(el => el.tagName === 'SELECT')
                .map(el => el.value);

            const counts = answers.reduce((acc, type) => {
                acc[type] = (acc[type] || 0) + 1;
                return acc;
            }, {});

            const maxType = Object.keys(counts).reduce((a, b) => (counts[a] > counts[b] ? a : b));
            const resultText = {
                seca: 'Tu tipo de piel es: Seca. Recomendamos bases hidratantes.',
                grasa: 'Tu tipo de piel es: Grasa. Opta por bases mate o sin aceites.',
                mixta: 'Tu tipo de piel es: Mixta. Busca bases equilibradas para todas las zonas.'
            };

            document.getElementById('result').innerText = resultText[maxType] || 'No pudimos determinar tu tipo de piel.';
        }
    </script>

    <!-- Enlaces a Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
