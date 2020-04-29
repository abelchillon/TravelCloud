<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Comunidades Autonomas</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/index.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/comunidades.css" />">
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>

        <!-- LISTADO COMUNIDADES AUTONOMAS -->
        <form action="listadoComunidadesAutonomas" method="post">
        <section class="features">
            <div class="row">
                <div class="col-md-12">
                    <h3>Descubre lugares</h3>
                </div>
            </div>
            <div class="row row-aux">
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://i.picsum.photos/id/610/300/200.jpg" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Andalucia" name="Andalucia"/>   
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=1" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Aragon" name="Aragon"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=2" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Asturias" name="Asturias"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://i.picsum.photos/id/154/300/200.jpg" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Baleares" name="Baleares"/>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-aux">
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://i.picsum.photos/id/658/300/200.jpg" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Canarias" name="Canarias"/>  
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://i.picsum.photos/id/231/300/200.jpg" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Cantabria" name="Cantabria"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=6" name="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Castilla-La Mancha" id="Castilla-La Mancha"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=7" name="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Castilla y Leon" id="Castilla y Leon"/>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-aux">
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://i.picsum.photos/id/961/300/200.jpg" name="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Catalunya" id="Catalunya"/>    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=9" name="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Comunidad Valenciana" id="Comunidad Valenciana"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://i.picsum.photos/id/190/300/200.jpg" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Extremadura" name="Extremadura"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=11" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Galicia" name="Galicia"/>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-aux">
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=12" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Madrid" name="Madrid"/>    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=13" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Murcia" name="Murcia"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=14" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Navarra" name="Navarra"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=15" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="Pais Vasco" name="Pais Vasco"/>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-aux">
                <div class="col-sm-3">
                    <div class="card-1">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=16" alt="Imagen Comunidad Autonoma">
                            <div class="card-body">
                                <input type="submit" class="button button-blog" value="La Rioja" name="La Rioja"/>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        </form>

        <!-- Footer-->
        <%@include file="footer.jsp" %>
        
    </body>
</html>