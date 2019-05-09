package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class SalaryVO {
	
	private String work_place_name;
	private int basic_salary;
	private int total_deduction_amount;
	private int actual_salary;
	private String year_month;
}
