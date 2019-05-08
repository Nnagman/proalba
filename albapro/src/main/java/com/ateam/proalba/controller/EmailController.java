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
	public int mailSender(HttpServletRequest request, String mail) {
		//0�� ����
		//-1 = �̸��� �� ��
		//-2 = ���� ���� ������ ���ų� ��Ʈ�� �ȿ��� �ִ°���   
		if(mail == null) return -1;
	    
		
		// ���̹��� ��� smtp.naver.com �� �Է��մϴ�.
		// Google�� ��� smtp.gmail.com �� �Է��մϴ�.
		String host = "smtp.gmail.com";

		final String username = ""; // ���� ���̵� @gmail.com ����
		final String password = ""; // ��й�ȣ
		int port = 465; // ��Ʈ��ȣ

		// ���� ����
		String recipient = mail; // �޴� ����� �����ּҸ� �Է����ּ���.
		String subject = "�����׽�Ʈ"; // ���� ���� �Է����ּ���.
		String Roll = "";	//������
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

		String body = "������ȣ : " + Roll; // ���� ���� �Է����ּ���.

		Properties props = System.getProperties(); // ������ ��� ���� ��ü ����

		// SMTP ���� ���� ����
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		// Session ����
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un = username;
			String pw = password;

			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(un, pw);
			}
		});
		session.setDebug(true); // for debug

		Message mimeMessage = new MimeMessage(session); // MimeMessage ����
		try {
			mimeMessage.setFrom(new InternetAddress(mail));  // �߽��� ���� , ������ ����� �̸����ּҸ� �ѹ� �� �Է��մϴ�. �̶��� �̸��� Ǯ �ּҸ� �� �ۼ����ּ���.
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); // �����ڼ��� //.TO �ܿ� .CC(����)
			mimeMessage.setSubject(subject);// �������
			mimeMessage.setText(body); // �������
			Transport.send(mimeMessage); // javax.mail.Transport.send() �̿�
			// .BCC(��������) �� ����
		} catch (MessagingException e) {
			e.printStackTrace();
			return -2;
		}
		return 0; 


	}

}
