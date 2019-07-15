package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class ResumeVO {
	private String id;
	private String r_code;
	private String r_date;
	private String m_code;
	private String title;
	private String content;
	private String address;
	private String file_name;
	private String education;
	private String license;
	private String n_code;
	private String late_status;
	private String c_late_status;
}
