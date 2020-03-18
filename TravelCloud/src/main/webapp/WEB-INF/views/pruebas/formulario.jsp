<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="addUsuari" modelAttribute="usuari" method="post">
		<p><form:input path="idUSUARI"/>
		<p><form:input path="NomUsuari"/>	
		<p><form:input path="Contrasenya"/>
		<p><form:input path="email"/>
		<p><form:input path="Telefon"/>
		<p><form:input path="Descripcio"/>
<%-- 		<p><form:button name="Enviar" value="enviar"/>	 --%>
<%-- 		<p><input type="text" placeholder="Nombre de usuari" field="${nomUsuari}"/> --%>
<%-- 		<p><input type="text" placeholder="Email" field="*${email}"/> --%>
		<p><input type="submit" value="enviar"/>
	</form:form>
</body>
</html>