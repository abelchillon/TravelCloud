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
        <!-- Navegaci�/Header-->
        <%@include file="headerLogin.jsp" %>
        
        <!-- FILTROS BUSQUEDA VIAJE -->
        <section>
            <div class="row">
                <div class="col-sm-12 formViaje">
                    <form name="busquedaDestino" method="post" action="">
                        <div class="forms">
                            <select name="caDespl" class="selectpicker">
                                <option value="noValid" disabled selected>Comunidad Aut�noma...</option>
                                <option value="Andalucia">Andalucia</option>
                                <option value="Catalunya">Catalunya</option>
                                <option value="PaisVasco">Pais Vaco</option>    
                            </select>
                            <select name="provincia" class="selectpicker">
                                <option value="noValid" disabled selected>Provincia...</option>
                                <option value="ejemplo1">Ejemplo1</option>
                                <option value="ejemplo2">Ejemplo2</option>
                                <option value="ejemplo2">Ejemplo3</option>
                            </select>
                            <select name="tipoViaje" class="selectpicker">
                                <option value="noValid" disabled selected>Tipo viaje...</option>
                                <option value="pareja">Pareja</option>
                                <option value="Familia">Familia</option>
                                <option value="Amigos">Amigos</option>
                                <option value="Solitario">Solitario</option>
                                <option value="Animales">Animales</option>
                                <option value="Trabajo">Trabajo</option>
                            </select>
                            <select name="ubicacion" class="selectpicker">
                                <option value="noValid" disabled selected>Ubicaci�n...</option>
                                <option value="Mar">Mar</option>
                                <option value="Montaña">Monta�a</option>
                                <option value="Ciudad">Ciudad</option>
                                <option value="Naturaleza">Naturaleza</option>
                            </select>
                            <select name="duracion" class="selectpicker">
                                <option value="noValid" disabled selected>Duraci�n...</option>
                                <option value="1">1-3 dias</option>
                                <option value="2">3-5 dias</option>
                                <option value="3">5-7 dias</option>
                                <option value="4">+7 dias</option>
                            </select>
                            <select name="valoracion" class="selectpicker">
                                <option name="noValid" disabled selected>Valoraci�n...</option>
                                <option name="val1">1</option>
                                <option name="val2">2</option>
                                <option name="val3">3</option>
                                <option name="val4">4</option>
                                <option name="val5">5</option>
                            </select>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        
        <!--VISTAS VIAJES-->
        <section class="travels-section">
            <c:forEach var="travel" items="${travelList}" varStatus="status">
                <div class="travelContainer">
                    <div class="travel-img">
                        <img alt="imagenViage" src="${travel.travelFoto}" />
                    </div>
                    <div class="travel">
                        <div class="travel-info">
                            <p class="blog-title">${travel.titol}</p>
                            <p class="descrip-travel">${travel.descripcio}</p>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <p class="blog-user"><c:out value="${travel.idUsuari}"/></p>
                                <p class="blog-user"><c:out value="${travel.valoracio}"/></p>

                            </div>
                            <div class="col-sm-6">
                            	<form action="botonesTravelSearch" method="post">
                            	
                                <input type="submit" class="button button-blog" value="Ver viaje" id="verViaje"/>
                                <c:choose>
                                    <c:when test="${tipusUser = 'ADMIN'}">
                                        <input type="submit" class="button button-blog" value="Eliminar" id="eliminarViaje"/>
                                    </c:when>
                                    <c:when test="${tipusUser = 'USER'}">
                                        <input type="submit" class="button button-blog" value="A�adir Lista Deseos" id="a�adirWishList"/>
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
      
        