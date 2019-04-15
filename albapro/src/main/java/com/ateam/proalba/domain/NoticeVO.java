package com.ateam.proalba.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {
	private String n_code;
	private String m_code;
	private String title;
	private String job_type;
	private int personnel;
	private Date end_date;
	private int hour_wage;
	private int sex;
	private String age;
	private int way;
	private int term;
	private int work_day;
	private int work_time1;
	private String work_time2;
	private String p_date;
	private String address;
	private String content;
	private String work_place_name;
	private int education;
}
