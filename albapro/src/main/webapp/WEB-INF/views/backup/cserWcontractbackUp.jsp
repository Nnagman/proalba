<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>프로알바</title>
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen" href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">

<link rel="stylesheet" type="text/css" href="resources/css/contract.css?ver=1">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <link rel="stylesheet" type="text/css"  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link href="resources/css/servicepage/material-dashboard.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
<link href="resources/css/servicepage/demo.css" rel="stylesheet">
<link href="resources/css/servicepage/psercheckContractcus.css" rel="stylesheet">
<link href="resources/css/servicepage/cserWcontract.css" rel="stylesheet">

 
<style>
	.content{ text-align:center; }
	.tex{ margin-left:0px; }
	.tex3{ margin-left:0px; }
	.row{ text-align:center; }
</style>

</head>
<body>
<div class="wrapper">
<div class="div-sidebar">
	 <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="/" class="simple-text logo-normal">
        proalba
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
        <li class="nav-item	">
            <a class="nav-link" href="cserAddJobopening_free_manage?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고
            </a>
          </li>
         
         
             <li class="nav-item ">
            <a class="nav-link" href="cserWcontractForm?id=${login.id}&n_code=">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 작성
            </a>
          </li>
         
         
           <li class="nav-item active">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 목록
            </a>
          </li>
       
          <li class="nav-item">
            <a class="nav-link" href="cserEmpManage?id=${login.id}">
              <i class="material-icons">person</i>
             직원 관리
            </a>
          </li>
     
     <%--      <li class="nav-item ">
            <a class="nav-link" href="${path}/comm">
              <i class="material-icons">bubble_chart</i>
              커뮤니티
              </a>
          </li> --%>
        
        </ul>
      </div>
    </div>
         <!-- End of Sidebar -->

<div class="content">
        <form id="form">
            <div id="createPdf" class="div_createPdf">
                <div class="box">
                   
            <h3 class="contract_title">전자 근로 계약서</h3>
                    <br>
                    <h4 class="gg">1. 근로 계약기간</h4><br>
                    <input type="hidden" name="c_id" value="c${login.id}" />
                    <input type="hidden" name="c_code" value="${contract.c_code}" />
                    
                    <div class="worktime_div">
                    	<span class="timepiker_txt_title">ㅡ ${fn:substring(contract.start_period,0,10)}부터 ${fn:substring(contract.end_period,0,10)}까지</span>
                    </div>

                    <h4 class="gg">2. 근무장소</h4><br>  
                    <div class="worktime_div">
                    	<span class="timepiker_txt_title">ㅡ ${contract.work_place_name}</span>
                    </div>
                    
                    <h4 class="gg">3. 업무의 내용</h4><br>
                    <div class="worktime_div">
                    	<span class="timepiker_txt_title">ㅡ ${contract.work_detail}</span>
                    </div>

                    <h4 class="gg">4. 소정근로시간</h4><br>
                    <div class="worktime_div">
                        <span class="timepiker_txt_title">근로시간</span>
                            ${contract.start_work_time}
                        <span class="timepiker_txt">부터</span>
                            ${contract.end_work_time}
                        <span class="timepiker_txt">까지</span>
                    </div>

                    <h4 class="gg">5. 임금</h4><br>
                    <span class="t1">ㅡ 월(일, 시간)급 : </span>
                    ${contract.hour_wage}
                    <span>원</span><br>
                    
                    <span class="t1">ㅡ 기타 급여(재수당 등) </span>
                    <c:if test="${contract.additional_wage == '0'}">없음</c:if>
                    <c:if test="${contract.additional_wage =='1'}">있음</c:if><Br/>
                    
                    <span class="t1">ㅡ 임금지급일 : 매월(매주 또는 매일) </span>
                    ${contract.payday}
                    <span>일(휴일의 경우는 전일 지급)</span><br>

                    <h4 class="gg">6. 연차유급휴가</h4><br>
                    <span class="t1">ㅡ 연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함</span>

                    <h4 class="gg">7. 사회보험 적용여부(해당란에 체크)</h4><br>
                    <input class="che2" type="checkbox" id="고용보험" checked/><span>고용보험</span>
                    <input class="che2" type="checkbox" id="국민보험" checked /><span>국민연금</span>
                    <input class="che2" type="checkbox" id="건강보험" checked /><span>건강보험</span>
                    <input class="che2" type="checkbox" id="산재보험" checked /><span>산재보험</span>

                    <h4 class="gg">8. 근로계약서 교부</h4><br>
                    <span class="t11">ㅡ 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자에게 교부함</span><br>
                    <span class="sp1">(근로기준법 제17조 이행)</span><br><br>
                    <div class="worktime_div">
                    <span class="sp1">
                    	20${fn:substring(contract.c_date,2,4)}년
                    	${fn:substring(contract.c_date,5,7)}월
                    	${fn:substring(contract.c_date,8,10)}일
                    </span>
                    </div>

                    <hr><br>

                    <h4 class="hh">사업주</h4>
                    <div id="sign" style="width: 40%; display: inline-block; float:right;">
                    	<img class="can1" id="myImage" src="${contract.c_sign}" style="margin:1px;">
                	</div>	
                    <span class="t3">사업체명: </span>
                    ${contract.work_place_name}<br>
                    <span class="t3">사업자등록번호: </span>
                    ${contract.b_number}<br>
                    <span class="t3" id="mySign">대표자: </span>
                    ${contract.b_name}<br>
                    <span class="t3">주소: </span>
                    ${contract.c_address}<br>
                    <span class="t3">연락처: </span>
                    ${contract.work_place_phone}<br><br>
                    </div>
                </div>
            </form>
    </div>

</div>

</div>
 <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/contract.js?ver=5"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js">
</script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.8/FileSaver.min.js">
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous">
</script>

<script type="text/javascript" src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js">
</script>

<script type="text/javascript" src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
</script>

<script type="text/javascript" src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js">
</script>
</body>

</html>