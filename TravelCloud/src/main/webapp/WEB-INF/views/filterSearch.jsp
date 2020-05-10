<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
        <script src="/resources/js/filterSearch.js"></script>
    </head>
    <body>
               
        <!-- CREACION APARTADO BUSQUEDA DESTINO-->
        <section>
            <div class="hero"> 
                <div class="content">
                
                    <div class="hero-inner">
                        <h2>Busca tu destino</h2>
                    </div>
                    
                    <!--FILTRO DE DESTINOS-->
                    <form:form name="busquedaDestino" method="post" action="searchViatge" commandName="viatge">
                        <div class="forms">
                        	<form:select path="comunitat" name="comunitat" class="selectpicker">
                        		<form:option value="" label="Comunidad autónoma..."/>
	                        	<form:options items="${viatges}" itemValue="id" itemLabel="comunitat"/>                    		
                        	</form:select>
							<form:select path="provincia" name="provincia" class="selectpicker">	
							   <option value="" selected disabled>Provincia...</option>
							   <form:options items="${viatges}" itemValue="id" itemLabel="provincia" />
							</form:select>
							<form:select path="localitat" name="localitat" class="selectpicker">	
							   <option value="" selected disabled>Localidad...</option>
							   <form:options items="${viatges}" itemValue="id" itemLabel="localitat" />
							</form:select>							
                        </div>
                        <div class="forms">
                        	<form:select path="tipus" name="tipus" class="selectpicker">																
							   <option value="" selected disabled>Tipo viaje...</option>
							   <form:options items="${viatges}" itemValue="id" itemLabel="tipus" />
							</form:select>
                        	<form:select path="entorn" name="entorn" class="selectpicker">
							   <option value="" selected disabled >Entorno...</option>
                        		<form:options items="${viatges}" itemValue="id" itemLabel="entorn"/>
                        	</form:select>
							<form:select path="durada" name="durada" class="selectpicker">																
							   <option value="" selected disabled >Duración...</option>
							   <form:options items="${viatges}" itemValue="id" itemLabel="durada" />
							</form:select>
							<form:select path="puntuacio" name="puntuacio" class="selectpicker">																
							   <option value="" selected disabled >Valoración...</option>
							   <form:options items="${viatges}" itemValue="id" itemLabel="puntuacio" />
							</form:select>
                        </div>
                        <div class="button-search">
                            <input type="submit" class="button log-button" value="Buscar" />
                        </div>    
                    </form:form>
                </div>
            </div>
        </section>
        

    </body>

</html>


      