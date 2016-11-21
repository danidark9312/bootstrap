package com.daniel.gutierrez.servlet;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class BasicFilter
 */
public class BasicFilter implements Filter {

    /**
     * Default constructor. 
     */
    public BasicFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

    	HttpServletRequest httpRequest = (HttpServletRequest) request;
    	String requestURI = httpRequest.getRequestURI();
    	
    	Pattern compile = Pattern.compile(".*(js|css|jpg|jpeg|png|ico).*");
    	Matcher matcher = compile.matcher(requestURI);
    	
    	if(matcher.matches()){
//    		System.out.println("javascript");
//    		System.out.println(requestURI);
    		
    		HttpServletResponse httpResponse = (HttpServletResponse) response;
            httpResponse.setHeader("Cache-Control", "private");
            httpResponse.setDateHeader("Expires", System.currentTimeMillis() + 604800000L); // one week
            httpResponse.setDateHeader("Max-Age", System.currentTimeMillis() + 604800000L);
    		
    	}
        chain.doFilter(request, response);
    }
    

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
