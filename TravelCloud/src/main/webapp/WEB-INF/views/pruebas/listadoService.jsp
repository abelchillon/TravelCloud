<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${users}" var="u">
   		<row>EMAIL: ${u.email}</row>
   		<row>USUARI: ${u.nomUsuari}</row> 
	</c:forEach>	
</body>
</html>