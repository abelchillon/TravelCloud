<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Valoraciones - TravelCloud</title>
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
        <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>

        <!-- VALORACION -->
        <section>
            <div class="callout-inner">
                <div>
                    <h3>Deja tu valoraci�n</h3>
                </div>   
            </div>
            <div class="container">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td colspan="1">
                            <form class="well form-horizontal" action="addValoracio" method="POST">
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">�Qu� te ha parecido este viaje?</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon" style="max-width: 100%;">
                                                    <i class="glyphicon glyphicon-star"></i>
                                                </span>
                                                <select class="selectpicker form-control" name="provincia">
                                                    <option name="noValid" selected>Puntua este viaje...</option>
                                                    <c:forEach items="${valoracions}" var="val">
	                        							<option value="${val.puntuacio}">${val.puntuacio}</option>
													</c:forEach>	
                                                </select>
                                            </div>
                                        </div>
                                    </div>
									<div class="form-group">
                                        <label class="col-md-4 control-label">Explicanos que opinas de este viaje</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <textarea placeholder="Deja aqu� tu comentario..." class="form-control" required="true" value=""></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group" id="botons">
                                        <input type="submit" class="btn btn-secondary" value="Guardar" name="guardarValoracion">
                                        <input type="submit" class="btn btn-secondary" value="Cancelar" name="cancelarValoracion">
                                    </div>
                                </fieldset>
                            </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        
            
  
           
    </body>
</html>