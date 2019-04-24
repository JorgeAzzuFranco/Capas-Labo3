<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hola mundo</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/formData" method="post">
		<label>Nombre:</label> <input type="text" name="name"/><br>
		<label>Apellido</label> <input type="text" name="lname"/><br>
		<label>Fecha de Nacimiento:</label> <input type="text" name="bdate"/><br>
		<label>Carrera:</label> <input type="text" name="career"/><br>
		<label>Experiencia:</label> <input type="text" name="exp"/><br>
		<br>
		<input type="submit" value="Enviar" />
	</form>
</body>
</html>