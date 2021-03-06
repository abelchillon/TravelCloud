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
        <!-- Navegació/Header-->
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
                        <p class="blog-title">Descripci�n</p>
                        <p class="descrip"><c:out value="${viatge.descripcio}"/></p>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Lugares i monumentos visitados</p>  <!-- YSM - ESTO NO LO USAMOS ENTONCES? ERA POR A�ADIR MAS INFO DEL VIAJE QUE NO SOLO UNA DESCRIPCION -->
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
                        <img alt="Imagen Viaje" src="${imagen}" />
                    </div>
                </c:forEach>
            </div>
            
            <div class="opinions">
                <form action="botonesTravelView" method="post">            
<%--                 	<c:choose> --%>
<!--                     USUARIO QUE VISITA UN VIAJE DE OTRO USUARIO -->
<%--                     <c:when test="${tipusUser == 'USER'}"> <!-- YSM - COMPARAR ID USURIO LOGIN CON EL ID DEL USUARIO QUE HA CREADO EL VIAJE, SI NO ES NUESTRO VIAJE:  -->                      --%>
<!--                         <div class="opinions-button"> -->
<!--                             <button type="button" class="button button-blog" id="valorar">VALORAR Y COMENTAR</button>    -->
<!--                         </div> -->
<!--                         <div class="opinions-button"> -->
<!--                             <button type="button" class="button button-blog" id="addListaDeseos">A�ADIR LISTA DESEOS</button>   -->
<!--                         </div> -->
<!--                         <div class="opinions-button"> -->
<!--                             <button type="button" class="button button-blog" id="volverBusqueda">VOLVER A LA B�SQUEDA</button>    -->
<!--                         </div>                     -->
<%--                     </c:when> --%>
<!--                     PARA CUANDO UN USUARIO VISITA SU PROPIO VIAJE  -->
<%--                     <c:when test="${sameUser == true}"> --%>
                    
<!--                         <div class="opinions-button"> -->
<!--                             <button type="button" class="button button-blog" id="valorar">MODIFICAR VIAJE</button>  -->
<!--                         </div> -->
<!--                         <div class="opinions-button"> -->
<!--                             <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="deleteTravel">ELIMINAR VIAJE</button> -->
<!--                         </div> -->
<!--                         <div class="opinions-button"> -->
<!--                             <button type="button" class="button button-blog" id="returnPage">VOLVER</button>   -->
<!--                         </div> -->
<%--                     </c:when>                 --%>
                    		                                   
                    
<!--                     Si quien visita el viaje es ADMIN o ASESOR -->
<%--                     <c:otherwise> --%>
<!--                      	<div class="opinions-button"> -->
<!--                             <button type="button" class="button button-blog" data-toggle="modal" data-target="deleteTravel">ELIMINAR VIAJE</button> -->
<!--                         </div> -->
<!--                         <div class="opinions-button"> -->
<!--                             <button type="button" class="button button-blog" id="returnPage">VOLVER</button>     -->
<!--                         </div> -->
<%--                     </c:otherwise> --%>
<!--                    Modal Eliminar Viaje -->
                    
                    <div class="modal fade" id="deleteTravel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		            	<div class="modal-dialog" role="document">
		                	<div class="modal-content">
		                    	<div class="modal-header">
                                	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    	<h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                </div>
                                <div class="modal-body">
                                     Esta seguro que quiere eliminar el viaje? No podr� ser recuperado.
                                </div>
                                <div class="modal-footer">
                                	<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar"/>
                                    <input type="submit" class="btn btn-primary" value="Aceptar"/>
                                </div>
                             </div>
                       </div>
	             </div>
<%--                 </c:choose> --%>
               </form>                
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
                            <img src="${userImg}" alt="Imagen de Perfil Usuario"/>
                        </div>
                        <div class="blog-text">
                            <p class="blog-title">Valoraci�n</p>
                            <p class="blog-summary">Comentario: ${valoracion.comentari}</p>
                            <p class="blog-user">${valoracion.puntuacio}</p>
                            <p class="blog-user">${valoracion.idUsuari}</p>
                            <p class="blog-user">${valoracion.dataCreacio}</p>
                            <c:if test="${tipusUser = 'ADMIN'}">
                           		<form action="deleteValoracioAdmin" method="post">
                           		<button type="button" class="button" data-toggle="modal" data-target="deleteOpinion">Eliminar valoraci�n</button>
                           		
                           		<!-- Modal Eliminar Opinion -->
		
                                    <div class="modal fade" id="deleteOpinion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                              <div class="modal-dialog" role="document">
		                                  <div class="modal-content">
		                                      <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                              </div>
                                            <div class="modal-body">
                                            Esta seguro que quiere eliminar esta valoraci�n? No podr� ser recuperada.
                                            </div>
                                              <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar"/>
                                                <input type="submit" class="btn btn-primary" value="Aceptar"/>
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                           		
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