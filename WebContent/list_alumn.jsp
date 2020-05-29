<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listando Alumnos</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

<h3 class="p-4">Listado de Alumnos</h3>

<jsp:useBean id="aDao" class="dao.AlumnoDao" scope="request" />

<table class="table">
<tr>
  
  <th style="text-align: center;">Codigo</th>
  <th style="text-align: center;">Nombre</th>
  <th style="text-align: center;">Email</th>
  
  
</tr>

<c:forEach var ="a" items="${aDao.listar()}">

 <tr>
  <td><c:out value="${a.codigo }"/></td>
  <td><c:out value="${a.nombre }"/></td>
  <td><c:out value="${a.email }"/></td> 
</tr>

</c:forEach>
</table>
</body>
</html>