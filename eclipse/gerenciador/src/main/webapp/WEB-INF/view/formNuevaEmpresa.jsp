<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="LinkEntradaServlet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="logout-parcial.jsp"></c:import>
<!-- LinkservelentNuevaEmpresa se uso para eliminar la ruta de /gerenciador/NuevaEmpresa y asi evitar posibles errores en la actualizacion a futuro -->
	<form action="${ LinkEntradaServlet }" method="post">
	
		Nombre empresa: <input type="text" name="nombre"/>
		Fecha Abertura: <input type="text" name="fecha"/>
		<input type="submit"/>
		<input type="hidden" name="accion" value="NuevaEmpresa">
	
	</form>
	
</body>
</html>