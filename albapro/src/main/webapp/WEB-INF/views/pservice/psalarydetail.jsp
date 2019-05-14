<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
</head>
<body>
	<h2>${salary.year_month}상세급여</h2>
	<table class="ui single line table">
		<thead>
			<tr>
				<th>급여</th><th>금액</th><th>공제</th><th>금액</th>
			</tr>
		</thead>
		<tbody>
		<tr>
				<th>기본급</th>
				<td>${salary.basic_salary}</td>
				<th>국민연금</th>
				<td>${salary.national_pension_cost}</td>
		</tr>
			<tr>
				<th>식비</th>
				<td>${salary.food_expenses}</td>
				<th>건강보험</th>
				<td>${salary.health_insurance_cost}</td>
						
				
			</tr>
			<tr>		
				<th>교통비</th>
				<td>${salary.transportation_fee}</td>
				<th>고용보험</th>
				<td>${salary.employment_insurance_cost}</td>

				
				</tr>
				
				<tr>
				<th>초과근로수당</th>
				<td>${salary.additional_extended}</td>
				<td></td>
				<td></td>
				

				</tr>
				
				<tr>
				<th>야간수당</th>
				<td>${salary.additional_night}</td>
				<td></td>
				<td></td>
				
		</tbody>
	</table >
	<table class="ui single line table">
	<thead>
	<tr>
	<th>총 급여</th>
	<th>총 공제금액</th>
	<th>실급여액</th>
	</tr>
	</thead>
	<tbody>
	<tr>
	<th>${salary.basic_salary+salary.food_expenses+salary.transportation_fee+salary.additional_extended+salary.additional_night}</th>
	<th>${salary.total_deduction_amount}</th>
	<th>${salary.actual_salary}</th>
	</tr>
	</tbody>
	</table>
</body>
</html>
