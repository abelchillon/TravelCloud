<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Política privacidad - TravelCloud</title>
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
        <!-- NavegaciÃ³/Header-->
        <%@include file="headerLogin.jsp" %>
        
       <!-- CONTENIDO --> 
       <section class="travels-section title-content">
            <div class="wishList">
                <div class="title-wishList">
                    <h2>Politica de privacidad</h2>
                </div>
            </div>

            <div class="travelContainer container-content">
                <div class="travel">
                    <div class="travel-info">
                        <h4>PROTECCIӓN DE DATOS</h4>
                         <p class="descrip-content">a) En cumplimiento de la Ley 15/99 LOPD, le informamos que sus datos personales y demás información facilitada mediante el formulario de inscripción, así como la procedente de las transacciones realizadas, será incluida y conservada en un fichero para su tratamiento, propiedad de TravelCloud, mientras no se solicite su cancelación. El tratamiento se destinará a la atención personalizada de nuestro equipo de asesores para ayudarle con la elección de su próximo destino, así como a la promoción de servicios propios y de terceras empresas vinculadas a TravelCloud.  Asimismo, se le informa que sus datos serán puestos a disposición de las empresas para las finalidades indicadas., ESPAÑA tratará estos datos con la máxima confidencialidad siendo el destinatario único y exclusivo de los mismos, y no efectuando cesiones o comunicaciones a terceros al margen de las señaladas por la normativa vigente. El usuario autoriza expresamente a TravelCloud  la remisión, incluso a través de medios electrónicos, de comunicaciones comerciales y ofertas y concursos promocionales. </p>
                        <p class="descrip-content">b) El Usuario podrá ejercer en cualquier momento los derechos de acceso, rectificación, oposición o cancelación dirigiéndose a TravelCloud mediante correo electrónico dirigido a info@travelcloud.es, adjuntando copia de su N.I.F. o documento identificativo sustitutorio. </p>
                        <p class="descrip-content">c) Las respuestas marcadas con * en el formulario de inscripción tienen carácter obligatorio. Su no contestación impedirá que se pueda realizar el registro o envió de mensajes.</p>
                        
                        <h4>CONTRASEёAS</h4>
                        <p class="descrip-content">a) El usuario podrá elegir su propia contraseña en el proceso de registro. Dicha contraseña servirá para el acceso a los servicios prestados por medio del Sitio Web. El usuario deberá mantener bajo su exclusiva responsabilidad la contraseña en la más estricta y absoluta confidencialidad, asumiendo, por tanto, cuantos daños o consecuencias de todo tipo se deriven del quebrantamiento o revelación del secreto. Por razones de seguridad, la contraseña de acceso telemático a los servicios vinculados al Sitio Web podrá ser modificada en todo momento por el usuario. El Usuario se compromete a notificar a TravelCloud de forma inmediata cualquier uso no autorizado de su contraseña, así como el acceso por terceros no autorizados a la misma.</p>
                        
                        <h4>COOKIES</h4>
                        <p class="descrip-content">a) TravelCloud utiliza cookies con el fin de mejorar sus servicios, facilitar la navegación, mantener la seguridad, verificar la identidad del Usuario y facilitar el acceso a las preferencias personales. Las cookies son archivos instalados en el disco duro del ordenador o bien en la memoria del navegador en la carpeta pre-configurada por el sistema operativo del ordenador del Usuario para identificarle.</p>
                        <p class="descrip-content">b) Si el Usuario no desea que se instale en su disco duro una cookie, deberá configurar su programa de navegación por Internet para no recibirlas. Igualmente, el Usuario podrá destruir las cookies libremente. En caso de que el Usuario decida desactivar las cookies, la calidad y rapidez del servicio pueden disminuir e, incluso, perderá el acceso a algunos de los servicios ofrecidos en la Tienda.</p>
                        
                        <h4>LEY APLICABLE Y FUERO</h4>
                        <p class="descrip-content">Las presentes condiciones generales se rigen por la legislación española. Cualquier controversia surgida de la interpretación o ejecución que pudieran surgir en relación con la validez, interpretación, cumplimiento o resolución del presente contrato se someterá a la Jurisdicción y Competencia de los Juzgados y Tribunales de la Ciudad de BARCELONA, con renuncia al fuero que pudiera corresponder al usuario, siempre que la legislación aplicable así lo permita.</p>
                    </div>
                </div>
            </div>
        </section>
 
        <!--PIE DE PAGINA-->
        <%@include file="footer.jsp" %>
    </body>
</html>