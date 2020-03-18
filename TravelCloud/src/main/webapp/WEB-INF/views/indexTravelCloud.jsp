<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
     
        <!--Icono ico-->
        <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <?php require 'html/headerLogin.html'; ?>
        
        <!-- ACABADO - CREACION APARTADO BUSQUEDA DESTINO-->
        <section>
            <div class="hero"> 
                <div class="content">
                
                    <div class="hero-inner">
                        <h2>Busca tu destino</h2>
                    </div>
                    <!--FILTRO DE DESTINOS-->
                    <form name="busquedaDestino" method="post" action="">
                        <div class="forms">
                            <select name="caDespl" class="selectpicker">
                                <option value="noValid" disabled selected>Comunidad Aut�noma...</option>
                                <option value="Andalucia">Andalucia</option>
                                <option value="Catalunya">Catalunya</option>
                                <option value="PaisVasco">Pais Vaco</option>    
                            </select>

                            <select name="provincia" class="selectpicker">
                                <option value="noValid" disabled selected>Provincia...</option>
                                <option value="ejemplo1">Ejemplo1</option>
                                <option value="ejemplo2">Ejemplo2</option>
                                <option value="ejemplo2">Ejemplo3</option>
                            </select>
                            <select name="tipoViaje" class="selectpicker">
                                <option value="noValid" disabled selected>Tipo viaje...</option>
                                <option value="pareja">Pareja</option>
                                <option value="Familia">Familia</option>
                                <option value="Amigos">Amigos</option>
                                <option value="Solitario">Solitario</option>
                                <option value="Animales">Animales</option>
                                <option value="Trabajo">Trabajo</option>
                            </select>
                        </div>
                        <div class="forms">
                            <select name="ubicacion" class="selectpicker">
                                <option value="noValid" disabled selected>Ubicaci�n...</option>
                                <option value="Mar">Mar</option>
                                <option value="Monta�a">Monta�a</option>
                                <option value="Ciudad">Ciudad</option>
                                <option value="Naturaleza">Naturaleza</option>
                            </select>
                            <select name="duracion" class="selectpicker">
                                <option value="noValid" disabled selected>Duraci�n...</option>
                                <option value="1">1-3 dias</option>
                                <option value="2">3-5 dias</option>
                                <option value="3">5-7 dias</option>
                                <option value="4">+7 dias</option>
                            </select>
                            <select name="valoracion" class="selectpicker">
                                <option name="noValid" disabled selected>Valoracion...</option>
                                <option name="val1">1</option>
                                <option name="val2">2</option>
                                <option name="val3">3</option>
                                <option name="val4">4</option>
                                <option name="val5">5</option>
                            </select>
                        </div>
                        <div class="button-search">
                            <input type="submit" class="button log-button" value="Buscar" />
                        </div>
                    </form>
                </div>
            </div>
        </section>
        
        <!-- ACABADO - Seccion descubre lugares-->
        <section class="features">
            <div class="row">
                <div class="col-md-12">
                    <h3>Descubre lugares</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://unsplash.it/300/200?image=1006" alt="Imatge 1">
                            <div class="card-body">
                                <h4>Catalunya</h4>    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://unsplash.it/300/200?image=740" alt="Imatge 2">
                            <div class="card-body">
                                <h4>Madrid</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/300/200?random=1" alt="Imatge 3">
                            <div class="card-body">
                                <h4>Andalucia</h4>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="https://picsum.photos/id/1018/300/200" alt="Imatge 3">
                            <div class="card-body">
                                <h4>Cantabria</h4>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Boton para ir a la pagina de busqueda de viages-->
            <div class="blog-cta"><a class="button ghost-button" href="html/comunidades.php">Descubre mas lugares</a></div>
        </section>
        

        <!-- ACABADO - SECCION INICIO SESION-->
        <section>
            <div class="row hero-log">
                <div class="col-sm-6 hero-inner-log">
                    <h3>Guarda todos tus viajes en un solo lugar</h3>
                </div>
                <div class="col-sm-6 hero-logins">
                    <div class="log-cta">
                        <a class="log-button" href="html/user/userLogin.php">Iniciar Sesi�n</a>
                        <a class="log-button" href="html/user/userRegister.php">Registrarse</a>
                    </div>    
                </div>
            </div>
        </section>
        
        
        
        <!-- ACABADO - SECCION DESCUBRE SITIOS MÁS VISITADOS-->
        <section id="blog">
            <div class="blog-inner">
                <div>
                    <h3>Descubre los lugares m�s visitados</h3>
                </div>
                <div class="blog-grid">
                    <div class="blog-image">
                        <img src="https://unsplash.it/600/300?image=122"/>
                    </div>
                    <div class="blog-text">
                        <p class="blog-title">NomCiutat</p>
                        <p class="blog-summary">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                        <p class="blog-user">nomUsuari</p>
                        <a class="button button-blog" href="html/travel/travelView.php">Ver viaje</a>
                        <a class="button button-blog" href="#">A�adir a la lista deseos</a>
                    </div>
                    <div class="blog-image">
                        <img src="https://unsplash.it/600/300?image=350"/>
                    </div>
                    <div class="blog-text">
                        <p class="blog-title">NomCiutat</p>
                        <p class="blog-summary">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                        <p class="blog-user">nomUsuari</p>
                        <a class="button button-blog" href="html/travel/travelView.php">Ver viaje</a>
                        <a class="button button-blog" href="#">A�adir a la lista deseos</a>
                    </div>
                    <div class="blog-image">
                            <img src="https://unsplash.it/600/300?image=320"/>
                    </div>
                    <div class="blog-text">
                        <p class="blog-title">NomCiutat</p>
                        <p class="blog-summary">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                        <p class="blog-user">nomUsuari</p>
                        <a class="button button-blog" href="html/travel/travelView.php">Ver viaje</a>
                        <a class="button button-blog" href="#">A�adir a la lista deseos</a>
                    </div>
                </div>
                <div class="blog-cta blog-cta-button">
                    <a class="button ghost-button" href="html/travel/travelSearch.php">Ver mas</a>
                </div>
            </div>
        </section>
        
        <!--PIE DE PAGINA-->
        <?php require 'html/footer.html'; ?>

    </body>
</html>
      