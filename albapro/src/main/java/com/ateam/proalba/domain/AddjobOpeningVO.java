package com.ateam.proalba.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class AddjobOpeningVO {
	private String n_code;
	private String m_code;
	private String title;
	private String job_type;
	private int personnel;
	private Date p_date;
	private Date end_date;
	private int hour_wage;
	private String gender;
	private String age;
	private int term;
	private String work_day;
	private String work_time1;
	private String work_time2;
	private int viewcnt;
	private String address;
	private String content;
	private String work_place_name;
	private String education;
	private String documents;
	private String interview;
	private String contact_number;
	private String career;
	private String employeement_type;
	private String assigned_task;
	private String education_etc;
	private String major;
	private String preferential_conditions;
	private int salary;

}
