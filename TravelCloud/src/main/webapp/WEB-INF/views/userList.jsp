<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Listado Usuarios - TravelCloud</title>
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
        <%@include file="headerLogin.jsp" %>
        
        <!-- FOTO USUARIO -->
        
        <!-- VIAJES USUARIO -->
        <section id="gestion-user">
            <div class="gesUser">
                <h3>Gestion usuarios</h3>
            </div>
            
            <c:forEach var="usuari" items="${usuarios}" varStatus="status">
                <div class="container-viaje user">
                    <div class="img-viaje">
                        <img src="${usuari.imagen}" alt="Imagen Usuario"/>
                    </div>
                    <div class="content-viaje">
                        <p class="blog-title">${usuari.nomUsuari}</p>
                        <p class="blog-user">${usuari.fechaRegistro}</p>
                        <form action="botonesUserList" method="post">
                        	<button type="button" class="button button-blog" id="verView">Ver</button>
	                        <button type="button" class="button button-blog" data-toggle="modal" data-target="deleteTravel">Eliminar</button>
	                        <button type="button" class="button button-blog" id="sendMessage">Enviar Mensaje</button>
	                        
	                        
	                        
	                        
	                         <!-- Modal Eliminar Viaje -->
		
                                    <div class="modal fade" id="deleteTravel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                              <div class="modal-dialog" role="document">
		                                  <div class="modal-content">
		                                      <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                              </div>
                                            <div class="modal-body">
                                            Esta seguro que quiere eliminar el viaje? No podrá ser recuperado.
                                            </div>
                                              <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar"/>
                                                <input type="submit" class="btn btn-primary" value="Aceptar"/>
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                        </form>
                    </div>
                </div>    
            </c:forEach>
        </section>

    </body>
</html>