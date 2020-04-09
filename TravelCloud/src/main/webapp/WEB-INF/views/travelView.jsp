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
                <h2><c:out value="${viatge.titol}"/></h2>
            </div>
            <div class="filters-travel">
                <div>
                    <p><c:out value="${viatge.comunitat}"/></p>
                    <p><c:out value="${viatge.provincia}"/></p>
                    <p><c:out value="${viatge.tipus}"/></p>
                    <p><c:out value="${viatge.entorn}"/></p>
                    <p><c:out value="${viatge.durada}"/></p>
                    <p><c:out value="${viatge.puntuacions/valoracions}"/></p>  
                </div>
            </div>
        
            <div class="row info-travel">
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Descripción</p>
                        <p class="descrip"><c:out value="${viatge.descripcio}"/></p>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Lugares i monumentos visitados</p>  <!-- YSM - ESTO NO LO USAMOS ENTONCES? ERA POR AÑADIR MAS INFO DEL VIAJE QUE NO SOLO UNA DESCRIPCION -->
                        <p class="descrip"><c:out value="${lugaresViaje}"/></p>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Restaurantes y bares</p> <!-- YSM - Y ESTO TAMPOCO NO?  -->
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
                <form action="botonesTravelView" method="post">
                    <!-- USUARIO QUE VISITA UN VIAJE DE OTRO USUARIO -->
                    <c:when test="${tipusUser == 'USER'}"> <!-- YSM - COMPARAR ID USURIO LOGIN CON EL ID DEL USUARIO QUE HA CREADO EL VIAJE, SI NO ES NUESTRO VIAJE:  --> 
                    
                        <div class="opinions-button">
                            <input type="submit" class="button button-blog" value="VALORAR Y COMENTAR" name="addValoracio"/>   <!-- aqui tiene que redirigir a opiniones.jsp -->
                        </div>
                        <div class="opinions-button">
                            <input type="submit" class="button button-blog" value="AÑADIR A LA LISTA DE DESEOS" name="addWishList"/>    
                        </div>
                        <div class="opinions-button">
                            <input type="submit" class="button button-blog" value="VOLVER A LA BÚSQUEDA" name="returnSearch"/>   
                        </div>
                    
                    </c:when>
                    <!-- PARA CUANDO UN USUARIO VISITA SU PROPIO VIAJE  -->
                    <c:when test="${tipusUser == 'USER-PROPIO VIAJE'}">
                    
                        <div class="opinions-button">
                            <input type="submit" class="button button-blog" value="MODIFICAR VIAJE" name="editTravel"/> 
                        </div>
                        <div class="opinions-button">
                            <input type="submit" class="button button-blog" value="ELIMINAR VIAJE" name="deleteTravel"/>
                        </div>
                        <div class="opinions-button">
                            <input type="submit" class="button button-blog" value="VOLVER" name="returnPage"/> 
                        </div>
                    </c:when>
                    
                    <!--Si quien visita el viaje es ADMIN o ASESOR -->
                    <c:otherwise>
                        <div class="opinions-button">
                            <input type="submit" class="button button-blog" value="VOLVER" name="returnPage"/>    
                        </div>
                    </c:otherwise>
                    </form>
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
                            <p class="blog-summary">Comentario: ${valoracion.comentari}</p>
                            <p class="blog-user">${valoracion.puntuacio}</p>
                            <p class="blog-user">${valoracion.idUsuari}</p>
                            <p class="blog-user">${valoracion.dataCreacio}</p>
                            <c:if test="${tipusUser = 'ADMIN'}">
                           		<form action="deleteValoracioAdmin" method="post">
                           			<input type="submit" class="button" value="Eliminar valoración" name="deleteValoracioAdmin"/>
                           		</form>
                                
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