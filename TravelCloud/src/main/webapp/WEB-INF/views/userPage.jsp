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
                    <p class="blog-title"><c:out value="${usuari.NomUsuari}"/></p>
                    <c:if test="${tipusUser == 'USER'}">
                        <p class="blog-user">Numero de viages realizados: <c:out value="${usuari.totalViatges}"/></p>
                    </c:if>
                </div>
            </div>
        </section>

        <!-- BOTONES GESTION USUARIO -->
        <c:choose>
            <c:when test="${tipusUser == 'USER'}">   <!--- habria que comprobar que el usuario que esta login es el mismo que el id del usuario que quiere mostrarse-->
                <section id="userButtons">
                    <div class="user-buttons">
                        <a class="button button-user" href="/TravelCloud/userUpdate">Editar Perfil</a>
                        <c:choose>
                            <c:when test="${tipusUser == 'USER'}">
                                <a class="button button-user" href="/TravelCloud/travelPush">Subir Viaje</a>
                                <a class="button button-user" href="/TravelCloud/wishList">Lista de deseos</a>
                            </c:when>
                            <c:when test="${tipusUser == 'ADMIN'}">
                                <a class="button button-user" href="/TravelCloud/userList">Gestión usuarios</a>
                                <a class="button button-user" href="/TravelCloud/travelSearch">Gestión viajes</a>
                            </c:when>
                        </c:choose>
                        <a class="button button-user" href="/TravelCloud/usserMessage">Mensajes</a>
                    </div>
                </section>
            </c:when>
            <c:otherwise>
                <section id="userButtons">
                    <div class="user-buttons">
                        <a class="button button-user" href="/TravelCloud/sendMessage">Enviar mensaje</a>
                        <a class="button button-user" href="">Volver</a>
                    </div>
                </section>
            </c:otherwise>
        </c:choose>
        
        <!-- VIAJES USUARIO -->
        <!-- VIAJES USUARIO -->
        <!-- para este apartado habria que diferenciar, si el usuario esta visitando su propio perfil, o el perfil de otro usuario  -->
        <!-- esta es la configuracion en caso de que se visite el perfil de otro usuario -->
        <!-- solo el usuario web normal podra ver este apartado cuando entre su propio perfil, admin y asesor como no suben viajes, no tienen este apartado--->
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
                        <p class="blog-title">${travelUser.nomCiutat}</p>
                        <p class="blog-user">${travelUser.fechaViaje}</p>
                        <p class="blog-user">${travelUser.nNumValoraciones}: </p>
                        <p class="blog-user">${travelUser.numComentarios}</p>
                        <a class="button button-blog" href="/TravelCloud/travelView">Ver</a>
                        <c:if test="${tipusUser == 'USER'}">
                            <a class="button button-blog" href="#">Editar</a>
                        </c:if>
                        <c:if test="${tipusUser == 'USER' && tipusUser == 'ADMIN'}">
                            <a class="button button-blog" href="#">Borrar</a>
                        </c:if>
                    </div>
                </div>
            </c:forEach>
        </section>

        <!--PIE DE PAGINA-->
        <%@include file="footer.jsp" %>
      
    </body>
</html>