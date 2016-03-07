package com.daniel.gutierrez.model;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.daniel.gutierrez.util.PropertieManager;

public class EmailHelper {
	
	private static EmailHelper emailHelper;
	
	public static EmailHelper getInstance(){
		if(emailHelper == null)
			emailHelper = new EmailHelper();
		return emailHelper;
	}
	
	public boolean sendEmail(Contact contact){
		boolean isExito = true;
		
		final String fromUser = PropertieManager.getValue("emailFromUser");
		final String frompassword = PropertieManager.getValue("emailFromPass");
		
		 // Get system properties
	      Properties properties = System.getProperties();

	  	properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
	      // Get the default Session object.
	      Session session = Session.getInstance(properties,
	    		  new javax.mail.Authenticator() {
	    			protected PasswordAuthentication getPasswordAuthentication() {
	    				return new PasswordAuthentication(fromUser, frompassword);
	    			}
	    		  });
	      
	      
	    	// Create a default MimeMessage object.
	          MimeMessage message = new MimeMessage(session);
		try {
			// Set From: header field of the header.
			message.setFrom(new InternetAddress(fromUser));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(
					"danielgm9312@hotmail.com"));

			// Set Subject: header field
			message.setSubject(contact.getSubject());

			// Now set the actual message

			// Send message
			//Transport.send(message);
			
			Transport transport = session.getTransport("smtp");
			transport.send(message);
			System.out.println("Sent message successfully....");
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		
		return isExito;
	}

}


