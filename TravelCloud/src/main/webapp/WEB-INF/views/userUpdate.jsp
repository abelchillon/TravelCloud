<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Modificar Perfil - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/userRegister.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/travelView.css" />">
        <script type="text/javascript" src="<c:url value="/resources/js/showWindowsMessages.js" />"></script>
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- NavegaciÃ³/Header-->
        <%@include file="headerLogin.jsp" %>
        
        <!-- MODIFICAR PERFIL USUARIO -->
        <section>
            <div class="callout-inner">
                <h3>Modifica tu perfil de TravelCloud</h3>
            </div>
            <div class="container">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td colspan="1">
                            <form class="well form-horizontal" action="updateUser" method="POST">
                                <fieldset>
                                    <div class="td-head">
                                        <p>Datos de acceso</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Modificar contraseña</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-eye-open"></i>
                                                </span>
                                                <input id="pasword" name="pasword" class="form-control" value="" type="password" placeholder="Nueva contraseña (8 caracteres mínimo)" minlength="8" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="td-head">
                                        <p>Datos personales</p>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Nombre</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <input id="nom" name="nom" placeholder="Nombre" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Apellidos</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <input id="cognom" name="cognom" placeholder="Apellido" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Dirección</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-map-marker"></i>
                                                </span>
                                                <input id="cognom" name="cognom" placeholder="Direccion" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Comunidad Autónoma</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon" style="max-width: 100%;">
                                                    <i class="glyphicon glyphicon-map-marker"></i>
                                                </span>
                                                <select class="selectpicker form-control" name="provincia">
                                                    <c:forEach items="${viatges}" var="v">
					                        			<option value="${v.comunitat}">${v.comunitat}</option>
													</c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Telefono</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-earphone"></i>
                                                </span>
                                                <input id="cognom" name="cognom" placeholder="Telefono" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="i-button">
                                        <input type="button" value="Cambiar imagen de perfil" class="button img-button" id="cambiarImgPerfil"/>
                                    </div>
                                    
                                    <!-- imagenes viaje-->
                                    <div class="imgs-travel-user">
                                        <div>
                                            <img alt="imagen perfil usuario" src="https://picsum.photos/300/300?random=1" />
                                        </div>
                                    </div>
                                    <div class="form-group" id="botons">		
                                        <button type="button" class="btn btn-secondary">Guardar cambios</button>
                                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#cancel">Cancelar</button>
                                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#deleteUser">Eliminar cuenta</button>
                                    </div> 
                                    
                                    
                                    
                                    <!-- Modal Eliminar Cuenta -->
		
                                    <div class="modal fade" id="deleteUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                              <div class="modal-dialog" role="document">
		                                  <div class="modal-content">
		                                      <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                              </div>
                                            <div class="modal-body">
                                            Esta seguro que quiere eliminar su cuenta? Sus datos y viajes se perderán y no podrán ser recuperados.
                                            </div>
                                              <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar"/>
                                                <input type="submit" class="btn btn-primary" value="Aceptar"/>
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- Modal Cancelar Cambios-->
		
                                    <div class="modal fade" id="cancel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                              <div class="modal-dialog" role="document">
		                                  <div class="modal-content">
		                                      <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                              </div>
                                            <div class="modal-body">
                                            Esta seguro que quiere cancelar? Los cambios realizados no se guardaran.
                                            </div>
                                              <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar"/>
                                                <input type="submit" class="btn btn-primary" value="Aceptar"/>
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                                     
                                </fieldset>
                            </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        
        <!--PIE DE PAGINA-->
        <%@include file="footer.jsp" %>
        
    </body>
</html>