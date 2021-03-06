package com.binbang.member.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberEmailConfirmServlet
 */

@WebServlet("/member/memberEmailConfirm")
public class MemberEmailConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEmailConfirmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("email");
		System.out.println("servlet :"+email);
		
		
		//email 인증
		String host="smtp.naver.com";
		String user="tnrud2668@naver.com";
		String password="spdlqj7547";
		
		Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", 465);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.starttls.enable","true");
        props.put("mail.smtp.ssl.trust", "smtp.naver.com"); 
		
        
        StringBuffer temp= new StringBuffer();
        Random rnd = new Random();
        
        for(int i=0;i<10;i++) {
        	int r = rnd.nextInt(3);
        	switch(r) {
        	case 0:
        		temp.append((char) ((int) (rnd.nextInt(26)) + 97 ));
        		break;
        	case 1:
        		temp.append((char) ((int) (rnd.nextInt(26)) + 65));
        		break;
        	case 2:
        		temp.append((rnd.nextInt(10)));
        		break;
        	}
        }
        String AuthenticationKey =temp.toString();
        System.out.println(AuthenticationKey);
        
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
        	protected PasswordAuthentication getPasswordAuthentication() {
        		return new PasswordAuthentication(user,password);
        	}
        });
        
        
        try {
        	 MimeMessage msg = new MimeMessage(session);
        	 msg.setFrom(new InternetAddress(user, "BINBANG"));
        	 msg.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
        
        	 msg.setSubject("빈방 인증 메일입니다.");
        	 msg.setText("안녕하세요 빈방입니다. 인증 번호는 "+temp+"입니다.");
        	 Transport.send(msg);
        	 System.out.println("이메일 전송");
        }catch (Exception e) {
            e.printStackTrace();
        }

        HttpSession saveKey = request.getSession();
        saveKey.setAttribute("AuthenticationKey", AuthenticationKey);
        
        HttpSession saveId = request.getSession();
        saveId.setAttribute("email", email);
   
   
    
}
		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
