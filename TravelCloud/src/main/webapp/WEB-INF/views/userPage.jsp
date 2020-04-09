<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Perfil - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/userPage.css" />">
        <script type="text/javascript" src="<c:url value="/resources/js/showWindowsMessages.js" />"></script>
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- NavegaciÃ³/Header-->
        <%@include file="headerLogin.jsp" %>
        
        <!-- FOTO USUARIO -->
        <section id="userProfile">
            <div class="container-photo">
                <div class="imgUser">
                    <img src="https://picsum.photos/200/300?random=1" />
                </div>
                <div class="infoUser">
                    <p class="blog-title"><c:out value="${usuari.nom}"/><c:out value="${usuari.cognom1}"/></p>
                    <c:if test="${tipusUser == 'USER'}">
                        <p class="blog-user">Numero de viages realizados: <c:out value="${usuari.totalViatges}"/></p>
                    </c:if>
                </div>
            </div>
        </section>

        <!-- BOTONES GESTION USUARIO -->
        <form action="botonesUserPage" method="post"> 
        <c:choose>
            <c:when test="${usuari.id == hh }">   <!-- YSM si el id del usuario que queremos visitar, es el mismo que nuestro id, se mostraran los botones, sino no. -->
            	
	                <section id="userButtons">
	                    <div class="user-buttons">
	                        <input type="submit" class="button button-user" value="Editar Perfil"/>
	                        <c:choose>
	                            <c:when test="${tipusUser == 'USER'}">
	                                <input type="submit" class="button button-user" value="Subir Viaje" name="subirViaje"/>
	                                <input type="submit" class="button button-user" value="Lista de deseos" name="listaDeseos"/>
	                            </c:when>
	                            <c:when test="${tipusUser == 'ADMIN'}">
	                            	<input type="submit" class="button button-user" value="Gestión usuarios" name="gestionUsuarios"/>
	                            	<input type="submit" class="button button-user" value="Gestión viajes" name="gestionViajes"/>
	                            </c:when>
	                        </c:choose>
	                        <input type="submit" class="button button-user" value="Mensajes" name="mensajes"/>
	                    </div>
	                </section>
            	
            </c:when>
            <c:otherwise> <!-- si el id no es el mismo, pero somos ADMIN o ASESOR, solo mostrara la opcion de enviarle un mensaje, SINO PUES NO MOSTRARA NADA -->
            	<c:if test="${tipusUser == 'ADMIN' || tipusUser == 'ASSESSOR' }">
	                <section id="userButtons">
	                    <div class="user-buttons">
	                        <input type="submit" class="button button-user" value="Enviar mensaje" name="enviarMensaje"/>
	                    </div>
	                </section>
                </c:if>
            </c:otherwise>
        </c:choose>
        </form>
        
        <!-- VIAJES USUARIO -->
       	<c:choose>
       		<c:when test="${usuari.id == hh }">	<!-- YSM si el usuario tiene el mismo id, esta visitando su propio perfil -->
       			<c:if test="${tipusUsuari == 'USER' }"> <!-- admin y asesor no tienen viajes, asi que no tienen este apartado -->
       				<section id="travels-user">
		            <div class="travUs">
		                <h3>Mis Viajes</h3>
		            </div>
			        <c:forEach var="travelUser" items="${travelUserList}" varStatus="status">
			        	<div class="container-viaje">
			        		<div class="img-viaje">
			                	<img src="${travelUser.imagen}"/>
			                </div>
			                <div class="content-viaje">
				                <p class="blog-title">${travelUser.nom}</p>
				                <p class="blog-user">${travelUser.dataCreacio}</p>
				                <p class="blog-user">${travelUser.totalPuntuacio}: </p>
				                
				                <form action="botonesViajesUserPage" method="post">
				                    <input type="submit" class="button button-blog" value="Ver" name="viewTravel"/>
				                    <input type="submit" class="button button-blog" value="Editar" name="editTravel"/>
				                    <input type="submit" class="button button-blog" value="Borrar" name="deleteTravel"/>
			                    </form>
			                    
			                </div>
						</div>
					</c:forEach>
				</section>
			</c:if>  		
		</c:when>
		<c:otherwise>  <!-- YSM si no tienen el mismo id esque esta visitando el perfil de otro usuario -->
			<section id="travels-user">
		    	<div class="travUs">
		    		<h3>Mis Viajes</h3>
		    	</div>
			        <c:forEach var="travelUser" items="${travelUserList}" varStatus="status">
			        	<div class="container-viaje">
			        		<div class="img-viaje">
			                	<img src="${travelUser.imagen}"/>
			                </div>
			                <div class="content-viaje">
				                <p class="blog-title">${travelUser.nom}</p>
				                <p class="blog-user">${travelUser.dataCreacio}</p>
				                <p class="blog-user">${travelUser.totalPuntuacio}: </p>
				                <form action="/botonesViajesUserPage" method="post">
				                    <input type="submit" class="button button-blog" value="Ver" id="verTravelusers"/>
				                    <c:if test="${tipusUser == 'ADMIN' }">	<!--  solo admin puede borrar viajes de los usuarios, lo suyo seria enviar un mensaje al usuario de que el viaje ha sido borrado -->
				                    	<input type="submit" class="button button-blog" value="Borrar" id="borrarTravelAdmin"/>
				                    </c:if>
			                    </form>
			                </div>
						</div>
					</c:forEach>		
			</section>
		</c:otherwise>	
	</c:choose>
     

        <!--PIE DE PAGINA-->
        <%@include file="footer.jsp" %>
      
    </body>
</html>