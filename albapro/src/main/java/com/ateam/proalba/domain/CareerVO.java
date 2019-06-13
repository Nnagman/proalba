package com.ateam.proalba.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CareerVO {
	private Date join_date;
	private String work_place;
	private Date end_date;
	private String name;
}