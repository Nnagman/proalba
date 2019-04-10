package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String m_code;
	private String id;
	private String password;
	private String phone;
	private String name;
	private String email;
	private String birthday;
	private String sex;
	private String b_number;
}
