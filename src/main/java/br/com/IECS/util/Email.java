package br.com.IECS.util;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {

	public static void EnviarEmail(String email, String codigoGerado){
		Properties props = new Properties();
	    /** Par�metros de conex�o com servidor Gmail */
	    props.put("mail.smtp.host", "smtp.gmail.com");
	    props.put("mail.smtp.socketFactory.port", "465");
	    props.put("mail.smtp.socketFactory.class",
	    "javax.net.ssl.SSLSocketFactory");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.port", "465");

	    Session session = Session.getDefaultInstance(props,
	      new javax.mail.Authenticator() {
	           protected PasswordAuthentication getPasswordAuthentication()
	           {
	                 return new PasswordAuthentication("email@gmail.com",
	                 "senha");
	           }
	      });

	    /** Ativa Debug para sess�o */
	    session.setDebug(true);

	    try {

	      Message message = new MimeMessage(session);
	      try {
			message.setFrom( new InternetAddress("email@gmail.com", "ECIS", "UTF8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      //Remetente

	      Address[] toUser = InternetAddress //Destinat�rio(s)
	                 .parse(email);

	      message.setRecipients(Message.RecipientType.TO, toUser);
	      message.setSubject("ECIS - Validação de email");//Assunto
	      message.setText("Olá! \n \n Seu código de validação para acesso ao ECIS é: " + codigoGerado + "\n \n \n Este email foi gerado automaticamente, por favor, não responder. \n \n \n Em caso de dúvidas entrar en contato pelo email: patricia.ifrn@gmail.com \n \n \n Atenciosamente, \n Equipe ECIS \n");
	      /**M�todo para enviar a mensagem criada*/
	      Transport.send(message);

	      System.out.println("Feito!!!");

	     } catch (MessagingException e) {
	        throw new RuntimeException(e);
	    }
	}
	
}
