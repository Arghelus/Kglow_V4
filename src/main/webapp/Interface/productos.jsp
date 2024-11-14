<%-- 
    Document   : productos
    Created on : 14 nov. 2024, 01:50:38
    Author     : anton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>K-GLOW - ADMIN</title>

    <!-- Custom fonts for this template-->
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <link href="css\sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="productos.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">K-GLOW</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="productos.jsp">  <!--Llevar al apartado de productos-->
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Menús</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="categorias.jsp"> <!-- Las 3 categorias disponibles-->
                    <i class="fas fa-tag"></i>
                    <span>Categorias</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="productos.jsp">
                    <i class="fas fa-list"></i>
                    <span>Productos</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="cliente.jsp"> <!--Lista de clientes-->
                    <i class="fas fa-list"></i>
                    <span>Clientes</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">

                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"></span>
                                <img class="img-profile rounded-circle"
                                    src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="../salir.php">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Salir
                                </a>
                            </div>
                        </li>
                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->

                    <!-- Código HTML para mostrar productos -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Productos</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
                            id="abrirProducto"><i class="fas fa-plus fa-sm text-white-50"></i> Nuevo</a>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered" style="width: 100%;">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                            <th>Precio Normal</th>
                                            <th>Cantidad</th>
                                            <th>Categoría</th>
                                            <th>Marca</th>
                                            <th>Contenido</th>
                                            <th>Origen</th>
                                            <th>Tipo</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                name
                                            </td>
                                            <td>
                                                descripcion
                                            </td>
                                            <td>
                                                precio
                                            </td>
                                            <td>
                                                total_stock <!-- sumatoria de stock de cada id en variantes-->
                                            </td>
                                            <td>
                                                categoria <!-- se obtiene el nombre mediante el id -->
                                            </td>
                                            <td>
                                                marca
                                            </td>
                                            <td>
                                                contenido
                                            </td>
                                            <td>
                                                origen
                                            </td>
                                            <td>
                                                tipo
                                            </td>
                                            <td>
                                                <button class="btn btn-danger"
                                                    type="submit">Eliminar</button><!-- boton para eliminar fila de la tabla productos ( y sus variantes) -->
                                                <button class="btn btn-success"
                                                    type="submit" id = "abrirEditarProducto">Editar</button><!-- boton para editar fila de la tabla productos ( y sus variantes) -->
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!-- Modal para nuevo producto -->
                    <div id="productos" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title"
                        aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header bg-gradient-primary text-white">
                                    <h5 class="modal-title" id="title">Nuevo Producto</h5>
                                    <button class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="" method="POST" enctype="multipart/form-data" autocomplete="off">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="nombre">Nombre</label>
                                                    <input id="nombre" class="form-control" type="text" name="nombre"
                                                        placeholder="Nombre" required>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="descripcion">Descripción</label>
                                                    <textarea id="descripcion" class="form-control" name="descripcion"
                                                        placeholder="Descripción" rows="3" required></textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="precio">Precio</label>
                                                    <input id="precio" class="form-control" type="text" name="precio"
                                                        placeholder="Precio Normal" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="marca">Marca</label>
                                                    <input id="marca" class="form-control" type="text" name="marca"
                                                        placeholder="Marca" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="contenido">Contenido</label>
                                                    <input id="contenido" class="form-control" type="text"
                                                        name="contenido" placeholder="Contenido" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="origen">Origen</label>
                                                    <input id="origen" class="form-control" type="text" name="origen"
                                                        placeholder="Origen" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="tipo">Tipo</label>
                                                    <input id="tipo" class="form-control" type="text" name="tipo"
                                                        placeholder="Tipo" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="categoria">Categoria</label>
                                                    <select id="categoria" name="categoria" class="form-control"
                                                        required>
                                                        <option value="">Seleccione una categoria</option>
                                                        <option value="rostro">Rostro</option>
                                                        <option value="ojos">Ojos</option>
                                                        <option value="labios">Labios</option>
                                                    </select>
                                                </div>
                                            </div>

                                        </div>

                                        <h5>Opciones del producto (Colores, Stock, Imágenes)</h5>
                                        <table id="tabla_opciones" class="table">
                                            <thead>
                                                <tr>
                                                    <th>Color</th>
                                                    <th>Stock</th>
                                                    <th>Imagen 1</th>
                                                    <th>Imagen 2</th>
                                                    <th>Imagen 3</th>
                                                    <th>Eliminar</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <input type="color" id="color" name="color[]"
                                                            class="form-control" required>
                                                    </td>
                                                    <td><input type="number" name="stock[]" class="form-control"
                                                            required></td>
                                                    <td><input type="file" name="imagen1[]" accept="image/*"
                                                            class="form-control" required></td>
                                                    <td><input type="file" name="imagen2[]" accept="image/*"
                                                            class="form-control" required></td>
                                                    <td><input type="file" name="imagen3[]" accept="image/*"
                                                            class="form-control" required></td>
                                                    <td><button type="button"
                                                            class="btn btn-danger eliminar-opcion">Eliminar</button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <button type="button" id="agregar_opcion" class="btn btn-primary">Agregar
                                            Opción</button>

                                        <button type="submit" class="btn btn-success mt-4">Guardar</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal para editar producto -->
                    <div id="editarProducto" class="modal fade" tabindex="-1" role="dialog"
                        aria-labelledby="editar-modal-title" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header bg-gradient-primary text-white">
                                    <h5 class="modal-title" id="editar-title">Editar Producto</h5>
                                    <button class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="" method="POST" enctype="multipart/form-data" autocomplete="off">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="nombreEditar">Nombre</label>
                                                    <input id="nombreEditar" class="form-control" type="text"
                                                        name="nombre" placeholder="Nombre" required>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="descripcionEditar">Descripción</label>
                                                    <textarea id="descripcionEditar" class="form-control"
                                                        name="descripcion" placeholder="Descripción" rows="3"
                                                        required></textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="precioEditar">Precio</label>
                                                    <input id="precioEditar" class="form-control" type="text"
                                                        name="precio" placeholder="Precio" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="marcaEditar">Marca</label>
                                                    <input id="marcaEditar" class="form-control" type="text"
                                                        name="marca" placeholder="Marca" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="contenidoEditar">Contenido</label>
                                                    <input id="contenidoEditar" class="form-control" type="text"
                                                        name="contenido" placeholder="Contenido" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="origenEditar">Origen</label>
                                                    <input id="origenEditar" class="form-control" type="text"
                                                        name="origen" placeholder="Origen" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="tipoEditar">Tipo</label>
                                                    <input id="tipoEditar" class="form-control" type="text" name="tipo"
                                                        placeholder="Tipo" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="categoriaEditar">Categoría</label>
                                                    <select id="categoriaEditar" name="categoria" class="form-control"
                                                        required>
                                                        <option value="">Seleccione una categoría</option>
                                                        <option value="rostro">Rostro</option>
                                                        <option value="ojos">Ojos</option>
                                                        <option value="labios">Labios</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <h5>Opciones del producto (Colores, Stock, Imágenes)</h5>
                                        <table id="tabla_opciones_editar" class="table">
                                            <thead>
                                                <tr>
                                                    <th>Color</th>
                                                    <th>Stock</th>
                                                    <th>Imagen 1</th>
                                                    <th>Imagen 2</th>
                                                    <th>Imagen 3</th>
                                                    <th>Eliminar</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <input type="color" id="colorEditar" name="color[]"
                                                            class="form-control" required>
                                                    </td>
                                                    <td><input type="number" name="stock[]" class="form-control"
                                                            required></td>
                                                    <td><input type="file" name="imagen1[]" accept="image/*"
                                                            class="form-control"></td>
                                                    <td><input type="file" name="imagen2[]" accept="image/*"
                                                            class="form-control"></td>
                                                    <td><input type="file" name="imagen3[]" accept="image/*"
                                                            class="form-control"></td>
                                                    <td><button type="button"
                                                            class="btn btn-danger eliminar-opcion">Eliminar</button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <button type="button" id="agregar_opcion_editar" class="btn btn-primary">Agregar
                                            Opción</button>

                                        <button type="submit" class="btn btn-success mt-4">Guardar Cambios</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        $(document).ready(function () {
            // Mostrar el modal al hacer clic en "Nuevo"
            $("#abrirProducto").click(function (e) {
                e.preventDefault();
                $("#productos").modal("show");
            });

            // Mostrar el modal de edición al hacer clic en "Editar"
            $("#abrirEditarProducto").click(function (e) {
                e.preventDefault();
                $("#editarProducto").modal("show");
            });

            // Agregar nueva fila para opciones
            $(document).ready(function () {
                $("#agregar_opcion").click(function () {
                    $("#tabla_opciones tbody").append(`
                <tr>
                    <td>
                        <input type="color" name="color[]" class="form-control" required>
                    </td>
                    <td><input type="number" name="stock[]" class="form-control" required></td>
                    <td><input type="file" name="imagen1[]" accept="image/*" class="form-control" required></td>
                    <td><input type="file" name="imagen2[]" accept="image/*" class="form-control" required></td>
                    <td><input type="file" name="imagen3[]" accept="image/*" class="form-control" required></td>
                    <td><button type="button" class="btn btn-danger eliminar-opcion">Eliminar</button></td>
                </tr>
            `);
                });

                // Agregar nueva fila para opciones en el modal de edición
                $("#agregar_opcion_editar").click(function () {
                    $("#tabla_opciones_editar tbody").append(`
                <tr>
                    <td><input type="color" name="color[]" class="form-control" required></td>
                    <td><input type="number" name="stock[]" class="form-control" required></td>
                    <td><input type="file" name="imagen1[]" accept="image/*" class="form-control" required></td>
                    <td><input type="file" name="imagen2[]" accept="image/*" class="form-control" required></td>
                    <td><input type="file" name="imagen3[]" accept="image/*" class="form-control" required></td>
                    <td><button type="button" class="btn btn-danger eliminar-opcion">Eliminar</button></td>
                </tr>
            `);
                });

                // Quitar fila
                $(document).on("click", ".eliminar-opcion", function () {
                    $(this).closest("tr").remove();
                });
            });
        });

    </script>
</body>