<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KGLOW - Labios</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link href="css/Diseño1.css" rel="stylesheet" type="text/css"/>
        <link href="css/footer.css" rel="stylesheet" type="text/css"/>
        <style>
            .product-card {
                transition: transform 0.3s ease;
                border: 1px solid #e0e0e0;
                margin-bottom: 20px;
            }
            .product-card:hover {
                transform: scale(1.05);
                box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            }
            .product-img {
                height: 250px;
                object-fit: cover;
            }
            .btn-add-cart {
                background-color: #866383;
                color: white;
                border: none;
                transition: background-color 0.3s ease;
            }
            .btn-add-cart:hover {
                background-color: #6c4f70;
                color: white;
            }
        </style>
    </head>

    <body>
        <!-- Header -->
        <header>
            <!-- (Header content) -->
        </header>

        <!-- Banner -->
        <section class="py-8 section-spacing">
            <div class="container-fluid">
                <img src="ImagenesInterface/banners/labios.png" alt="Banner" class="banner-img">
            </div>
        </section>

        <!-- Productos de Labios -->
    <section class="container my-5">
        <div class="row">
            <c:forEach var="producto" items="${productos}">
                <div class="col-md-4">
                    <div class="card product-card">
                        <img src="${producto.imagen}" class="card-img-top product-img" alt="${producto.nombre}">
                        <div class="card-body">
                            <h5 class="card-title">${producto.nombre}</h5>
                            <p class="card-text">${producto.descripcion}</p>
                            <p class="card-text fw-bold">S/. ${producto.precio}</p>
                            <a href="Carrito.jsp" class="btn btn-add-cart w-100">
                                <i class="bi bi-cart-plus"></i> Añadir al Carrito
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>

        <!-- Chatbot -->
        <div id="chat-icon" style="position: fixed; bottom: 20px; right: 20px; cursor: pointer; z-index: 10;">
            <svg xmlns="http://www.w3.org/2000/svg" fill="#866383" width="40" height="40" class="bi bi-robot" viewBox="0 0 16 16">
                <path d="M6 12.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v.5h-4v-.5zM8 0a3 3 0 0 0-3 3v2.5h6V3a3 3 0 0 0-3-3zm-1 6a1 1 0 1 1 2 0 .5.5 0 0 0 .5.5h1a.5.5 0 0 1 .5-.5 1 1 0 1 1 2 0 .5.5 0 0 0 .5.5h1a.5.5 0 0 1 .5-.5 1 1 0 1 1 2 0 .5.5 0 0 0 .5.5h1a.5.5 0 0 1 .5-.5 1 1 0 1 1 2 0 .5.5 0 0 0 .5.5h1a.5.5 0 0 1 .5-.5 1 1 0 1 1 2 0z"/>
            </svg>
        </div>
    </body>
</html>