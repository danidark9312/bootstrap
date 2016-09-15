package com.daniel.gutierrez.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daniel.gutierrez.model.Option;

/**
 * Servlet implementation class ServletRedirect
 */
public class ServletRedirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletRedirect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String option = request.getRequestURI();
		String resources[] = option.split("/");
		String optionRequested = resources[resources.length-1];
		
		Option optionToGo = Option.getOptionByString(optionRequested);
		
		String baseUrl = request.getContextPath();
		if(optionToGo!=null){
			optionToGo.redirectToOption(baseUrl , response);
		}else{
			response.sendRedirect(baseUrl);
		}

		
	}

	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	

}
