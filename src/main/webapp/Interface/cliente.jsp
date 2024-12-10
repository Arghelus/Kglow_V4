<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Usuario"%>
<%@page import="Logica.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Validamos si el formulario envió el id_usuario
    String idUsuarioEliminar = request.getParameter("id_usuario");
    if (idUsuarioEliminar != null) {
        Connection conexion = null;
        PreparedStatement ps = null;

        try {
            // Establecer la conexión a la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/kglow", "root", "040405");

            // Comando SQL para eliminar al usuario
            String sql = "DELETE FROM Usuarios WHERE id_usuario = ?";
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(idUsuarioEliminar));

            int filasAfectadas = ps.executeUpdate();
            if (filasAfectadas > 0) {
                out.println("<div class='alert alert-success'>Usuario eliminado exitosamente.</div>");
            } else {
                out.println("<div class='alert alert-danger'>No se encontró el usuario.</div>");
            }

        } catch (Exception e) {
            out.println("<div class='alert alert-danger'>Error al eliminar el usuario: " + e.getMessage() + "</div>");
        } finally {
            // Cerrar recursos
            if (ps != null) ps.close();
            if (conexion != null) conexion.close();
        }
    }
%>
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
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
        <link rel="stylesheet" href="css/Diseño1.css">
        <!-- Custom styles for this template-->
        <link href="css\sb-admin-2.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav secundary-color sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                    <div class="sidebar-brand-text mx-3">K-GLOW</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Nav Item - Tables -->
                <li class="nav-item">
                    <a class="nav-link" href="productos.jsp">
                        <i class="fas fa-list"></i>
                        <span>Productos</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cliente.jsp">
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

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small"> NOMBRE </span>           <!--NOMBRE DEL ADMINISTRADOR-->

                                    <img class="img-profile rounded-circle" src="img/undraw_profile.svg">
                                </a>
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                     aria-labelledby="userDropdown">
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal"
                                       data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Cerrar Session                                                          <!--BOTON PARA CERRAR SESION DEL ADMIN-->
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
                            <h1 class="h3 mb-0 text-gray-800">Usuarios</h1>
                            <a href="#" class="d-none d-sm-inline-block btn-sm K-btn shadow-sm" id="abrirClientes">
                                <i class="fas fa-plus fa-sm text-white-50"></i> Nuevo
                            </a>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered" style="width: 100%;">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Nombre</th>
                                                <th>Apellido</th>
                                                <th>Email</th>
                                                <th>Direccion</th>
                                                <th>Celular</th>
                                                <th>Tipo</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                // Instanciar el DAO y obtener la lista de usuarios
                                                UsuarioDAO usuarioDAO = new UsuarioDAO();
                                                List<Usuario> usuarios = usuarioDAO.obtenerTodosLosUsuarios();

                                                // Iterar sobre la lista y mostrar los datos en la tabla
                                                for (Usuario usuario : usuarios) {
                                            %>
                                            <tr>
                                                <td><%= usuario.getNombreUsuario()%></td>
                                                <td><%= usuario.getApellido()%></td>
                                                <td><%= usuario.getCorreo()%></td>
                                                <td><%= usuario.getDireccion()%></td>
                                                <td><%= usuario.getCelular()%></td>
                                                <td><%= usuario.getTipoRol()%></td>
                                                <td>
                                                    <form method="POST">
                                                        <input type="hidden" name="id_usuario" value="<%= usuario.getId_usuario()%>">
                                                        <button type="submit" class="btn btn-danger">Eliminar</button>
                                                    </form><!-- boton para eliminar fila de la tabla usuario ( y sus variantes) -->
                                                </td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="clientes" class="modal fade" tabindex="-1" role="dialog"
                             aria-labelledby="my-modal-title" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header primary-color text-white">
                                        <h5 class="modal-title" id="title">Nuevo Cliente</h5>
                                        <button class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="" method="POST" enctype="multipart/form-data"
                                              autocomplete="off">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="nombre">Nombre</label>
                                                        <input id="nombre" class="form-control" type="text"
                                                               name="nombre" placeholder="Nombre" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="apellido">Apellido</label>
                                                        <input id="apellido" class="form-control" type="text"
                                                               name="apellido" placeholder="Apellido" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="email">Correo Electronico</label>
                                                        <textarea id="email" class="form-control" name="correo"
                                                                  placeholder="Email" required></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="direccion">Direccion</label>
                                                        <input id="direccion" class="form-control" type="text"
                                                               name="direccion" placeholder="Direccion de Domicilio"
                                                               required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="celular">Celular</label>
                                                        <input id="celular" class="form-control" type="text"
                                                               name="celular" placeholder="Numero de celular" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="contraseña">Contraseña</label>
                                                        <input id="contraseña" class="form-control" type="text"
                                                               name="contraseña" placeholder="Contraseña" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <button class="K-btn" type="submit">Registrar</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>


                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; K-GLOW 2024</span>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </div>
</div>

<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
</div>
</div>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">¿Seguro de salir?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Selecciona "Cerrar Sesion" para salir.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                <a class="btn btn-primary" href="login.jsp">CERRAR SESION</a> <!---ADMIN LOGIN-->
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>


<script src="js/demo/chart-pie-demo.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function () {
        // Mostrar el modal al hacer clic en "Nuevo"
        $("#abrirClientes").click(function (e) {
            e.preventDefault();
            $("#clientes").modal("show");
        });
    });
</script>
</body>