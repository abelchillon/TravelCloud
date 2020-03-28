<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Modificar Perfil - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/userRegister.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/travelView.css" />">
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>
        
        <!-- MODIFICAR PERFIL USUARIO -->
        <section>
            <div class="callout-inner">
                <h3>Modifica tu perfil de TravelCloud</h3>
            </div>
            <div class="container">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td colspan="1">
                            <form class="well form-horizontal">
                                <fieldset>
                                    <div class="td-head">
                                        <p>Datos de acceso</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Modificar ontraseña</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-eye-open"></i>
                                                </span>
                                                <input id="pasword" name="pasword" class="form-control" value="" type="password" placeholder="Nueva contraseña (8 caracters mínimo)" minlength="8" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="td-head">
                                        <p>Datos personales</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Nombre</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <input id="nom" name="nom" placeholder="Nombre" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Apellidos</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <input id="cognom" name="cognom" placeholder="Apellido" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Dirección</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-map-marker"></i>
                                                </span>
                                                <input id="cognom" name="cognom" placeholder="Direccion" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Comunidad Autónoma</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon" style="max-width: 100%;">
                                                    <i class="glyphicon glyphicon-map-marker"></i>
                                                </span>
                                                <select class="selectpicker form-control" name="provincia">
                                                    <option value="NoValid">Selecciona una Comunidad Autónoma ...</option> 
                                                    <option value="Andalucia">Andalucia</option> 
                                                    <option value="Galicia">Galicia</option> 
                                                    <option value="Cataluña">Cataluña</option>
                                                    <option value="Asturias">Asturias</option> 
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Telefono</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-earphone"></i>
                                                </span>
                                                <input id="cognom" name="cognom" placeholder="Telefono" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="i-button">
                                        <input type="button" value="Cambiar imagen de perfil" class="button img-button" />
                                    </div>
                                    
                                    <!-- imagenes viaje-->
                                    <div class="imgs-travel-user">
                                        <div>
                                            <img alt="imagen perfil usuario" src="https://picsum.photos/300/300?random=1" />
                                        </div>
                                    </div>

                                    <div class="form-group" id="botons">
                                        <input type="submit" class="btn btn-secondary" value="Guardar cambios">
                                        <input type="submit" class="btn btn-secondary" value="Cancelar">
                                        <input type="submit" class="btn btn-secondary" value="Eliminar cuenta">
                                    </div>  
                                </fieldset>
                            </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        
        <!--PIE DE PAGINA-->
        <%@include file="footer.jsp" %>
        
    </body>
</html>