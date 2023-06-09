package com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/hola")   //mapeamiento
public class HolaMundoServlet extends HttpServlet{
	
	public HolaMundoServlet() {
		System.out.println("Creando hola mundo servlet");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("Hola mundo! felicitaciones por crear tu primer servlet");
		out.println("</body>");
		out.println("</html>");
		
		System.out.println("Se ejecuto");
		
	}
	
}
