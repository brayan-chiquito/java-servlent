<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.alura.gerenciador.servlet.Empresa"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>

	<c:if test="${ not empty empresa }">
			empresa ${ empresa } registrada! <br />
	</c:if>

	Lista de empresas: <br />
	
	
	<ul>
	<!--  $ se uso para simplificar empresas el la lista que llega desde la requuest-->
	<!-- empresa se uso para darle nombre a cada elemento que esta dentro de la lista -->
		<c:forEach items="${empresas}" var="empresa">
			<!-- se usa para darle formato -->
			
			<!-- empresa.nombre es para simplificar el getNombre -->
			<li>${ empresa.nombre } - <fmt:formatDate value="${ empresa.fechaAbertura }" pattern="dd/MM/yyyy"/>
			
			<a href="/gerenciador/mostrarEmpresa?id=${ empresa.id }">modificar</a>
			<a href="/gerenciador/eliminarEmpresa?id=${ empresa.id }">eliminar</a>
			</li>
		</c:forEach>	
	
	</ul>
	
	
		
</body>
</html>