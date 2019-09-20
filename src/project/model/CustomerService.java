package project.model;

import java.sql.ResultSet;
import java.util.*;

import javax.mail.*;
import javax.mail.internet.*;

import project.db.*;

public class CustomerService {

	public static int doLogin(Student c) 
	{
		int status = 0;
		String pwd = CustomerDao.getPassword(c);
		if(pwd.equals(c.getPassword()))
		{
			status=1;
		}
		else 
		{
			status=-1;
		}
		return status;
	}

	public static int doComplain(ComplainBox c) 
	{
		int status = CustomerDao.complainRegister(c);

		return status;
	}

	public static ResultSet complains() 
	{
		ResultSet rs = CustomerDao.getComplains();
		return rs;
	}
	
	public static void sendPassword(Student u) 
	{

	    String to = u.getEmail();
	    String subject = "Password Sent";
	    String message = "Hello Dear , Your Password is : '" + u.getPassword()+"'\n For your id "+u.getId();

	    String from = "raj.pruthwi.nayak@gmail.com";
	    final String password = "monjassraj";
	    try
	    {
	      Properties props = new Properties();
	      props.put("mail.smtp.host", "smtp.gmail.com");
	      props.put("mail.smtp.socketFactory.port", "465");
	      props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.port", "465");

	      Authenticator auth = new Authenticator() {
	        public PasswordAuthentication getPasswordAuthentication() 
	        {
	          return new PasswordAuthentication(from, password);
	        }
	      };
	      
	      
	      Session session = Session.getInstance(props, auth);

	      MimeMessage msg = new MimeMessage(session);
	      msg.setFrom(new InternetAddress(from));
	      msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	      msg.setSubject(subject);
	      msg.setText(message);

	      Transport.send(msg);
	      System.out.println("Message delivered successfully , Check your mail ...........");
	    }
	    catch (MessagingException e)
	    {
	      e.printStackTrace();
	    }
	}
	
}
