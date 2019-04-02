package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String m_code;
	private String id;
	private String password;
	private int phone;
	private String name;
	private String email;
	private String birthday;
	private boolean sex;
	private String b_Number;
}
