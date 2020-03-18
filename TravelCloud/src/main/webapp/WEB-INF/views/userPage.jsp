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
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/userPage.css">
        <!--Icono ico-->
        <link rel="shortcut icon" href="../../img/favicon.ico">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <?php include '../headerLogin.html'; ?>
        
        <!-- FOTO USUARIO -->
        <section id="userProfile">
            <div class="container-photo">
                <div class="imgUser">
                    <img src="https://picsum.photos/200/300?random=1" />
                </div>
                <div class="infoUser">
                    <p class="blog-title">NomUsuari</p>
                    <p class="blog-user">Numero de viages realizados: </p>
                </div>
            </div>
        </section>

        <!-- BOTONES GESTION USUARIO -->
        <section id="userButtons">
            <div class="user-buttons">
                <a class="button button-user" href="userUpdate.php">Editar Perfil</a>
                <a class="button button-user" href="../travel/travelPush.php">Subir Viaje</a>
                <a class="button button-user" href="../wishList.php">Lista de deseos</a>
                <a class="button button-user" href="userMessages.php">Mensajes</a>
            </div>
        </section>
        
        <!-- VIAJES USUARIO -->
        <section id="travels-user">
            <div class="travUs">
                <h3>Mis Viajes</h3>
            </div>
            
            <div class="container-viaje">
                <div class="img-viaje">
                    <img src="https://unsplash.it/600/300?image=122"/>
                </div>
                <div class="content-viaje">
                    <p class="blog-title">NomCiutat</p>
                    <p class="blog-user">FechaViage</p>
                    <p class="blog-user">Valoraciones: </p>
                    <p class="blog-user">Comentarios: </p>
                    <a class="button button-blog" href="../travel/travelView.html">Ver</a>
                    <a class="button button-blog" href="#">Editar</a>
                    <a class="button button-blog" href="#">Borrar</a>
                </div>
            </div>
            <div class="container-viaje">
                <div class="img-viaje">
                    <img src="https://unsplash.it/600/300?image=350"/>
                </div>
                <div class="content-viaje">
                    <p class="blog-title">NomCiutat</p>
                    <p class="blog-user">FechaViage</p>
                    <p class="blog-user">Valoraciones: </p>
                    <p class="blog-user">Comentarios: </p>
                    <a class="button button-blog" href="../travel/travelView.html">Ver</a>
                    <a class="button button-blog" href="#">Editar</a>
                    <a class="button button-blog" href="#">Borrar</a>
                </div>
            </div>   
            <div class="container-viaje">
                <div class="img-viaje">
                    <img src="https://unsplash.it/600/300?image=477"/>
                </div>
                <div class="content-viaje">
                    <p class="blog-title">NomCiutat</p>
                    <p class="blog-user">FechaViage</p>
                    <p class="blog-user">Valoraciones: </p>
                    <p class="blog-user">Comentarios: </p>
                    <a class="button button-blog" href="../travel/travelView.html">Ver</a>
                    <a class="button button-blog" href="#">Editar</a>
                    <a class="button button-blog" href="#">Borrar</a>
                </div>
            </div>    
            <div class="container-viaje">
                <div class="img-viaje">
                    <img src="https://unsplash.it/600/300?image=352"/>
                </div>
                <div class="content-viaje">
                    <p class="blog-title">NomCiutat</p>
                    <p class="blog-user">FechaViage</p>
                    <p class="blog-user">Valoraciones: </p>
                    <p class="blog-user">Comentarios: </p>
                    <a class="button button-blog" href="../travel/travelView.html">Ver</a>
                    <a class="button button-blog" href="#">Editar</a>
                    <a class="button button-blog" href="#">Borrar</a>
                </div>
            </div>  
        </section>

        <!--PIE DE PAGINA-->
        <?php require '../footer.html'; ?>
      
    </body>
</html>