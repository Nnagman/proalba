<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>전자 근로계약서-프로알바</title>
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen" href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">

<link rel="stylesheet" type="text/css" href="resources/css/contract.css?ver=1">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" type="text/css"  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link href="resources/css/servicepage/material-dashboard.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
<link href="resources/css/servicepage/demo.css" rel="stylesheet">
<link href="resources/css/servicepage/psercheckContractcus.css" rel="stylesheet">
 
<style>
.row{ text-align:center; }
.tex{ margin-left:0px; }
.tex3{ margin-left:0px; }
.sss{font-size: 12px; color: red; font-weight:lighter;}
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
        <a href="/proalba" class="simple-text logo-normal">
        proalba
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">

<li class="nav-item">
            <a class="nav-link" href="cserAddJobopening_free?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고 등록
            </a>
          </li>
		<li class="nav-item">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서
            </a>
          </li>
           <li class="nav-item active">
            <a class="nav-link" href="cserWcontractForm?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 작성
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cserEmpManage?id=${login.id}">
              <i class="material-icons">person</i>
              직원 관리
            </a>
          </li>

          <%-- <li class="nav-item ">
            <a class="nav-link" href="${path}/proalba/comm">
              <i class="material-icons">bubble_chart</i>
              커뮤니티
              </a>
          </li> --%>
        
        </ul>
      </div>
    </div>
			<!-- End of Sidebar -->
		</div>
		
		<!-- 컨테이너 시작 -->
		<div class="content">
		<div class="pser-header"><%@ include file="cserNavHeader.jsp"%>
			</div>
		<div class="pser-con">
		  <div class="container-fluid">
		  <div class="row">
		  <div class="col-md-12">
          <div class="card">
          <form action="${path}/proalba/cserWcontract" method="post">
          <div class="card-body">
          <div class="row">
		 		<div class="col-md-12"> 
          			<div class="addjob-1">
           			 <h2>전자근로계약서 작성 폼</h2>
           			 <h3>근로계약서에 들어 갈 내용입니다.</h3>
           			 			<input type="hidden" name="c_id" value="c${login.id}" />
           			  			
           			근로 계약기간:	<input class="tex" name="start_period" type="text" value="" id="startSearchDate" />
           						<span>부터</span>
           						<input class="tex1" style="width:15%;" name="end_period" type="text" value="" id="endSearchDate" />
           						<span>까지</span>
           						<br><br>
           						
           			근무장소: 		<input class="tex3" name="work_place" type="text" />
           						<br><br>
           						
           			업무의 내용:	<input class="tex3" name="work_detail" type="text" />
           						<br><br>
           						
           			소정근로시간:	<div id="datetimepicker3" class="input-append">
                            	<input class="timepiker" id="time1" name="start_work_time" data-format="hh:mm:ss" type="text"></input>
                            	<span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar" style="margin-top: -4px;"> </i></span>
								</div><span class="timepiker_txt">부터</span>
								<div id="datetimepicker4" class="input-append">
                            	<input class="timepiker2" id="time2" name="end_work_time" data-format="hh:mm:ss" type="text"></input>
                           		<span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar" style="margin-top: -4px;"> </i></span>
                        		</div>
                        		<span class="timepiker_txt">까지</span>
                        		<br><br>
                        		
					시급:			<input class="tex6" name="hour_wage" type="text" onkeypress="onlyNumber();" />
								<span>원</span>		
					<span class="sss">　(2019년 최저시급: 8350원)</span>
								<br>
								<br>
					기타 급여(재수당 등):
								<input class="ra" id="y" name="additional_wage" type="radio" value="1" /><span>있음 </span>
								<input class="ra" id="n" name="additional_wage" type="radio" value="0" /><span>없음 </span>
								<br><br>
								
					임금지급일:	<input class="tex2" type="text" name="payday" maxlength="2" onkeypress="onlyNumber();" />
								<span>일(휴일의 경우는 전일 지급)</span>
           			</div>
           			<br><hr>
				</div>
           	</div>
           		<div class="col-md-12">
		 			<div class="addjob-2">
		 				사업체명:	<input class="tex8" name="work_place_name" type="text" style="z-index: 100;" />
		 						<br><br>
		 				
		 				사업자번호:
		 						${login.b_number}
		 						<br><br>
		 						
		 				대표자:	<input class="tex8" name="b_name" type="text" />
		 						<br><br>
		 						
		 				주소:		<input class="tex10" name="c_address" type="text" />
		 						<br><br>
		 						
		 				연락처:	<input class="tex6" name="work_place_phone" type="text" maxlength="11" onkeypress="onlyNumber();" />
		 						<br><hr>
		 						
		 				<input class="tex8" name="p_id" type="hidden" value=" "/>
           			</div>
           		</div>
           		<div class="col-md-12">
		 			<div class="addjob-3">
		 				<input type='submit' class="bt2"/>
          				<hr>
           			</div>
           		</div>
           		</div>
           		</form>
              </div>
            </div>
          	</div>
         	</div>
          	</div>
			<div class="pser-footer"><%@ include file="../servicepage/pserfooter.jsp"%></div>
		</div>
	</div>

<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript" src="resources/js/contract.js?ver=3"></script>

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






<script>
    $(function() {
        $("#startSearchDate, #endSearchDate").datepicker({ 
            dateFormat: 'yy-mm-dd',
            prevText: '이전 달',
            nextText: '다음 달',
            showOn: "both",  
            buttonImage: "resources/images/date1.png",
            changeMonth: true,
            changeYear: true,
            changeMonth: true,
            dayNames: ['월', '화', '수', '목', '금', '토', '일'],
            dayNamesShort: ['월', '화', '수', '목', '금', '토', '일'],
            dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            showMonthAfterYear: true,
            yearSuffix: '년'
        });


    });

    $(function() {
        $('#datetimepicker3').datetimepicker({
            pickDate: false
        });

        $('#datetimepicker4').datetimepicker({
            pickDate: false
        });

        $('#datetimepicker5').datetimepicker({
            pickDate: false
        });

        $('#datetimepicker6').datetimepicker({
            pickDate: false
        });
    });

</script>
</body>

</html>
