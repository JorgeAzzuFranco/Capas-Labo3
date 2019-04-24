<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado de su form</title>
</head>
<body>
	<table>
	<thead>
		<tr>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Fecha de Nacimiento</th>
			<th>Carrera</th>
			<th>Experiencia</th>
		</tr>
	</thead>
	<tr>
		<td>${student.name}</td>
		<td>${student.lastName}</td>
		<td>${student.bDate}</td>
		<td>${student.career}</td>
		<td>${student.experience}</td>
	</tr>
	</table>
</body>
</html>