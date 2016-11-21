package com.daniel.gutierrez.model;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

public enum Option {
	AMARRES("amarres"),
	RITUALES("rituales");
	
	String option;
	
	
	Option(String option){
		this.option =  option; 
	}
	
	boolean equalsTo(String option2){
		return option2.equals(option);
	}
	
	public static Option getOptionByString(String strOption){
		Option option = null;
		
		if(AMARRES.equalsTo(strOption))
			option = AMARRES;	
		
		return option;
	}
	
	public void redirectToOption(String url,HttpServletResponse httpServletResponse) throws IOException{
		httpServletResponse.sendRedirect(url+"?option="+this.option);
	}
	
	@Override
	public String toString() {
		return this.option;
	}
}
