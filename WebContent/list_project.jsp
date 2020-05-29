<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listando los proyectos</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

<h3 class="p-4">Listado de Proyectos</h3>

<jsp:useBean id="pDao" class="dao.ProyectoDao" scope="request" />

<table class="table">
<tr>
  
  <th style="text-align: center;">Nombre</th>
  <th style="text-align: center;">Resumen</th>
  <th style="text-align: center;">Video</th>
  
</tr>

<c:forEach var ="p" items="${pDao.listar()}">

 <tr>
  <td style="text-align: center;"><c:out value="${p.nombre }"/></td>
  <td style="text-align: center;"><c:out value="${p.resumen }"/></td>
  <td style="text-align: center;"><c:out value="${p.video }"/></td> 
</tr>

</c:forEach>
</table>

</body>
</html>