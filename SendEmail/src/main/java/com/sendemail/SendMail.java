package com.sendemail;

import java.io.File;
import java.io.IOException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.*;
import java.awt.*;
import java.awt.event.*;
import java.applet.*;

public class SendMail extends Frame implements ActionListener {

	public static void main(String[] args) {

		// Recipient's email ID needs to be mentioned.
		System.out.print("Please enter your mail ID : ");
		Scanner sc = new Scanner(System.in);
		String to = sc.nextLine();		

		// Sender's email ID needs to be mentioned
		String from = "edifakemail0@gmail.com";

		// Assuming you are sending email from through gmails, smtp
		String host = "smtp.gmail.com";

		// Get system properties
		Properties properties = System.getProperties();

		// Setup mail server
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");

		// Get the Session object.// and pass
		Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

			protected PasswordAuthentication getPasswordAuthentication() {

				return new PasswordAuthentication("edifakemail0@gmail.com", "gidijala.123");

			}

		});
		// session.setDebug(true);
		try {
			// Create a default MimeMessage object.
			MimeMessage message = new MimeMessage(session);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress(from));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// Set Subject: header field
			message.setSubject("Message from Bhargava!");

			Multipart multipart = new MimeMultipart();

			MimeBodyPart attachmentPart = new MimeBodyPart();

			MimeBodyPart textPart = new MimeBodyPart();

			try {
				File f = new File("C:\\Users\\bhargavarg\\Downloads\\captain_america_4k.jpg");
				attachmentPart.attachFile(f);
				textPart.setText("Hey how are you..Hope everything is fine"+"Im bhargava from spinebiz.You have won a prize money of 10,00,000/- contact me immediately\n Open below image for surprize..!");
				multipart.addBodyPart(textPart);
				multipart.addBodyPart(attachmentPart);

			} catch (IOException e) {
				e.printStackTrace();
			}

			message.setContent(multipart);
			System.out.println("Sending...");
			// Send message
			Transport.send(message);
			System.out.println("Message Sent Successfully....");
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}

	}

}
