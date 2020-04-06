<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<header>
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>                        
                        </button> 
                        <!--logotipo-->
                        <a class="navbar-brand logo" href="/TravelCloud/indexTravelCloud"></a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="/TravelCloud/travelSearch" class="glyphicon glyphicon-search"></a>
                            </li>
                            
                            <c:choose>
                                <c:when test="${tipusUser == 'USER_LOGIN'}">
                                    <li class="dropdown">
                                        <a class="dropdown-toggle glyphicon glyphicon-user" data-toggle="dropdown" href="user/userPage.html" id="themes"><span class="caret"></span></a>
                                        <ul class="dropdown-menu" aria-labelledby="themes">
                                            <li>
                                                <a href="/TravelCloud/userPage">Perfil usuario</a>
                                            </li>
                                            <c:choose>
                                                <c:when test="${tipusUsuari == 'USER'}">
                                                    <li><a href="/TravelCloud/travelPush">Publicar viaje</a></li>
                                                    <li><a href="/TravelCloud/wishList">Lista de deseos</a></li>
                                                </c:when>
                                                <c:when test="${tipusUsuari == 'ADMIN'}">
                                                    <li><a href="">Gestión usuarios</a></li>
                                                    <li><a href="">Gestión viajes</a></li>
                                                </c:when>                                
                                            </c:choose> 
                                            <li><a href="/TravelCloud/userMessages">Mensajes</a></li>
                                            <li><a href="">Cerrar Sesión</a></li>
                                        </ul>  
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li>
                                        <a href="/TravelCloud/userRegister"> Registrarse</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="/TravelCloud//userLogin" id="themes">Iniciar Sesión</a>
                                    </li>
                                </c:otherwise> 
                            </c:choose>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

