<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>프로알바</title>
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
 <link href="resources/css/servicepage/cserwContractFormcus.css" rel="stylesheet">

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
        <a href="/" class="simple-text logo-normal">
        proalba
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">

<li class="nav-item">
            <a class="nav-link" href="cserAddJobopening_free_manage?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고 
            </a>
          </li>
		
		
		
		   <li class="nav-item active">
            <a class="nav-link" href="cserWcontractForm?id=${login.id}&n_code=${list[0].n_code}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 작성
            </a>
          </li>
		
		<li class="nav-item">
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
          <form action="${path}/cserWcontract" method="post">
          <div class="card-body">
          <div class="row">
		 		<div class="col-md-12"> 
		 			 <h2>전자근로계약서 작성 </h2>
          			<div class="addjob-1">
           		
           		
           			 			<input type="hidden" name="c_id" value="c${login.id}" />
           			  			
           			근로 계약기간:	<input class="tex" name="start_period" type="text" value="${list[0].p_date}" id="startSearchDate" /> 
           						<span>부터</span>
           						<input class="tex1" style="width:15%;" name="end_period" type="text" value="${list[0].end_date}" id="endSearchDate"  /> 
           						<span>까지</span>
           						<br><br>
           						
           		 	근무장소: 		<input class="tex3" name="work_place" type="text" value="" /> 
           						<br><br>
           						
           			업무의 내용:	<input class="tex3" name="work_detail" type="text" value="${list[0].assigned_task}" />
           						<br><br>
           						
           			소정근로시간:	<div id="datetimepicker3" class="input-append">
                            	<input class="timepiker" id="time1" name="start_work_time" data-format="hh:mm:ss" type="text" value="${list[0].work_time1}"></input>
                            	<span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar" style="margin-top: -4px;"> </i></span>
								</div><span class="timepiker_txt">부터</span>
								<div id="datetimepicker4" class="input-append">
                            	<input class="timepiker2" id="time2" name="end_work_time" data-format="hh:mm:ss" type="text" value="${list[0].work_time2}"></input>
                           		<span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar" style="margin-top: -4px;"> </i></span>
                        		</div>
                        		<span class="timepiker_txt">까지</span>
                        		<br><br>
                        		
					시급:			<input class="tex6" name="hour_wage" type="text" onkeypress="onlyNumber();" value="${list[0].hour_wage}" />
								<span>원</span>		
					<span class="sss">　(2019년 최저시급: ${hourWage}원)</span>
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
		 				사업체명:	
		 			
		 						<input type="text"  name="work_place_name" value="${list[0].work_place_name}" readonly/>
		 						<br><br>
		 				
		 				사업자번호:
		 						${login.b_number}
		 						<input type="hidden" value="${login.b_number}" name="b_number"/>
		 						<br><br>
		 						
		 				대표자:	<input class="tex8" name="b_name" type="text" value="${list[0].name}"/>
		 						<br><br>
		 						
		 						<c:set var="address" value="${fn:split(list[0].address,'/')}"/>
		 				주소:	 	<input type="text" id="sample6_postcode" placeholder="우편번호" value="${address[0]}"/>
								<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="adr-btn"/><br>
								<input type="text" id="sample6_address" class="sample6_address" placeholder="주소" name="c_address" value="${address[1]}"/>
								<input type="hidden" id="sample6_extraAddress" placeholder="참고항목"/>
								<input type="text" id="sample6_detailAddress" placeholder="상세주소" value="${address[2]}"/>
		 						<br><br>
		 						
		 				연락처:	<input class="tex6" name="work_place_phone" value="${list[0].phone}" type="text" maxlength="11" onkeypress="onlyNumber();" />
		 						<br/>
		 						<Br/>
		 				전송할 근로자 휴대폰번호를 입력해주세요 ('-' 제외): <br/>
		 				<c:if test="${memberVO.phone != null}">
		 					<input id="p_phone" name="p_phone" type="text" value="${memberVO.phone}" maxlength="11"/><br/>
		 				</c:if>
		 				
		 				<c:if test="${memberVO.phone == null}">
		 					<input id="p_phone" name="p_phone" type="text" maxlength="11"/><br/>
		 				</c:if>
		 				<input type="hidden" name="p_id" value=" "/>
		 				
		 		
           			</div>
           			
           		
           		</div>
           		<hr/>
           		</div>
           			     <div id="sign" style="width: 40%; margin: auto;">
                    <canvas class="can1" id="myCanvas" style="background-color:#f0f0f0; margin:1px;" width="240" height="90"></canvas>
                    <img class="can1" id="myImage" style="margin:1px;">
                    <div id="sign2"></div>
                </div>
           		<div class="btn_line1">
            		<button type="button" class="bt1" value="근로계약서 작성완료" id="signAgain">다시 서명하기</button>
            		<input type="button" class="bt1" id="save-sign" onclick="toDataURL();" value="서명 저장"><br/>
            		<input type='submit' class="submitbtn" value="작성완료" id="submit2"/>
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

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>





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

<script>
function execDaumPostcode(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
</script>
</body>

</html>