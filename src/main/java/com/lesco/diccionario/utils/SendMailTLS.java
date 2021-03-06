/**
 * 
 */
package com.lesco.diccionario.utils;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;

import com.lesco.diccionario.pojo.ContactForm;

/**
 * Email sender class
 * 
 * @author Mario Alonso Carmona Dinarte
 * @email monacar89@hotmail.com
 * @since 2016
 *
 */
public class SendMailTLS {
	
	//Log4J class logger instance
	private static final Logger logger = Logger.getLogger(SendMailTLS.class);
	
	private static final String username = "diccionariolesco@gmail.com";
	private static final String password = "diccionario";
	
	/**
	 * Send email functionality. This one is used for the contact functionality
	 * 
	 * @param contactForm
	 * @return
	 */
	public String sendMail(ContactForm contactForm) {
		
		logger.debug("SendMailTLS - sendMail() - Start");

		Properties props = new Properties();
		initializeMailProperties(props);
		
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
		/*
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("diccionariolesco@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("diccionariolesco@gmail.com"));
			message.setSubject(contactForm.getContactSubject());
			message.setText(" From: " + contactForm.getContactName()
				+ "\n\n Email: "+ contactForm.getContactEmail()
				+ "\n\n Message: " + contactForm.getContactMessage());

			Transport.send(message);
		} catch (MessagingException e) {
			logger.debug("SendMailTLS - sendMail() - Error: ");
		}*/
		
		logger.debug("SendMailTLS - sendMail() - End");
		
		return "success";
	}
	
	/**
	 *  Send email for the recovery password functionality
	 * 
	 * @param contactForm
	 * @param newPassword
	 * @return
	 */
	public String sendPasswordRecoveryMail(ContactForm contactForm, String newPassword) {
		
		logger.debug("SendMailTLS - sendPasswordRecoveryMail() - Start");

		Properties props = new Properties();
		initializeMailProperties(props);
		
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
/*
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("diccionariolesco@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(contactForm.getContactEmail()));
			message.setSubject(contactForm.getContactSubject());
			message.setText(" Hola " + contactForm.getContactName()
				+ "\n\n Su nueva contraseņa es:: "+ newPassword
				+ "\n\n Atentamente, el equipo del diccionario de LESCO");

			Transport.send(message);
		} catch (MessagingException e) {
			logger.debug("SendMailTLS - sendPasswordRecoveryMail() - Error: ", e);
		}*/
		
		logger.debug("SendMailTLS - sendPasswordRecoveryMail() - End");
		
		return "success";
	}
	
	/**
	 * Sets the mail sender properties
	 * @param props
	 */
	private void initializeMailProperties(Properties props){
		
		logger.debug("SendMailTLS - initializeMailProperties() - Start");
		
		//Email provider properties
		props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		
		logger.debug("SendMailTLS - initializeMailProperties() - End");
	}
}
