package com.daniel.gutierrez.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daniel.gutierrez.model.Contact;
import com.daniel.gutierrez.model.EmailHelper;

/**
 * Servlet implementation class GenericServlet
 */
public class GenericServlet extends HttpServlet {
	private static final int SENDMAIL = 1;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GenericServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int operation = Integer.parseInt(request.getParameter("operation"));
		switch (operation) {
		case SENDMAIL:
			
			
			
			
			Contact contact = new Contact();
			contact.setName(request.getParameter("nombre"));
			contact.setEmail(request.getParameter("email"));
			String phoneId = request.getParameter("phoneId");
			String phoneText = request.getParameter("phoneText");
			if(!phoneId.equals("") && !phoneText.equals("")){
				contact.setPhone("1+ ("+phoneId+") "+phoneText);
			}
			contact.setSubject(request.getParameter("asunto"));
			contact.setMessage(request.getParameter("mensaje"));
			
			boolean mensajeExito = EmailHelper.getInstance().sendEmail(contact);
			
			if(mensajeExito){
				request.getRequestDispatcher("index.jsp?exito=true").forward(request, response);
			}
			
			
		default:
			break;
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	
	

}
