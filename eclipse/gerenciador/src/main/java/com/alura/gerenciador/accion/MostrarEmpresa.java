package com.alura.gerenciador.accion;

import java.io.IOException;

import com.alura.gerenciador.modelo.DB;
import com.alura.gerenciador.modelo.Empresa;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MostrarEmpresa implements Accion{
public String ejecutar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);
		
		System.out.println("Eliminando una empresa " + id);
		
		System.out.println(id);
		
		DB db = new DB();
		Empresa emp = db.buscarEmpresaPorId(id);
		
		System.out.println(emp.getNombre());
		
		request.setAttribute("empresa", emp);
		
		return "forward:formModificarEmpresa.jsp";
		
	}
}