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
                            <form class="well form-horizontal" action="/addTravel" method="POST">
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
                                                    <input id="email" name="email" placeholder="TÃ­tulo del viaje" class="form-control" required="true" value="" type="text">
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
                                                    <option value="NoValid">Selecciona una Comunidad Autónoma ...</option> 
                                                    <option value="Andalucia">Andalucia</option> 
                                                    <option value="Galicia">Galicia</option> 
                                                    <option value="CataluÃ±a">Cataluña</option>
                                                    <option value="Asturias">Asturias</option> 
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
                                                    <option value="NoValid">Selecciona una Pronvicia ...</option> 
                                                    <option value="Andalucia">Barcelona</option> 
                                                    <option value="Galicia">Girona</option> 
                                                    <option value="CataluÃ±a">Lleida</option>
                                                    <option value="Asturias">Tarragona</option> 
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="td-head">
                                        <p>DescripciÃ³n</p>
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
                                                    <option value="noValid" selected>Selecciona tipo de viaje ...</option> 
                                                    <option value="Andalucia">Pareja</option> 
                                                    <option value="Galicia">Familia</option> 
                                                    <option value="CataluÃ±a">Amigos</option>
                                                    <option value="Asturias">Solitario</option> 
                                                    <option value="Asturias">Animales</option> 
                                                    <option value="Asturias">Trabajo</option> 
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
                                                    <option value="noValid" selected>Selecciona ubicación...</option>
                                                    <option value="Mar">Mar</option>
                                                    <option value="MontaÃ±a">Montaña</option>
                                                    <option value="Ciudad">Ciudad</option>
                                                    <option value="Naturaleza">Naturaleza</option> 
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
                                                    <option value="noValid" selected>Selecciona duración...</option>
                                                    <option value="1">1-3 dias</option>
                                                    <option value="2">3-5 dias</option>
                                                    <option value="3">5-7 dias</option>
                                                    <option value="4">+7 dias</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="i-button">
                                        <input type="button" value="Subir Imagenes" class="button img-button" />
                                    </div>
                                    
                                    <!-- imagenes viaje-->
                                    <div class="imgs-travel">
                                        <div>
                                            <img alt="imagen viaje 1" src="https://picsum.photos/300/300?random=1" />
                                        </div>
                                        <div>
                                            <img alt="imagen viaje 1" src="https://picsum.photos/300/300?random=2" />
                                        </div>
                                        <div>
                                            <img alt="imagen viaje 1" src="https://picsum.photos/300/300?random=3" />
                                        </div>
                                        <div>
                                            <img alt="imagen viaje 1" src="https://picsum.photos/300/300?random=4" />
                                        </div>
                                    </div>
                                    
                                    <!-- botones -->
                                    <div class="form-group" id="botons">
                                        <input type="submit" id="savePage" class="btn btn-secondary" value="Guardar">
                                        <input type="submit" id="cancelUpdate" class="btn btn-secondary" value="Cancelar">
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