<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>TravelCloud</title>
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
        <script src="/resources/js/filterSearch.js"></script>
        
    </head>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    <body>
		
        <!-- Navegació/Header--> 
        <%@include file="headerLogin.jsp" %>
        <%@include file="filterSearch.jsp" %>
     
        <!-- Seccion descubre lugares-->
        <section class="features">
            <div class="row">
                <div class="col-md-12">
                    <h3>Descubre lugares</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://unsplash.it/300/200?image=1006" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <h4>Catalunya</h4>    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://unsplash.it/300/200?image=740" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <h4>Madrid</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=1" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <h4>Andalucia</h4>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/id/1018/300/200" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <h4>Cantabria</h4>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Boton para ir a la pagina de busqueda de viages-->
            <div class="blog-cta"><a class="button ghost-button" href="${contextPath}/comunidades">Descubre mas lugares</a></div>
        </section>
        

        <!-- SECCION INICIO SESION-->
        <section>
            <div class="row hero-log">
                <div class="col-sm-6 hero-inner-log">
                    <h3>Guarda todos tus viajes en un solo lugar</h3>
                </div>
                <div class="col-sm-6 hero-logins">
                    <div class="log-cta">
                        <a class="log-button" href="${contextPath}/userLogin">Iniciar Sesión</a>
                        <a class="log-button" href="${contextPath}/userRegister">Registrarse</a>
                    </div>    
                </div>
            </div>
        </section>
        
        
        
        <!-- SECCION DESCUBRE SITIOS MÃS VISITADOS-->
        <section id="blog">
            <div class="blog-inner">
                <div>
                    <h3>Descubre los lugares más visitados</h3>
                </div>
                
                <div class="blog-grid">
                	<c:forEach var="viaje" items="${viajesDestacados}" varStatus="status">
	                    <div class="blog-image">
	                        <img src="https://unsplash.it/600/300?image=122"/>
	                    </div>
	                    <div class="blog-text">
	                        <p class="blog-title">${viaje.titulo}</p>
	                        <p class="blog-summary">${viaje.descripcion}</p>
	                        <a class="button button-blog" href="${contextPath}/travelView">Ver viaje</a>
	                        <c:if test="${loginIncorrect == 'FALSE'}">
	                        	<a class="button button-blog" href="#">Añadir a la lista deseos</a>
	                        </c:if>
	                    </div>  
	                </c:forEach>
	            </div>
	                
	            <div class="blog-cta blog-cta-button">
	            	<a class="button ghost-button" href="${contextPath}/travelSearch">Ver mas</a>
	        	</div>
                
            </div>
        </section>
        
        <!--PIE DE PAGINA-->        
        <%@include file="footer.jsp" %>

    </body>
</html>
      