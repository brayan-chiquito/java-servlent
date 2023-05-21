<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="LinkEntradaServlet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- LinkservelentNuevaEmpresa se uso para eliminar la ruta de /gerenciador/NuevaEmpresa y asi evitar posibles errores en la actualizacion a futuro -->
	<form action="${ LinkEntradaServlet }" method="post">
	
		Login: <input type="text" name="Login"/>
		contraseña: <input type="password" name="contrasena"/>
		<input type="submit"/>
		<input type="hidden" name="accion" value="Login">
	
	</form>
	
</body>
</html>