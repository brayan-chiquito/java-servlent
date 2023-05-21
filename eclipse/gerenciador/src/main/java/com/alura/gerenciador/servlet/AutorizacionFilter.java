package com.alura.gerenciador.servlet;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//@WebFilter(urlPatterns = "/entrada")
public class AutorizacionFilter implements Filter {
	
	public void doFilter(ServletRequest servletrequest, ServletResponse servletresponse, FilterChain chain) throws IOException, ServletException {
		
		System.out.println("esto es autorizacion");
		
		HttpServletRequest request = (HttpServletRequest) servletrequest;
		HttpServletResponse response = (HttpServletResponse) servletresponse;
		String paramAccion = request.getParameter("accion");
		
		HttpSession session = request.getSession();
		
		Boolean esUsuarioNoLogado = (session.getAttribute("loginUsuario")==null);
		Boolean esAccionProtegida = !(paramAccion.equals("Login")||paramAccion.equals("LoginForm"));
		
		if(esUsuarioNoLogado && esAccionProtegida) {
			response.sendRedirect("entrada?accion=LoginForm");
			return;
		}
		
		chain.doFilter(request, response);
	}


}
