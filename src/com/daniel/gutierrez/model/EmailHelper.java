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
	
	public boolean sendEmail(Contact contact) {
		boolean isExito = true;
		final String fromUser = PropertieManager.getValue("emailFromUser");
		final String frompassword = PropertieManager.getValue("emailFromPass");

		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");

		Session session = Session.getInstance(properties, new javax.mail.Authenticator(){

			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(fromUser, frompassword);
			}
		});
		// session.setDebug(true);

		MimeMessage message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(fromUser));
			message.addRecipients(Message.RecipientType.TO, 
					new InternetAddress[]{new InternetAddress("danielgm9312@hotmail.com"),
					 new InternetAddress("Maestromiguel77@gmail.com")
					}
			);
			message.setSubject(contact.getSubject());
			message.setContent(getMessageBody(contact), "text/plain");
			
			System.out.println(getMessageBody(contact));
			
			Transport.send(message);

			System.out.println("Sent message successfully....");
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		return isExito;
	}
	
	private String getMessageBody(Contact contact){
		StringBuilder sb = new StringBuilder();
		sb.append("La persona "+contact.getName()+" ha enviado el siguiente mensaje: \n\n" );
		sb.append(contact.getMessage());
		sb.append("\n");
		sb.append("\n");
		sb.append("Datos del remitente");
		sb.append("\n");
		sb.append("Émail: "+contact.getEmail());
		
		if(contact.getPhone() != null && !contact.getPhone().trim().equals("")){
			sb.append("\n");
			sb.append("Télefono: "+contact.getPhone());
		}
		
		return sb.toString();
	}
	
	

}


