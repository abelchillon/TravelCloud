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
        <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>
        
        <!-- CONTACTAR ASESOR -->
        <section>
            
            <!-- SELECCION EN FUNCION DE LA URL DESDE LA QUE ES LLAMADA LA VISTA -->
            <!-- SI SE ACCEDE A ENVIAR MENSAJE DESDE LA WISH LIST  -->
            <c:if test="$(tipusUsuari == 'USER')">
	            <div class="callout-inner">
	                <h3>�Necesitas ayuda para planificar tu viaje?</h3>
	                <h3>Ponte en contacto con nuestro asesor</h3>
	            </div>
            </c:if>
            
            <!--SI EL USUARIO ES ADMIN O ASESOR -->
            <c:if test="$(tipusUsuari == 'ADMIN' || tipusUsuari == 'ASESOR')">
            	<div class="callout-inner">
               		<h3>Enviar Mensaje</h3>
            	</div>
            </c:if>

            <div class="container">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td colspan="1">
                            <form class="well form-horizontal" action="sendMessage" method="POST">
                                <fieldset>
                                    
                                    <div class="form-group">
                                            <label class="col-md-4 control-label">T�tulo del mensaje</label>
                                            <div class="col-md-8 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="glyphicon glyphicon-envelope"></i>
                                                    </span>
                                                    <input id="text" name="titleMessage" placeholder="T�tulo del mensaje" class="form-control" required="true" type="email">
                                                </div>
                                            </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Mensaje</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <textarea placeholder="Escribe aqu� tu mensaje..." class="form-control" required="true"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="form-check form-check-inline politica">
                                        <input id="accesoAsesor" clas="form-check-input" type="checkbox" id="checkbox">
                                        <label class="form-check-label" for="politica">Estoy de acuerdo con que se pueda acceder a mis datos</label>
                                    </div>

                                    <div class="form-group" id="botons">
                                        <button type="button" class="btn btn-secondary">Enviar mensaje</button>
                                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#cancel">Cancelar</button>
                                    </div>
                                    
                                    
                                    <!-- Modal Cancelar-->
		
                                    <div class="modal fade" id="cancel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                              <div class="modal-dialog" role="document">
		                                  <div class="modal-content">
		                                      <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                              </div>
                                            <div class="modal-body">
                                            Esta seguro que quiere cancelar? El mensaje no ser� enviado.
                                            </div>
                                              <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar"/>
                                                <input type="submit" class="btn btn-primary" value="Aceptar"/>
                                              </div>
                                            </div>
                                        </div>
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