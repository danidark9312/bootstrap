package com.daniel.gutierrez.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daniel.gutierrez.util.PropertieManager;

/**
 * Servlet implementation class InitiServlet
 */
public class InitiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InitiServlet() {
        super();
    }
    
    //TODO Implementar logs
    
    @Override
    public void init(ServletConfig config) throws ServletException{
    	super.init(config);
		String title = PropertieManager.getValue("title");
		config.getServletContext().setAttribute("title", title);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
