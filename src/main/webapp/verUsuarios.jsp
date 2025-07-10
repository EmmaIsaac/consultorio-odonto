
<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/header.jsp" %>
<%@include file="components/bodyprimeraparte.jsp" %>

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Ver Usuarios</h1>

    </div>



</div>

<!-- Begin Page Content -->
<div class="container-fluid">


    <!-- DataTales Example -->
    <div class="card shadow mb-4">

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre de Usuario</th>
                            <th>Rol</th>
                            <th style="width: 210px">Acción</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Nombre de Usuario</th>
                            <th>Rol</th>
                            <th style="width: 210px">Acción</th>´
                        </tr>
                    </tfoot>

                    <% List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios"); %>

                    <tbody>

                        <% for (Usuario usu : listaUsuarios) {%>

                        <tr>
                            <td><%= usu.getId_usuario()%></td>
                            <td><%= usu.getNombreUsuario()%></td>
                            <td><%= usu.getRol()%></td>

                            <td style="display: flex; width: 230px;">
                                <form name="eliminar" action="SvElimUsuarios" method="POST">
                                    <button 
                                        type="submit" class="btn btn-danger btn-user btn-block"
                                        style="margin-right: 5px;"
                                        >
                                        <i class="fas fa-trash-alt"></i>
                                        Eliminar
                                    </button>
                                    <input type="hidden" name="id" value="<%= usu.getId_usuario()%>">
                                </form>
                                <form name="editar" action="SvEditUsuarios" method="GET">
                                    <button 
                                        type="submit" class="btn btn-primary btn-user btn-block"
                                        style="margin-left: 5px;"
                                        >
                                        <i class="fas fa-pencil-alt"></i>
                                        Editar
                                    </button>
                                    <input type="hidden" name="id" value="<%= usu.getId_usuario()%>">
                                </form>
                            </td>
                        </tr>

                        <% }%>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->



<%@include file="components/bodyfinal.jsp" %>
