<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<footer id="footer">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    <div class="container">
        <div class="footer-grid">
            <div class="footer-group">
                <div class="footer-heading">
                    <h4>Perfil</h4>
                </div>
                <div class="footer-links">
                    <ul>
                        <li> <a href="${contextPath}/travelPush">Subir viaje</a></li>
                        <li> <a href="${contextPath}/wishList">Lista de deseos</a></li>
                        <li> <a href="${contextPath}/userMessages">Mensajes</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-group">
                <div class="footer-heading">
                    <h4>Información</h4>
                </div>
                <div class="footer-links">
                    <ul>
                        <li> <a href="${contextPath}/sobrenosotros">Sobre nosotros</a></li>
                        <li> <a href="${contextPath}/condicionesUsoPagina">Condiciones Sitio Web</a></li>
                        <li> <a href="${contextPath}/politicaPrivacidad">Política privacidad</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-group">
                <div class="footer-heading">
                    <h4>Viajes</h4>
                </div>
                <div class="footer-links">
                    <ul>
                        <li> <a href="${contextPath}/travelSearch">Buscar viaje</a></li>
                        <li> <a href="${contextPath}/comunidades">Comunidades Autónomas</a></li>
                        <li> <a href="${contextPath}/condicionesPublicacion">Condiciones publicación viajes</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <a class="btn btn-social-icon btn-facebook">
        <span class="fab fa-facebook" style="font-size:36px; color:white"></span>
    </a>
    <a class="btn btn-social-icon btn-instagram">
        <span class="fab fa-instagram" style="font-size:36px; color:white"></span>
    </a>
    <a class="btn btn-social-icon btn-twitter">
        <span class="fab fa-twitter" style="font-size:36px; color:white"></span>
    </a>
</footer>