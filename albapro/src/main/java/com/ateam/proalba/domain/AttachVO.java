package com.ateam.proalba.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AttachVO {
	private String fullname;
	private int p_code;
	private Date upload_time;
}
