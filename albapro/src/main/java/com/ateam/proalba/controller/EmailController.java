package com.ateam.proalba.controller;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/*
 * Handles requests for the application home page.
 */
@Controller
public class EmailController {
	
	@ResponseBody
	@RequestMapping(value = "/email", method = RequestMethod.GET)
	public int mailSender(HttpServletRequest request, ModelMap mo, String mail) {
		//0은 정상
		//-1 = 이메일 값 널
		//-2 = 계정 접근 권한이 없거나 포트가 안열려 있는거임
		if(mail == null) return -1;
	    
		
		// 네이버일 경우 smtp.naver.com 을 입력합니다.
		// Google일 경우 smtp.gmail.com 을 입력합니다.
		String host = "smtp.gmail.com";

		final String username = "아이디"; // 구글 아이디 @gmail.com 빼고
		final String password = "비밀번호"; // 비밀번호
		int port = 465; // 포트번호

		// 메일 내용
		String recipient = mail; // 받는 사람의 메일주소를 입력해주세요.
		String subject = "메일테스트"; // 메일 제목 입력해주세요.
		String Roll = "";	//랜덤값
		for (int i = 0; i < 8; i++) {
			int rndVal = (int) (Math.random() * 62);
			if (rndVal < 10) {
				Roll += rndVal;
			} else if (rndVal > 35) {
				Roll += (char) (rndVal + 61);
			} else {
				Roll += (char) (rndVal + 55);
			}
		}

		String body = "인증번호 : " + Roll; // 메일 내용 입력해주세요.

		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성

		// SMTP 서버 정보 설정
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		// Session 생성
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un = username;
			String pw = password;

			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(un, pw);
			}
		});
		session.setDebug(true); // for debug

		Message mimeMessage = new MimeMessage(session); // MimeMessage 생성
		try {
			mimeMessage.setFrom(new InternetAddress(mail));  // 발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요.
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); // 수신자셋팅 //.TO 외에 .CC(참조)
			mimeMessage.setSubject(subject);// 제목셋팅
			mimeMessage.setText(body); // 내용셋팅
			Transport.send(mimeMessage); // javax.mail.Transport.send() 이용
			// .BCC(숨은참조) 도 있음
		} catch (MessagingException e) {
			e.printStackTrace();
			return -2;
		}
		return 0; 


	}

}
