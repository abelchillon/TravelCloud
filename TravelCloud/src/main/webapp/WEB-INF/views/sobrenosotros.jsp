<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Sobre Nosotros - TravelCloud</title>
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
        <!-- NavegaciÃ³/Header-->
        <%@include file="headerLogin.jsp" %>
        
       <!-- CONTENIDO --> 
       <section class="travels-section title-content">
            <div class="wishList">
                <div class="title-wishList">
                    <h2>Bienvenido a TravelCloud</h2>
                </div>
            </div>

            <div class="travelContainer container-content">
                <div class="travel">
                    <div class="travel-info">
                         <p class="descrip-content">¿Imaginas poder guardar todos los recuerdos de tus viajes en su solo lugar?</p>
                         <p class="descrip-content">Nosotros lo hacemos posible!</p>
                         <p class="descrip-content">Te ofrecemos esta aplicación para que puedas guardar de forma fácil y cómoda todas las experiencias de tus viajes, para que puedas consultarlos desde cualquier lugar en cualquier momento y recordar esos buenos momentos.</p>
                         <p class="descrip-content">Además, puedes buscar, ver y comentar viajes de otros usuarios y añadirlos a una lista de deseos para guardarlos y que te ayuden a decidir tu próxima aventura!</p>
                         <p class="descrip-content">Te ofrecemos un amplio sistema de filtraje, para que la búsqueda se adapte lo máximo posible a todas tus necesidades.</p>
                         <p class="descrip-content">A parte, si te surgen dudas o necesitas asesoramiento sobre tus viajes guardados, puedes consultar con nuestro grupo de asesores, que estará encantado de ayudarte en todo lo que necesites.</p>
                        <p class="descrip-content">Disfruta de la experiencia!</p>
                    </div>
                </div>
            </div>
        </section>
 
        <!--PIE DE PAGINA-->
        <%@include file="footer.jsp" %>
    </body>
</html>