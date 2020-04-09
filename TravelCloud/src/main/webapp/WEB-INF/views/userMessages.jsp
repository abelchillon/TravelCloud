<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Mensajes - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/wishList.css" />">
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>
        
    <!--MENSAJES USUARIO -->
        <section class="travels-section travs-sec">
            <div class="wishList">
                <div class="title-message">
                    <h2>Mensajes</h2>
                </div>
            </div>
            
            <c:forEach var="mensaje" items="${mensajesUsuario}" varStatus="status">
                <div class="travelContainer">
                    <div class="travel">
                        <div class="travel-info">
                            <p class="blog-title">${mensaje.titol}</p>
                            <p class="descrip-travel">${mensaje.cos}</p>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <p class="blog-user">${mensaje.dataCreacio}</p>
                                <p class="blog-user">${mensaje.idUsuari}</p>
                            </div>
                            <div class="col-sm-6">
                            	<form action="veureMissatge" method="post">
                                	<input type="submit" class="button button-blog" value="Ver mensaje" name="veureMissatge"/>  
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