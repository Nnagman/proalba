package com.ateam.proalba.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CareerVO {
	private Date appDate;
	private String company;
	private Date endDate;
	private String occupation;
}