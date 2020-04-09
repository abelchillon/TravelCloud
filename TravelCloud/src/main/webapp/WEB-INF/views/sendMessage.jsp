<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Contacta con nuestro asesor - TravelCloud</title>
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
        <script type="text/javascript" src="<c:url value="/resources/js/showWindowsMessages.js" />"></script>
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- NavegaciÃ³/Header-->
        <%@include file="headerLogin.jsp" %>
        
        <!-- CONTACTAR ASESOR -->
        <section>
            
            <!-- SELECCION EN FUNCION DE LA URL DESDE LA QUE ES LLAMADA LA VISTA -->
            <!-- SI SE ACCEDE A ENVIAR MENSAJE DESDE LA WISH LIST  -->
            <div class="callout-inner">
                <h3>¿Necesitas ayuda para planificar tu viaje?</h3>
                <h3>Ponte en contacto con nuestro asesor</h3>
            </div>
            
            <!--SI SE ACCEDE DESDE CUALQUIER OTRO LUGAR, PARA ENVIAR UN MENSAJE DIRECTO A UN USUARIO -->
            <div class="callout-inner">
                <h3>Enviar Mensaje</h3>
            </div>
            
            
            
            <div class="container">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td colspan="1">
                            <form class="well form-horizontal" action="sendMessage" method="POST">
                                <fieldset>
                                    
                                    <div class="form-group">
                                            <label class="col-md-4 control-label">Título del mensaje</label>
                                            <div class="col-md-8 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="glyphicon glyphicon-envelope"></i>
                                                    </span>
                                                    <input id="text" name="titleMessage" placeholder="Título del mensaje" class="form-control" required="true" value="" type="email">
                                                </div>
                                            </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Mensaje</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <textarea placeholder="Escribe aquí tu mensaje..." class="form-control" required="true" value=""></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="form-check form-check-inline politica">
                                        <input id="accesoAsesor" clas="form-check-input" type="checkbox" id="checkbox">
                                        <label class="form-check-label" for="politica">Estoy de acuerdo con que se pueda acceder a mis datos</label>
                                    </div>

                                    <div class="form-group" id="botons">
                                        <input type="submit" class="btn btn-secondary" value="Enviar mensaje" id="enviarMensaje">
                                        <input type="submit" class="btn btn-secondary" id="cancelMessage" value="Cancelar">
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