<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/NuevaEmpresa" var="LinkservelentNuevaEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- LinkservelentNuevaEmpresa se uso para eliminar la ruta de /gerenciador/NuevaEmpresa y asi evitar posibles errores en la actualizacion a futuro -->
	<form action="${ LinkservelentNuevaEmpresa }" method="post">
	
		Nombre empresa: <input type="text" name="nombre"/>
		Fecha Abertura: <input type="text" name="fecha"/>
		<input type="submit"/>
	
	</form>
	
</body>
</html>