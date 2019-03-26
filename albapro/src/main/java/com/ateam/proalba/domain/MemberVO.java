package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String i_Id;
	private String i_Pw;
	private String name;
	private String address;
	private int p_Number;
	private String email;
	private String education;
	private String bank_Name;
	private String bank_Num;
	private String depositor;
	private boolean military;
}
