package com.ateam.proalba.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MobileWorkInfoVO {
	private Date start_period;
	private String work_place_name;
	private int hourly_wage;
	
}
