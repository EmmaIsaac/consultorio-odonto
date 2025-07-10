

<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="components/header.jsp" %>
<%@include file="components/bodyprimeraparte.jsp" %>

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Editar Usuarios</h1>

    </div>



</div>

<div class="container">
    
    <% Usuario usu = (Usuario)request.getSession().getAttribute("usuEditar"); %>

    <form class="user" action="SvEditUsuarios" method="POST">
        <div class="form-group col">
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="nombreusu" name="nombreusu"
                       value="<%= usu.getNombreUsuario() %>" placeholder="Nombre Usuario">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                       value="<%= usu.getContrasenia() %>" placeholder="Contraseña">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="rol" name="rol"
                       value="<%= usu.getRol() %>" placeholder="rol">
            </div>                    

        </div>

        <button type="submit" class="btn btn-primary btn-user">
            Guardar Cambios
        </button>

    </form>


</div>

<%@include file="components/bodyfinal.jsp" %>
