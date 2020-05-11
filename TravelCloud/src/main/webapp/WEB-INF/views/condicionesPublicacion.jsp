<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Condicones publicación - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/css/wishList.css" />">
        <!--Icono ico-->
        <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico" />">
    </head>
    
    <body>
        <!-- NavegaciÃƒÂ³/Header-->
        <%@include file="headerLogin.jsp" %>
        
       <!-- CONTENIDO --> 
       <section class="travels-section title-content">
            <div class="wishList">
                <div class="title-wishList">
                    <h2>Normas de conducta para la publicación en TravelCloud</h2>
                </div>
            </div>

            <div class="travelContainer container-content">
                <div class="travel">
                    <div class="travel-info">
                         <p class="descrip-content">Tanto la participación en el Sitio Web como la creación y publicación de contenidos, ya sean textos, fotografías y/o videos que se aporten a las distintas secciones del Sitio Web, debe ajustarse a las siguientes normas de conducta:</p>
                         <p class="descrip-content">- En beneficio de todos los participantes de la comunidad de viajeros de TravelCloud, procura utilizar un lenguaje apropiado y observa una conducta respetuosa tanto respecto a otros usuarios del Sitio Web, como a terceros no registrados, sean personas físicas o jurídicas.</p>
                         <p class="descrip-content">- Los temas principales que conforman el contenido del Sitio Web son el turismo, los viajes y las experiencias que podemos compartir en esta red social. Por lo tanto, abstente de comentar otro tipo de temas que no tengan una relación directa con el contenido fundamental de nuestra comunidad. En especial, no están permitidos aquellos contenidos que inciten a la violencia, racismo, sexismo o guarden relación con motivos políticos y/o religiosos y en general cualesquiera otros temas que creen malestar en la comunidad.</p>
                         <p class="descrip-content">- Las valoraciones que el usuario decida incorporar al sitio deben ser acordes a los lugares o situaciones que ellos mismos citen, y que fundamentan su incorporación.</p>
                         <p class="descrip-content">- El spam y contenidos publicitarios bajo forma de opinión, están prohibidos en todas sus formas.</p>
                         <p class="descrip-content">- Los enlaces que incorporen los usuarios a sus cuentas personales, se regirán por los requisitos recogidos en los presentes términos.</p>
                         <p class="descrip-content">- Los Usuarios se comprometen a no incorporar, publicar, transmitir, compartir, almacenar o facilitar en TravelCloud datos de carácter personal de cualquier tercero, incluyendo imágenes, direcciones, números de teléfono, direcciones de correo electrónico, números de la Seguridad Social o números de tarjetas de crédito.</p>
                         <p class="descrip-content">- Los Usuarios no tienen permitido cargar, publicar, transmitir, compartir o facilitar material que contenga virus informáticos o cualquier otro código, archivo o programa informático diseñado para interrumpir, destruir o limitar la funcionalidad de cualquier software o hardware o equipo de telecomunicaciones</p>
                         <p class="descrip-content">- Los usuarios son los únicos y exclusivos responsables por los contenidos de cualquier clase, especialmente, textos, videos y fotografías, que incorporen a TravelCloud.</p>
                         <p class="descrip-content">- Los Usuarios además se obligan a no hacer uso de ninguna máquina, algoritmo u otra función automática para generar accesos a páginas o crear contenidos que alteren los propios de TravelCloud.</p>
                         <p class="descrip-content">TravelCloud se reserva el derecho de no publicar aquellos contenidos que resulten contrarios a las presentes normas, así como retirar todo artículo o comentario publicado que no se ajuste a las mismas, sin necesidad de notificación de ninguna clase. TravelCloud se reserva el derecho de cancelar el registro y entrada a la comunidad de viajeros en la medida que determinados usuarios reincidan en este tipo de conductas.</p>
                         <p class="descrip-content">El Usuario se compromete a respetar en todo momento, la línea editorial de TravelCloud.</p>
                    </div>
                </div>
            </div>
        </section>
 
        <!--PIE DE PAGINA-->
        <%@include file="footer.jsp" %>
    </body>
</html>