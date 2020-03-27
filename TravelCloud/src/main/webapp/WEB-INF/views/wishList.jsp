<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Lista de deseos - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/wishList.css">
        <!--Icono ico-->
        <link rel="shortcut icon" href="../img/favicon.ico">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <%@include file="headerLogin.jsp" %>
        
        <!-- Contacta con asesor-->
        <section class="contactarAsesor">
            <div class="hero"> 
                <div class="content">
                    <div class="hero-inner">
                        <h2>¿Necesitas ayuda con tu lista de deseos? Contacta con nuestro asesor</h2>
                    </div>
                </div>
                <div class="asesor">
                    <a class="button button-asesor" href="contactAsesor.php">CONTACTA CON NUESTRO ASESOR</a>   
                </div>
            </div>   
        </section>
        
        <!-- LISTA DE DESEOS -->
        <section class="travels-section">
            <div class="wishList">
                <div class="title-wishList">
                    <h2>Lista de deseos</h2>
                </div>
            </div>
            
            <div class="travelContainer">
                <div class="travel-img">
                    <img alt="imagenViage" src="https://picsum.photos/300/300?random=1" />
                </div>
                <div class="travel">
                    <div class="travel-info">
                        <p class="blog-title">NomCiutat</p>
                        <p class="descrip-travel">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                            <p class="blog-user">FechaViaje</p>
                            <p class="blog-user">Valoracions</p>
                        
                        </div>
                        <div class="col-sm-6">
                            <a class="button button-blog" href="travel/travelView.php">Ver viaje</a>  
                            <a class="button button-blog" href="#">Elimintar de la lista</a>  
                        </div>
                    </div>
                </div>
            </div>
            <div class="travelContainer">
                <div class="travel-img">
                    <img alt="imagenViage" src="https://picsum.photos/300/300?random=2" />
                </div>
                <div class="travel">
                    <div class="travel-info">
                        <p class="blog-title">NomCiutat</p>
                        <p class="descrip-travel">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                            <p class="blog-user">FechaViaje</p>
                            <p class="blog-user">Valoracions</p>
                        
                        </div>
                        <div class="col-sm-6">
                            <a class="button button-blog" href="travel/travelView.php">Ver viaje</a>  
                            <a class="button button-blog" href="#">Elimintar de la lista</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="travelContainer">
                <div class="travel-img">
                    <img alt="imagenViage" src="https://picsum.photos/300/300?random=3" />
                </div>
                <div class="travel">
                    <div class="travel-info">
                        <p class="blog-title">NomCiutat</p>
                        <p class="descrip-travel">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                            <p class="blog-user">FechaViaje</p>
                            <p class="blog-user">Valoracions</p>
                        
                        </div>
                        <div class="col-sm-6">
                            <a class="button button-blog" href="travel/travelView.php">Ver viaje</a>  
                            <a class="button button-blog" href="#">Elimintar de la lista</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Footer-->
        <%@include file="footer.jsp" %>
        
    </body>
</html>