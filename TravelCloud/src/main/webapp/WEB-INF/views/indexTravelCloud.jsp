<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    </head>
    
    <body>
        <!-- Navegació/Header--> 
        <%@include file="headerLogin.jsp" %>
        
        <!-- CREACION APARTADO BUSQUEDA DESTINO-->
        <section>
            <div class="hero"> 
                <div class="content">
                
                    <div class="hero-inner">
                        <h2>Busca tu destino</h2>
                    </div>
                    <!--FILTRO DE DESTINOS-->
                    <form name="busquedaDestino" method="post" action="">
                        <div class="forms">
                        	<select name="caDespl" class="selectpicker">  
                        		<option value="noValid" disabled selected>Comunidad Autónoma...</option>                        		                      
	                        	<c:forEach items="${viatges}" var="v">
	                        			<option value="${v.comunitat}">${v.comunitat}</option>
								</c:forEach>	
							</select>
							<select name="provincia" class="selectpicker">  
                                <option value="noValid" disabled selected>Provincia...</option>
	                        	<c:forEach items="${viatges}" var="v">
	                        			<option value="${v.provincia}">${v.provincia}</option>
								</c:forEach>	
							</select>
							<select name="tipoViaje" class="selectpicker">  
                                <option value="noValid" disabled selected>Tipo viaje...</option>
	                        	<c:forEach items="${viatges}" var="v">
	                        			<option value="${v.tipusViatger}">${v.tipus}</option>
								</c:forEach>	
							</select>
                        </div>
                        <div class="forms">
                        	<select name="ubicacion" class="selectpicker">  
                                <option value="noValid" disabled selected>Ubicación...</option>
	                        	<c:forEach items="${viatges}" var="v">
	                        			<option value="${v.entorn}">${v.entorn}</option>
								</c:forEach>	
							</select>
							<select name="duracion" class="selectpicker">  
                                <option value="noValid" disabled selected>Duracion...</option>
	                        	<c:forEach items="${viatges}" var="v">
	                        			<option value="${v.durada}">${v.durada}</option>
								</c:forEach>	
							</select>
							<select name="valoracion" class="selectpicker">  
                                <option value="noValid" disabled selected>Valoracion...</option>
	                        	<c:forEach items="${valoracions}" var="val">
	                        			<option value="${val.puntuacio}">${val.puntuacio}</option>
								</c:forEach>	
							</select>
                        </div>
                        <div class="button-search">
                            <input type="submit" class="button log-button" value="Buscar" id="buscarViaje" />
                        </div>
                    </form>
                </div>
            </div>
        </section>
        
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
                            <img class="card-img-top" src="https://unsplash.it/300/200?image=1006" alt="Imatge 1">
                            <div class="card-body">
                                <h4>Catalunya</h4>    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://unsplash.it/300/200?image=740" alt="Imatge 2">
                            <div class="card-body">
                                <h4>Madrid</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=1" alt="Imatge 3">
                            <div class="card-body">
                                <h4>Andalucia</h4>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/id/1018/300/200" alt="Imatge 3">
                            <div class="card-body">
                                <h4>Cantabria</h4>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Boton para ir a la pagina de busqueda de viages-->
            <div class="blog-cta">
            	<a class="button ghost-button" href="/TravelCloud/comunidades">Descubre mas lugares</a>
            </div>
        </section>
        

        <!-- SECCION INICIO SESION-->
        <section>
            <div class="row hero-log">
                <div class="col-sm-6 hero-inner-log">
                    <h3>Guarda todos tus viajes en un solo lugar</h3>
                </div>
                <div class="col-sm-6 hero-logins">
                    <div class="log-cta">
                        <a class="log-button" href="/TravelCloud/userLogin">Iniciar Sesión</a>
                        <a class="log-button" href="/TravelCloud/userRegister">Registrarse</a>
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
	                        <a class="button button-blog" href="/TravelCloud/travelView">Ver viaje</a>
	                        <c:if test="${tipusUsuari == USER_LOGIN }">
	                        	<a class="button button-blog" href="#">Añadir a la lista deseos</a>
	                        </c:if>
	                    </div>  
	                </c:forEach>
	            </div>
	                
	            <div class="blog-cta blog-cta-button">
	            	<a class="button ghost-button" href="/TravelCloud/travelSearch">Ver mas</a>
	        	</div>
                
            </div>
        </section>
        
        <!--PIE DE PAGINA-->        
        <%@include file="footer.jsp" %>

    </body>
</html>
      