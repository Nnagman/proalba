package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class SalaryVO {
	
	private String work_place_name;
	private int food_expenses;
	private int transportation_fee;
	private int basic_salary;
	private int total_deduction_amount;
	private int actual_salary;
	private String year_month;
	private int additional_night;
	private int additional_extended;
	private String sa_code;
	private int national_pension_cost;
	private int health_insurance_cost;
	private int employment_insurance_cost;
	
}
