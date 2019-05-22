package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class SalaryVO {
	
	private String basic_salary;
	private String food_expenses;
	private String transportation_fee;
	private String year_month;
	private String actual_salary;
	private String total_deduction_amount;
	private String additional_extended;
	private String additional_night;
	private String work_place_name;
	private String name;
	private String sa_code;
	private String national_pension_cost;
	private String health_insurance_cost;
	private String employment_insurance_cost;
}
