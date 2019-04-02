package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String address;
	private int phone;
	private String email;
	private String birthday;
	private boolean sex;
	private String b_Number;
	private String bank_Name;
	private String bank_Num;
	private String depositor;
}
