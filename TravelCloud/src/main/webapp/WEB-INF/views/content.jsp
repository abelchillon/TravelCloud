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
        <link rel="stylesheet" href="<c:url value="/resources/css/wishList.css" />">
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>
        
       <!-- CONTENIDO --> 
       <section class="travels-section title-content">
            <div class="wishList">
                <div class="title-wishList">
                    <h2>Lorem ipsum dolor sit amet</h2>
                </div>
            </div>

            <div class="travelContainer container-content">
                <div class="travel">
                    <div class="travel-info">
                        <p class="descrip-content">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                        <p class="descrip-content">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam! Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati </p>
                        <p class="descrip-content">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                    </div>
                </div>
            </div>
        </section>
 
        <!--PIE DE PAGINA-->
        <%@include file="footer.jsp" %>
          
    </body>
</html>