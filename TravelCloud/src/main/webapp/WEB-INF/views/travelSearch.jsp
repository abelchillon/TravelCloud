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
        <link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
        <!--Icono ico-->
        <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>
        <%@include file="filterSearch.jsp" %>
        <p>hola
        <!--VISTAS VIAJES-->
        <section class="travels-section">
            <!--- FALTARIA MODIFICAR LOS NOMBRES, YA QUE NOSE CUALES HAS PUESTO ---->
            <c:forEach var="travel" items="${travelList}" varStatus="status">
                <div class="travelContainer">
                    <div class="travel-img">
                        <img alt="imagenViage" src="${travel.travelFoto}" />
                    </div>
                    <div class="travel">
                        <div class="travel-info">
                            <p class="blog-title">${travel.nomViatge}</p>
                            <p class="descrip-travel">${travel.descripcioViatge}</p>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <p class="blog-user"><c:out value="${travel.userName}"/></p>
                                <p class="blog-user"><c:out value="${travel.valoracio}"/></p>

                            </div>
                            <div class="col-sm-6">
                                <a class="button button-blog" href="/TravelCloud/travelView">Ver viaje</a>
                                <c:choose>
                                    <c:when test="${tipusUser = 'ADMIN'}">
                                        <a class="button button-blog" href="#">Eliminar</a>
                                    </c:when>
                                    <c:when test="${tipusUser = 'USER'}">
                                        <a class="button button-blog" href="#">Añadir Lista Deseos</a>
                                    </c:when>
                                </c:choose>
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
      
        