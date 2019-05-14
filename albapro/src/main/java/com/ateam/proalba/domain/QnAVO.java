package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class QnAVO {
	private String cs_code;
	private String m_code;
	private String title;
	private String content;
	private String phone;
	private String email;
	private String service_type;
	private String name;
	private String response_content;
	private String whether_response;
}
