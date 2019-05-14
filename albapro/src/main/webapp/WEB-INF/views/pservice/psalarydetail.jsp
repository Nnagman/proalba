<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
</head>
<body>
	<h2>${message }</h2>
	<table class="ui single line table">
		<thead>
			<tr>
				<th>기본급</th>
				<th>식비</th>
				<th>교통비</th>
				<th>초과근로수당</th>
				<th>야간수당</th>
				<th>총공제금액</th>
				<th>실급여액</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${salary.basic_salary}</td>
				<td>${salary.food_expenses}</td>
				<td>${salary.transportation_fee}</td>
				<td>${salary.additional_extended}</td>
				<td>${salary.additional_night}</td>
				<td>${salary.total_deduction_amount}</td>
				<td>${salary.actual_salary}</td>
			</tr>
		</tbody>
	</table>

</body>
</html>