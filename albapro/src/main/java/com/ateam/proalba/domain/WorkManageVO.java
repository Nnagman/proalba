package com.ateam.proalba.domain;

import java.util.Date;

import lombok.Data;

@Data
public class WorkManageVO {
	private String em_code;
	private String m_code;
	private int c_code;
	private String id;
	private String phone;
	private String name;
	private String birthday;
	private String sex;	
	private String email;
	private String start_period;
	private int finger_id;
	private String end_period;
	private Date join_date;
	private Date end_date;
}
