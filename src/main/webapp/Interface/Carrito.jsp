<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de Carrito</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <style>
            /* Estilos para el carrito de compras */
            .cart-header {
                font-size: 1.5rem;
                font-weight: bold;
            }
            .product-image {
                max-width: 150px;
                height: auto;
            }
            .quantity input {
                max-width: 50px;
                text-align: center;
            }
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
            }
            .checkout-btn:hover {
                background-color: #73294E;
            }
            .table th, .table td {
                text-align: center;
            }

            /* Estilo para el QR (oculto al principio) */
            #qr-container {
                display: none;
                text-align: center;
                margin-top: 20px;
            }
            #qr-container img {
                width: 200px;  /* Ajusta el tamaño del QR */
            }
        </style>
    </head>
    <body>
        <div class="container my-5">
            <div class="d-flex align-items-center mb-4">
                <a href="Principal.jsp" class="me-3" style="color: gray;"><i class="bi bi-arrow-left"></i> Volver al Inicio</a>
            </div>

            <div class="d-flex align-items-center" style="color: rgb(78, 14, 14);">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-bag-fill me-2" viewBox="0 0 16 16">
                <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1m3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4z"/>
                </svg>
                <h1 class="cart-header">Carrito de Compras</h1>
            </div>

            <!-- Botón para agregar productos -->
            <div class="d-flex justify-content-start mb-4">
                <button class="btn btn-primary" onclick="showProductList()">Agregar Producto</button>
            </div>

            <!-- Lista de productos (oculta inicialmente) -->
            <div id="product-list-container" style="display: none;">
                <h3>Seleccionar Producto</h3>
                <select id="product-select" class="form-select mb-3">
                    <option value="" disabled selected>Seleccione un producto</option>
                    <option value="Labial">Producto A</option>
                    <option value="Base">Producto B</option>
                    <option value="Producto C">Producto C</option>
                    <option value="Producto D">Producto D</option>
                </select>
                <button class="btn btn-success" onclick="addProduct()">Agregar al Carrito</button>
                <button class="btn btn-secondary" onclick="hideProductList()">Cancelar</button>
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
                    <tbody id="product-list">
                        <!-- Aquí se renderizan los productos dinámicamente -->
                    </tbody>
                </table>
            </div>

            <!-- Totales del carrito -->
            <div class="totals-section">
                <div class="d-flex justify-content-between mb-3">
                    <p>Subtotal:</p>
                    <p id="subtotal">S/. 0.00</p>
                </div>
                <div class="d-flex justify-content-between mb-3">
                    <p>Descuento:</p>
                    <p id="discount">S/. 0.00</p>
                </div>
                <div class="d-flex justify-content-between">
                    <h3>Total:</h3>
                    <h3 id="total">S/. 0.00</h3>
                </div>
            </div>

            <!-- Botón de proceder al pago -->
            <div class="d-flex justify-content-end">
                <button class="checkout-btn" onclick="proceedToPayment()">Proceder a Pagar</button>
            </div>
        </div>

        <script>
            // Diccionario de imágenes por producto
            const productImages = {
                "Labial": "Interface/ImagenesInterface/productos/Labios/labialBarra_MarcaFlowerKnows.png", // Reemplaza con la URL de la imagen del labial
                "Producto B": "path/to/base.jpg", // Reemplaza con la URL de la imagen de la base
                "Producto C": "path/to/another.jpg", // Otra imagen
                "Producto D": "path/to/another2.jpg"  // Otra imagen
            };

            // Función para mostrar la lista de productos
            function showProductList() {
                document.getElementById("product-list-container").style.display = "block";
            }

            // Función para ocultar la lista de productos
            function hideProductList() {
                document.getElementById("product-list-container").style.display = "none";
            }

            // Función para agregar un producto al carrito
            function addProduct() {
                var productName = document.getElementById("product-select").value;

                if (productName && productImages[productName]) {
                    var productList = document.getElementById("product-list");

                    var newRow = document.createElement("tr");
                    newRow.classList.add("product-row");

                    var productImage = productImages[productName];  // Asigna la imagen correctamente

                    newRow.innerHTML = `
                        <td><img src="${productImage}" alt="${productName}" class="product-image"></td>
                        <td class="product-name">${productName}</td>
                        <td><input type="number" class="quantity-input" value="1" min="1" onchange="updateTotal()"></td>
                        <td class="product-price">S/. 10.00</td>
                        <td class="product-total">S/. 10.00</td>
                        <td><button class="btn btn-danger" onclick="removeProduct(this)">Eliminar</button></td>
                    `;

                    productList.appendChild(newRow);
                    updateTotal();
                    hideProductList();
                } else {
                    alert("Por favor, selecciona un producto válido.");
                }
            }

            // Función para eliminar un producto
            function removeProduct(button) {
                button.closest("tr").remove();
                updateTotal();
            }

            // Función para actualizar el total
            function updateTotal() {
                var rows = document.querySelectorAll("#product-list .product-row");
                var subtotal = 0;
                rows.forEach(function(row) {
                    var quantity = parseInt(row.querySelector(".quantity-input").value);
                    var price = parseFloat(row.querySelector(".product-price").textContent.replace("S/. ", ""));
                    var total = quantity * price;
                    row.querySelector(".product-total").textContent = "S/. " + total.toFixed(2);
                    subtotal += total;
                });

                var discount = subtotal * 0.1;  // Descuento del 10%
                var total = subtotal - discount;

                document.getElementById("subtotal").textContent = "S/. " + subtotal.toFixed(2);
                document.getElementById("discount").textContent = "S/. " + discount.toFixed(2);
                document.getElementById("total").textContent = "S/. " + total.toFixed(2);
            }

            // Función para mostrar el código QR (Yape)
            function showQRCode() {
                document.getElementById("qr-container").style.display = "block";
            }

            // Función para proceder al pago
            function proceedToPayment() {
                window.location.href = "Pago.jsp";  // Redirige a la página de pago
            }
        </script>
    </body>
</html>
