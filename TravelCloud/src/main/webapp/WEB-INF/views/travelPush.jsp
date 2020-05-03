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
        <link rel="stylesheet" href="<c:url value="/resources/css/userRegister.css" />">
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
        
        
    </head>
    
    <body>
        <!-- NavegaciÃ³/Header-->
        <%@include file="headerLogin.jsp" %>
               
        <section>
            <div class="callout-inner">
                <h3>Subir Viaje</h3>
            </div>
            <div class="container">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td colspan="1">
                            <form class="well form-horizontal" action="addTravel" method="POST">
                                <fieldset>
                                    
                                    <div class="td-head">
                                        <p>Datos principales</p>
                                    </div>
                                    
                                    <div class="form-group">
                                            <label class="col-md-4 control-label">Título del Viaje</label>
                                            <div class="col-md-8 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon" style="max-width: 100%;">
                                                        <i class="glyphicon glyphicon-map-marker"></i>
                                                    </span>
                                                    <input id="email" name="email" placeholder="Título del viaje" class="form-control" required="true" value="" type="text">
                                                </div>
                                            </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Selecciona Comunidad Autónoma</label>
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
                                        <label class="col-md-4 control-label">Selecciona Provincia</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon" style="max-width: 100%;">
                                                    <i class="glyphicon glyphicon-map-marker"></i>
                                                </span>
                                                <select class="selectpicker form-control" name="provincia">
                                                    <c:forEach items="${viatges}" var="v">
	                        							<option value="${v.provincia}">${v.provincia}</option>
													</c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="td-head">
                                        <p>Descripción</p>
                                    </div>
                                     
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Descripción del viaje</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <textarea placeholder="Descripcion del viaje..." class="form-control" required="true" value=""></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Lugares visitados</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <textarea placeholder="Lugares visitados durante el viaje..." class="form-control" required="true" value=""></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Restaurantes visitados</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <textarea style="width=100px" placeholder="Restaurantes y bares visitados durante el viaje..." class="form-control" required="true" value=""></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="td-head">
                                        <p>Otros datos</p>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Tipo de viaje</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon" style="max-width: 100%;">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <select class="selectpicker form-control" name="provincia">
                                                    <c:forEach items="${viatges}" var="v">
	                        							<option value="${v.tipusViatger}">${v.tipus}</option>
													</c:forEach> 
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Ubicación</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon" style="max-width: 100%;">
                                                    <i class="glyphicon glyphicon-leaf"></i>
                                                </span>
                                                <select class="selectpicker form-control" name="provincia">
                                                    <c:forEach items="${viatges}" var="v">
					                        			<option value="${v.entorn}">${v.entorn}</option>
													</c:forEach> 
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Duración</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon" style="max-width: 100%;">
                                                    <i class="glyphicon glyphicon-time"></i>
                                                </span>
                                                <select class="selectpicker form-control" name="provincia">
                                                    <c:forEach items="${viatges}" var="v">
					                        			<option value="${v.durada}">${v.durada}</option>
													</c:forEach> 
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="i-button">
                                        <input type="button" value="Subir Imagenes" class="button img-button" id="subirImagenesViaje"/>
                                    </div>
                                    
                                    <!-- imagenes viaje-->
                                    <div class="imgs-travel">
                                        <c:forEach var="imagen" items="${travelImgs}" varStatus="status">
						                    <div>
						                        <img alt="imagen viaje usuario" src="${imagen.src}" />
						                    </div>
                						</c:forEach>
                                    </div>
                                    
                                    <!-- botones -->
                                    <div class="form-group" id="botons">
                                        <button type="button" class="btn btn-secondary">Guardar</button>
                                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#cancel">Cancelar</button>
                                    </div>
                                    
                                    
                                    <!-- Modal Cancelar -->
		
                                    <div class="modal fade" id="cancel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                              <div class="modal-dialog" role="document">
		                                  <div class="modal-content">
		                                      <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Aviso!</h4>
                                              </div>
                                            <div class="modal-body">
                                            Esta seguro que quiere cancelar? El viaje no será publicado.
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
        
        <!-- Footer-->
        <%@include file="footer.jsp" %>>
        
        
    </body>
</html>