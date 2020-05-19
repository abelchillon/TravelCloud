<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Busca tu destino - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/travelSearch.css" />" rel="stylesheet">
        <!--Icono ico-->
        <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>
        <%@include file="filterSearchTravel.jsp" %>
        
        <!--VISTAS VIAJES-->
        <section class="travels-section">
            <c:forEach var="travel" items="${travelList}" varStatus="status">
                <div class="travelContainer">
                    <div class="travel-img">
                        <img alt="Imagen Principal Viaje" src="${travel.fotoPortada}" />
                    </div>
                    <div class="travel">
                        <div class="travel-info">
                            <p class="blog-title">${travel.titol}</p>
                            <p class="descrip-travel">${travel.descripcio}</p>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <p class="blog-user">Id usuari: <c:out value="${travel.idUsuari}"/></p>
                                <p class="blog-user">Puntuació: <c:out value="${travel.puntuacio}"/></p>

                            </div>
                            <div class="col-sm-6">
                            	<form action="verViaje" method="get">
                            	
                                <input type="submit" class="button-blog" value="Ver viaje" name="verViaje"/>
                                <c:choose>
                                    <c:when test="${tipusUser = 'ADMIN'}">
                                        <input type="submit" class="button button-blog" value="Eliminar" name="eliminarViaje"/>
                                    </c:when>
                                    <c:when test="${tipusUser = 'USER'}">
                                        <input type="submit" class="button button-blog" value="Añadir Lista Deseos" name="addWishList"/>
                                    </c:when>
                                </c:choose>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>    
            </c:forEach>
        </section>
  
        <!-- Footer-->
        <%@include file="footer.jsp" %>        
    </body>
</html>
      
        