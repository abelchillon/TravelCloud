<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Lista de deseos - TravelCloud</title>
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
        <script type="text/javascript" src="<c:url value="/resources/js/showWindowsMessages.js" />"></script>
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- NavegaciÃ³/Header-->
        <%@include file="headerLogin.jsp" %>
        
        <!-- Contacta con asesor-->
        <c:if test="${tipusUser == 'USER'}">
            <section class="contactarAsesor">
                <div class="hero"> 
                    <div class="content">
                        <div class="hero-inner">
                            <h2>¿Necesitas ayuda con tu lista de deseos? Contacta con nuestro asesor</h2>
                        </div>
                    </div>
                    <div class="asesor">
                        <a class="button button-asesor" href="/TravelCloud/sendMessage">CONTACTA CON NUESTRO ASESOR</a>   
                    </div>
                </div>   
            </section>
        </c:if>
        
        <!-- LISTA DE DESEOS -->
        <section class="travels-section">
            <div class="wishList">
                <div class="title-wishList">
                    <h2>Lista de deseos</h2>
                </div>
            </div>
            
            <c:forEach var="travel" items="${travelWishList}" varStatus="status">
                <div class="travelContainer">
                    <div class="travel-img">
                        <img alt="imagenViage" src="https://picsum.photos/300/300?random=1" />
                    </div>
                    <div class="travel">
                        <div class="travel-info">
                            <p class="blog-title">${travel.nomViatge}</p>
                            <p class="descrip-travel">${travel.descripcio}</p>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <p class="blog-user">${travel.fechaViaje}</p>
                                <p class="blog-user">${travel.Valoracion}</p>

                            </div>
                            <div class="col-sm-6">
                                <a class="button button-blog" href="/TravelCloud/travelView">Ver viaje</a>  
                                <c:if test="${tipusUser == 'USER'}">
                                    <a class="button button-blog" id="deleteTravelWishList">Elimintar de la lista</a>
                                </c:if>
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