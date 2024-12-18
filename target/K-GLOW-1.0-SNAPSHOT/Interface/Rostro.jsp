<%@page import="Logica.Producto"%>
<%@page import="java.util.List"%>
<%@page import="Logica.DAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KGLOW - CATALOGO</title>
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
                <img src="ImagenesInterface/banners/rostro.png" alt="Banner" class="banner-img" /> <!-- Imagen del banner -->
            </div>
        </section>

        <section class="container mt-4">
            <div class="row">
                <div class="col-lg-3">
                    <h4>Filtros</h4>

                    <!-- Filtro de Tipo de Producto -->
                    <div class="mb-3">
                        <label class="form-label">Tipo de Producto</label>
                        <select class="form-select" id="tipoProducto">
                            <option value="todos">Todos</option>
                            <option value="base">Base</option>
                            <option value="corrector">Corrector</option>
                            <option value="rubor">Rubor</option>
                        </select>
                    </div>

                    <!-- Filtro de Precio -->
                    <div class="mb-3">
                        <label class="form-label">Rango de Precio</label>
                        <input type="number" class="form-control mb-2" id="precioMin" placeholder="Precio mínimo">
                        <input type="number" class="form-control" id="precioMax" placeholder="Precio máximo">
                    </div>

                    <!-- Filtro de Marca -->
                    <div class="mb-3">
                        <label class="form-label">Marca</label>
                        <select class="form-select" id="marca">
                            <option value="todas">Todas</option>
                            <option value="a">Marca A</option>
                            <option value="b">Marca B</option>
                            <option value="c">Marca C</option>
                        </select>
                    </div>

                    <button class="K-btn" onclick="filtrarProductos()">Aplicar Filtros</button>
                </div>

                <!-- Tarjetas de Productos -->
                <div class="col-lg-9">
                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-xl-4 g-3" id="listaProductos">
                        <%
                            // Instancia de ProductoDAO y obtención de la lista de productos
                            ProductoDAO productoDAO = new ProductoDAO();
                            List<Producto> productos = productoDAO.obtenerTodosLosProductos();

                            // Iteración sobre la lista de productos
                            for (Producto producto : productos) {
                            // Filtrar solo los productos cuya categoría sea "rostro"
                                if ("1".equalsIgnoreCase(producto.getCategoria())) {
                        %>
                        <div class="col">
                            <div class="card shadow-sm h-100 d-flex flex-column">
                                <div class="overflow-hidden" style="height: 200px;">
                                    <!-- Puedes ajustar la ruta de la imagen según tus necesidades -->
                                    <img src="ImagenesInterface/productos/Rostro/<%= producto.getNombre_producto()%>.png" class="card-img-top img-fluid" alt="<%= producto.getNombre_producto()%>">
                                </div>
                                <div class="card-body">
                                    <h5 class="card-marca"><%= producto.getMarca()%></h5>
                                    <h5 class="card-title"><%= producto.getNombre_producto()%></h5>
                                    <p class="card-text">S/ <%= producto.getPrecio()%></p>
                                    <a href="Detalle.jsp?id_producto=<%= producto.getId_producto() %>" class="K-btn">Detalles</a>
                                </div>
                            </div>
                        </div>
                        <%
                                }
                            }
                        %>
                    </div>
                </div>
            </div>
        </section>
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
                    <script>
    // Función para filtrar los productos
    function filtrarProductos() {
        // Obtener los valores seleccionados en los filtros
        const tipoProducto = document.getElementById('tipoProducto').value;
        const precioMin = parseFloat(document.getElementById('precioMin').value) || 0;
        const precioMax = parseFloat(document.getElementById('precioMax').value) || Infinity;
        const marca = document.getElementById('marca').value;

        // Obtener todas las tarjetas de productos
        const productos = document.querySelectorAll('#listaProductos .col');

        // Recorrer cada tarjeta y verificar si cumple con los criterios
        productos.forEach((producto) => {
            const productoTipo = producto.querySelector('.card-title').textContent.toLowerCase();
            const productoPrecio = parseFloat(producto.querySelector('.card-text').textContent.replace('S/ ', ''));
            const productoMarca = producto.querySelector('.card-marca').textContent.toLowerCase();

            // Verificar si el producto cumple con los filtros
            const cumpleTipo = tipoProducto === 'todos' || productoTipo.includes(tipoProducto);
            const cumplePrecio = productoPrecio >= precioMin && productoPrecio <= precioMax;
            const cumpleMarca = marca === 'todas' || productoMarca === marca.toLowerCase();

            // Mostrar u ocultar el producto según cumpla los filtros
            if (cumpleTipo && cumplePrecio && cumpleMarca) {
                producto.style.display = 'block';
            } else {
                producto.style.display = 'none';
            }
        });
    }
                    </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://kit.fontawesome.com/81581fb069.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    </body>

</html>
