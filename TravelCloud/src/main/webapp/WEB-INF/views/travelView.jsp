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
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/travelView.css">
        <!--Icono ico-->
        <link rel="shortcut icon" href="../../img/favicon.ico">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <?php require '../headerLogin.html'; ?>
 
        <!-- VISTA VIAJE -->
        <section>
            <div class="title-travel">
                <h2>Nombre del Viaje</h2>
            </div>
            <div class="filters-travel">
                <div>
                    <p>Cataluña</p>
                    <p>Barcelona</p>
                    <p>Pareja</p>
                    <p>Interior</p>
                    <p>Duración</p>
                    <p>Valoración</p>  
                </div>
            </div>
            
            <div class="row info-travel">
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Descripción</p>
                        <p class="descrip">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Lugares i monumentos visitados</p>
                        <p class="descrip">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="descrip-travel">
                        <p class="blog-title">Restaurantes y bares</p>
                        <p class="descrip">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                    </div>
                </div>
            </div>
            
            <div class="imgs-travel">
                <div>
                    <img alt="imagen viaje 1" src="https://picsum.photos/300/300?random=1" />
                </div>
                <div>
                    <img alt="imagen viaje 2" src="https://picsum.photos/300/300?random=2" />
                </div>
                <div>
                    <img alt="imagen viaje 3" src="https://picsum.photos/300/300?random=3" />
                </div>
                <div>
                    <img alt="imagen viaje 4" src="https://picsum.photos/300/300?random=4" />
                </div>
            </div>
            
            <div class="opinions">
                <div class="opinions-button">
                    <a class="button button-blog" href="opiniones.php">VALORAR Y COMENTAR</a>   
                </div>
                <div class="opinions-button">
                    <a class="button button-blog" href="#">AÑADIR A LA LISTA DE DESEOS</a>   
                </div> 
                <div class="opinions-button">
                    <a class="button button-blog" href="travelSearch.php">VOLVER A LA BÚSQUEDA</a>   
                </div> 
            </div>
            
        </section>  
        
        <!-- COMENTARIOS Y VALORACIONES -->
        <section>
            <div class="title-opinions">
                <h3>Comentarios y Valoraciones</h3>    
            </div>
            <div class="row opinion-travel">
                <div class="col-sm-6 opinion">
                    <div class="blog-image">
                        <img src="https://picsum.photos/300/300?random=5"/>
                    </div>
                    <div class="blog-text">
                        <p class="blog-title">Valoración</p>
                        <p class="blog-summary">Comentario: Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                        <p class="blog-user">nomUsuari</p>
                        <p class="blog-user">fechaValoracion</p>
                    </div>
                </div>
            </div>
            <div class="row opinion-travel">
                <div class="col-sm-6 opinion">
                    <div class="blog-image">
                        <img src="https://picsum.photos/300/300?random=6"/>
                    </div>
                    <div class="blog-text">
                        <p class="blog-title">Valoración</p>
                        <p class="blog-summary">Comentario: Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis beatae provident obcaecati quos culpa cum tenetur similique, ex accusantium veniam! quos culpa cum tenetur similique, ex accusantium veniam!</p>
                        <p class="blog-user">nomUsuari</p>
                        <p class="blog-user">fechaValoracion</p>
                    </div>
                </div>
            </div> 
        </section>
        
        
        <!-- Footer-->
        <?php require '../footer.html'; ?>

    </body>
</html>