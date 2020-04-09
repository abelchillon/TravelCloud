<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Iniciar Sesión - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/userLogin.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/userRegister.css" />">
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- NavegaciÃ³/Header-->
        <%@include file="headerLogin.jsp" %>
        
        <!-- Formulario inicio sesiÃ³n -->
        <section>
            <div class="callout-inner">
                <h3>Iniciar sesión en TravelCloud</h3>
            </div>
            <div class="container">
                <div class="form">
                    <form class="well form-horizontal" method="post" action="userLogin">
                        <fieldset>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Correo electrónico</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </span>
                                        <input id="email" name="email" placeholder="correo electronico" class="form-control" required="true" value="" type="email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Contraseña</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="glyphicon glyphicon-eye-open"></i>
                                        </span>
                                        <input id="pasword" name="pasword" class="form-control" value="" type="password" placeholder="contraseÃ±a (8 caracters mÃ­nimo)" minlength="8" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-check form-check-inline politica">
                                <input id="accesoAsesor" clas="form-check-input" type="checkbox">
                                <label class="form-check-label" for="politica">Guardar datos de acceso</label>
                            </div>
                            <div class="form-group" id="botons">
                                <input type="submit" class="btn btn-secondary" value="Iniciar sesión" name="login">
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>    
        </section>
    </body>
</html>