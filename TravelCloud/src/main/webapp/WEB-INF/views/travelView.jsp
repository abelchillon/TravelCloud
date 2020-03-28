<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Viaje - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/travelView.css" />">
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- NavegaciÃ³/Header-->
        <%@include file="headerLogin.jsp" %>
 
        <!-- VISTA VIAJE -->
        <section>
            <div class="title-travel">
                <h2><c:out value="${nomViatge}"/></h2>
            </div>
            <div class="filters-travel">
                <div>
                    <p><c:out value="${comunidadAutonoma}"/></p>
                    <p><c:out value="${Provincia}"/></p>
                    <p><c:out value="${TipoViaje}"/></p>
                    <p><c:out value="${ubicacion}"/></p>
                    <p><c:out value="${duracion}"/></p>
                    <p><c:out value="${valoracion}"/></p>  
                </div>
            </div>
        
            <div class="row info-travel">
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Descripción</p>
                        <p class="descrip"><c:out value="${descripcionViaje}"/></p>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Lugares i monumentos visitados</p>
                        <p class="descrip"><c:out value="${lugaresViaje}"/></p>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Restaurantes y bares</p>
                        <p class="descrip"><c:out value="${restaurantesViaje}"/></p>
                    </div>
                </div>
            </div>
            
            <div class="imgs-travel">
                <c:forEach var="imagen" items="${travelImgs}" varStatus="status">
                    <div>
                        <img alt="imagen viaje 1" src="${imagen}" />
                    </div>
                </c:forEach>
            </div>
            
            <div class="opinions">
                <c:choose>
                    <!-- USUARIO QUE VISITA UN VIAJE DE OTRO USUARIO -->
                    <c:when test="${tipusUser == 'USER'}">
                        <div class="opinions-button">
                            <a class="button button-blog" href="/TravelCloud/opiniones">VALORAR Y COMENTAR</a>   
                        </div>
                        <div class="opinions-button">
                            <a class="button button-blog" href="#">AÑADIR A LA LISTA DE DESEOS</a>   
                        </div>
                        <div class="opinions-button">
                            <a class="button button-blog" href="/TravelCloud/travelSearch">VOLVER A LA BÚSQUEDA</a>   
                        </div>
                    </c:when>
                    <!-- PARA CUANDO UN USUARIO VISITA SU PROPIO VIAJE   (hay que comparar si el id del usuario coincide con el id de usuario guardado en el viaje) -->
                    <c:when test="${tipusUser == 'USER-PROPIO VIAJE'}">
                        <div class="opinions-button">
                            <a class="button button-blog" href="/TravelCloud/travelPush">MODIFICAR VIAJE</a>   
                        </div>
                        <div class="opinions-button">
                            <a class="button button-blog" href="#">ELIMINAR VIAJE</a>   
                        </div>
                        <div class="opinions-button">
                            <a class="button button-blog" href="">VOLVER</a>   
                        </div>
                    </c:when>
                    
                    <!--Si es ADMIN o ASESOR -->
                    <c:otherwise>
                        <div class="opinions-button">
                            <a class="button button-blog" href="/TravelCloud/travelSearch">VOLVER A LA BÚSQUEDA</a>   
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>  
        
        <!-- COMENTARIOS Y VALORACIONES -->
        <section>
            <div class="title-opinions">
                <h3>Comentarios y Valoraciones</h3>    
            </div>
            
            <c:forEach var="valoracion" items="${travelValoracion}" varStatus="status">
                <div class="row opinion-travel">
                    <div class="col-sm-6 opinion">
                        <div class="blog-image">
                            <img src="${userImg}"/>
                        </div>
                        <div class="blog-text">
                            <p class="blog-title">Valoración</p>
                            <p class="blog-summary">Comentario: ${valoracion.comentario}</p>
                            <p class="blog-user">${valoracion.nomUsuari}</p>
                            <p class="blog-user">${valoracion.dataValoracio}</p>
                            <c:if test="${tipusUser = 'ADMIN'}">
                                <a class="button" href="#">Eliminar valoración</a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </c:forEach> 
        </section>
        
        
        <!-- Footer-->
        <%@include file="footer.jsp" %>

    </body>
</html>