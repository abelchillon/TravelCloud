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
                    <h2><c:out value="${tituloMensaje}"/></h2>
                </div>
            </div>
            
            <div class="travelContainer">
                <div class="travel">
                    <div class="travel-info">
                        <p class="descrip-travel"><c:out value="${descripcionMensaje}"/></p>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                            <p class="blog-user"><c:out value="${fechaMensaje}"/></p>
                            <p class="blog-user"><c:out value="${nombreUsuario}"/></p>
                        </div>
                        <div class="col-sm-6">
                            <a class="button button-blog" id="response-button">Responder</a>  
                            <a class="button button-blog" href="#">Eliminar</a>  
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
    <!--RESPONDER -->    
        <section id="response-message" class="travels-section">
            <div class="wishList">
                <div class="title-message">
                    <h2>Responder mensaje</h2>
                </div>
            </div>
            <div class="travelContainer">
                <div class="travel">
                    <div class="travel-info">    
                        <textarea placeholder="Escribe aquí tu respuesta..." class="form-control response" required="true" value=""></textarea>    
                    </div>
                    <div class="form-group" id="botons">
                        <input id="send-button" type="submit" class="button button-blog" value="Enviar mensaje">
                        <input id="cancel-button" type="submit" class="button button-blog" value="Cancelar">
                    </div>           
             </div>
            </div>
        </section>
    
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
                            <p class="descrip-travel">${mensaje.descripcion}</p>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <p class="blog-user">${mensaje.fechaRespuesta}</p>
                                <p class="blog-user">${mensaje.nombreUsuario}</p>
                            </div>
                            <div class="col-sm-6">  
                                <a class="button button-blog" href="#">Eliminar</a>  
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