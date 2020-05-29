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
  <th>ID</th>
  <th style="text-align: center;">Codigo</th>
  <th style="text-align: center;">Nombre</th>
  <th style="text-align: center;">Email</th>
  <th style="text-align: center;">Operacion</th>
  
  
</tr>

<c:forEach var ="m" items="${aDao.listar()}">

 <tr>
  <form action="delete_alumn" method="post">
  <td><input type="text"  style="border: 0;" id = "id" name="id" value =<c:out value="${m.id }"/>></td>
  <td><c:out value="${m.codigo }"/></td>
  <td><c:out value="${m.nombre }"/></td>
  <td><c:out value="${m.email }"/></td>
   <td><button class="btn btn-primary">Delete Alumn</button></td>
   </form>
   
</tr>

</c:forEach>
</table>
</body>
</html>