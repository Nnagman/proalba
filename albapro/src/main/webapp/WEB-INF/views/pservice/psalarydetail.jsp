<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file = "../include/header.jsp" %>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
</head>
<body>
<h2> ${message }</h2>
<table class="ui single line table">
  <thead>
    <tr>
      <th>급여</th>
      <th></th>
      <th>추가급여</th>
      <th></th>
      <th>공제</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  				<tr>
					<td>기본급</td>
					<td></td>
					<td>연장근로</td>
					<td></td>
					<td>국민연금</td>
					<td></td>
				</tr>
				<tr>	
					<td>식비</td>
					<td></td>
					<td>야간근로</td>
					<td></td>
					<td>건강보험</td>
					<td></td>
				</tr>
				<tr>

					<td>교통비</td>
					<td></td>
					<td>휴일근로</td>
					<td></td>
					<td>고용보험</td>
					<td></td>

				</tr>
				<tr>
					<td>-</td>
					<td></td>
					<td>주휴수당</td>
					<td></td>
					<td>-</td>
					<td></td>
				</tr>
				<tr>
				<td>총액</td>
				<td></td>
				<td>총액</td>
				<td></td>
				<td>총액</td>
				<td></td>
				</tr>
  </tbody>
</table>

</body>
</html>