package com.ateam.proalba.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class CareerVO {
	@JsonFormat(pattern="yyyy-MM-dd")
	private Date join_date;
	private String work_place;
	@JsonFormat(pattern="yyyy-MM-dd")
	private Date end_date;
	private String name;
	private String work_place_name;
}