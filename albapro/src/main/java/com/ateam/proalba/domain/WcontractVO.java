package com.ateam.proalba.domain;

import java.util.Date;

import lombok.Data;

@Data
public class WcontractVO {
	private String c_code;
	private String m_code;
	private String work_detail;
	private Date start_period;
	private Date end_period;
	private String work_place;
	private int hour_wage;
	private int work_day;
	private String start_work_time;
	private String end_work_time;
	private String start_break_time;
	private String end_break_time;
	private Date c_date;
	private String work_place_name;
	private String b_number;
	private int business_type;
}
