<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="logout-parcial.jsp"></c:import>
<!--uso de condicional if  -->
		<c:if test="${ not empty empresa }">
			empresa ${ empresa } registrada!
		</c:if>
		<c:if test="${ empty empresa }">
			Ninguna empresa registrada!
		</c:if>
</body>
</html>

