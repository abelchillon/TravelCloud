<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Responder mensaje - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <script type="text/javascript" src="<c:url value="/resources/js/showMessage.js" />"></script>
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
    <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>
        
    <!--MENSAJES USUARIO -->
        <section id="section-message" class="travels-section">
            <div class="wishList">
                <div class="title-message">
                    <h2><c:out value="${missatge.titol}"/></h2>
                </div>
            </div>
            
            <div class="travelContainer">
                <div class="travel">
                    <div class="travel-info">
                        <p class="descrip-travel"><c:out value="${missatge.cos}"/></p>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                            <p class="blog-user"><c:out value="${missatge.dataCreacio}"/></p>
                            <p class="blog-user"><c:out value="${missatge.idUsuari}"/></p>
                        </div>
                        <div class="col-sm-6">
                        	<form action="botonsMissatge" method="post">
	                            <input type="submit" class="button button-blog" id="response-button" value="Responder"/> 
	                            <button type="button" class="button button-blog deleteMessage" data-toggle="modal" data-target="deleteMessage">Eliminar</button> 
	                            
	                             <!-- Modal Eliminar Mensaje -->
		
                                    <div class="modal fade" id=""deleteMessage"" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                              <div class="modal-dialog" role="document">
		                                  <div class="modal-content">
		                                      <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                              </div>
                                            <div class="modal-body">
                                            Esta seguro que quiere eliminar el mensaje? No podr� ser recuperado.
                                            </div>
                                              <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar"/>
                                                <input type="submit" class="btn btn-primary" value="Aceptar"/>
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                          	</form>  
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
    <!--RESPONDER -->
    	<form action="responderMensaje" method="post">    
        <section id="response-message" class="travels-section">
            <div class="wishList">
                <div class="title-message">
                    <h2>Responder mensaje</h2>
                </div>
            </div>
            <div class="travelContainer">
                <div class="travel">
                    <div class="travel-info">    
                        <textarea placeholder="Escribe aqu� tu respuesta..." class="form-control response" required="true" value=""></textarea>    
                    </div>
                    <div class="form-group" id="botons">
                        <input id="send-button" name="enviarMissatge" type="submit" class="button button-blog" value="Enviar mensaje">
                        <button type="button" class="button button-blog" data-toggle="modal" data-target="cancelMessage">Cancelar</button>
                        
                        <!-- Modal Cancelar Mensaje -->
		
                                    <div class="modal fade" id=""cancelMessage"" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                              <div class="modal-dialog" role="document">
		                                  <div class="modal-content">
		                                      <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                              </div>
                                            <div class="modal-body">
                                            Esta seguro que quiere cancelar el mensaje? El mensaje no ser� enviado.
                                            </div>
                                              <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar"/>
                                                <input type="submit" class="btn btn-primary" value="Aceptar"/>
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                    </div>           
             </div>
            </div>
        </section>
        </form>
    
    <!--RESPUESTAS USUARIO -->  
        <section class="travels-section">
            <div class="wishList">
                <div class="title-message">
                    <h2>Respuestas</h2>
                </div>
            </div>
            
            <c:forEach var="mensaje" items="${mensajeUsuario}" varStatus="status">
                <div class="travelContainer">
                    <div class="travel">
                        <div class="travel-info">
                            <p class="descrip-travel">${mensaje.cos}</p>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <p class="blog-user">${mensaje.dataCreacio}</p>
                                <p class="blog-user">${mensaje.idUsuari}</p>
                            </div>
                            <div class="col-sm-6">
                            	<form action="eliminarMensaje" method="post">  
                                 <button type="button" class="button button-blog deleteMessage" data-toggle="modal" data-target="deleteMessage">Eliminar</button>
                                
                                <!-- Modal Eliminar Mensaje -->
		
                                    <div class="modal fade" id=""deleteMessage"" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                              <div class="modal-dialog" role="document">
		                                  <div class="modal-content">
		                                      <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                              </div>
                                            <div class="modal-body">
                                            Esta seguro que quiere eliminar el mensaje? No podr� ser recuperado.
                                            </div>
                                              <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar"/>
                                                <input type="submit" class="btn btn-primary" value="Aceptar"/>
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                                
                                </form>  
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </section>
        
    <!--pie de pagina -->
        <%@include file="footer.jsp" %>
        
    </body>
</html>