<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel = "stylesheet" href = "https://www.w3schools.com/w3css/4/w3.css" >  
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<style>
#modalsize{
   height:300px;
}
</style>
</head>
<body>
<div class = "w3-container" > 
   <div id = "id01" class = "w3-modal" >  
    <div class = "w3-modal-content w3-animate-top w3-card-4" > 
      <header class = "w3-container w3-teal" id="modalsize">  
        <span onclick = "document.getElementById ( 'id01'). style.display = 'none'"  
        class = "w3-button w3-display-topright" >닫기 </span >
   <h2 style="color : Green;">${salary.year_month}월 상세급여</h2>
      </header>
      <div class = "w3-container" > 
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
   </div >
      <footer class = "w3-container w3-teal" > 
   <h3>급여 정보</h3>
      </footer >
    </div >
  </div >
  </div>

</html>