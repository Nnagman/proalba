package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class LoginDTO {
	
	private String i_Id;
	private String i_Pw;
	private boolean userCookie;
	
}
