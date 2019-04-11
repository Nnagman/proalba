<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen"
     href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
  </head>
<link rel="stylesheet" type="text/css" href="resources/css/contract.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<%@ include file = "../include/header.jsp" %>


<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
<script type="text/javascript" src="resources/js/contract.js?ver=2"></script>


<title>전자 근로계약서-프로알바</title>




<script>



    $(function() {
      $( "#startSearchDate, #endSearchDate").datepicker({
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
          monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
          monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
          showMonthAfterYear: true,
          yearSuffix: '년'
      });
      
    
    });
</script>




</head>


<body>
<%@ include file = "../include/menu.jsp" %>

    <div class="contents">
      <div class="title">
        <h1>전자 근로계약서 - 상세보기</h1>
      </div>
      <form id="formCon" name="formCon" method="post" action="${path}/wcontract.do">
      <div class="box">
        <br>
        <h2 class="gg">1. 근로계약기간</h2><br>
        <input class="tex1" type="text" maxlength="4"  id="startSearchDate" />
        <span>부터</span>
    
        <br>
        <input class="tex1" type="text" maxlength="4" id="endSearchDate" />
        <span>까지</span>
      
        <br><br><br>

        <h2 class="gg">2. 근무장소</h2><br>
        <input class="tex3" name="work_place" type="text" />
        <br><br><br>

        <h2 class="gg">3. 업무의 내용</h2><br>
        <input class="tex3" name="work_detail" type="text" />
        <br><br><br>

        <h2 class="gg">4. 소정근로시간</h2><br>
<<<<<<< HEAD

<div class="worktime_div">
	<span class="timepiker_txt_title">근로시간</span>
			
			<div id="datetimepicker3" class="input-append">
				<input class="timepiker" data-format="hh:mm:ss" type="text"></input>
				<span class="add-on"><i data-time-icon="icon-time"
					data-date-icon="icon-calendar"> </i></span>
			</div>		
			<span class="timepiker_txt">부터</span>
			
			<div id="datetimepicker4" class="input-append">
					<input class="timepiker2" data-format="hh:mm:ss" type="text"></input>
					<span class="add-on"><i data-time-icon="icon-time"
						data-date-icon="icon-calendar"> </i></span>
			</div>
			<span class="timepiker_txt">까지</span>
</div>
		
		
<div class="break_div">			
	<span class="timepiker_txt_title">휴계시간</span>
			
			<div id="datetimepicker5" class="input-append">
				<input class="timepiker" data-format="hh:mm:ss" type="text"></input>
				<span class="add-on"><i data-time-icon="icon-time"
					data-date-icon="icon-calendar"> </i></span>
				
			</div>	
			<span class="timepiker_txt">부터</span>
			<div id="datetimepicker6" class="input-append">
					<input class="timepiker2" data-format="hh:mm:ss" type="text"></input>
					<span class="add-on"><i data-time-icon="icon-time"
						data-date-icon="icon-calendar"> </i></span>
			</div>
			<span class="timepiker_txt">까지</span>
</div>		
			
 
 
 
     
       
=======
        <input class="tex4" name="a" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>시</span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>분 부터 </span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>시</span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>분 까지 (휴게시간 :</span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>시</span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>분 ~ </span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>시</span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>분)</span>
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git
        <br><br><br>

        <h2 class="gg">5. 근무일/휴일</h2><br>
        <span class="t1">매주 </span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>일(또는 매일단위) 근무, </span>
        <span class="t2">주휴일 매주 </span>
        <input class="tex5" type="text" maxlength="1" />
        <span class="t2">요일</span>
        <br><br><br>

        <h2 class="gg">6. 임금</h2><br>
        <span class="t1">ㅡ  월(일, 시간)급 : </span>
        <input class="tex6" type="text" onkeypress="onlyNumber();" />
        <span>원</span><br><br>
        <span class="t1">ㅡ  기타 급여(재수당 등) </span>
        <input class="ra" id="y" name="hh" type="radio" /><span>있음 </span>
        <input class="ra" id="n" name="hh" type="radio" /><span>없음 </span><br><br>
        <span class="t1">ㅡ  임금지급일 : 매월(매주 또는 매일) </span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" /><span>일(휴일의 경우는 전일 지급)</span><br><br><br>

        <h2 class="gg">7. 연차유급휴가</h2><br>
        <span class="t1">ㅡ  연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함</span>
        <br><br><br>

        <h2 class="gg">8. 사회보험 적용여부(해당란에 체크)</h2><br>
        <input class="che" name="" type="checkbox" /><span>고용보험</span>
        <input class="che2" type="checkbox" /><span>산재보험</span>
        <input class="che2" type="checkbox" /><span>국민연금</span>
        <input class="che2" type="checkbox" /><span>건강보험</span>
        <br><br><br><br>

        <h2 class="gg">9. 근로계약서 교부</h2><br>
        <span class="t1">ㅡ  사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자에게 교부함</span><br>
        <span class="sp1">(근로기준법 제17조 이행)</span>
        <br><br><br><br><br><br>
        <input class="tex7" type="text" maxlength="4" onkeypress="onlyNumber();" />
        <span>년</span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>월</span>
        <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
        <span>일</span>
        <br><br><br><br>

        <hr><br>

        <h2 class="hh">사업주</h2><br>
        <span class="t3">사업체명: </span>
        <input class="tex8" type="text" /><br><br>
        <span class="t3">사업자등록번호: </span>
        <input class="tex8" type="text" onkeypress="onlyNumber();" />
        <span class="sp3">대표자: </span>
        <div class="div_sign"><img class="im" id="myImage"></div>
      <!-- 캔버스로 그린거 이미지로 변환한 이미지 -->
        <span class="t3">전화: </span>
        <input class="tex2" type="text" maxlength="3" onkeypress="onlyNumber();" /><span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" onkeypress="onlyNumber();" /><span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" onkeypress="onlyNumber();" /><br><br>
        <span class="t3">주소: </span>
        <input class="tex10" type="text" />
        <br><br><br>
        
        <h2 class="hh">근로자</h2><br>
        <span class="t3">연락처: </span>
        <input class="tex2" type="text" maxlength="3" onkeypress="onlyNumber();" /><span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" onkeypress="onlyNumber();" /><span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" onkeypress="onlyNumber();" />
        <span class="sp2">근로자: </span><br><br>
        <span class="t3">주소: </span>
        <input class="tex10" type="text" /><br><br><br>
        <canvas class="can1" id="myCanvas" style="background-color:#f0f0f0" width="300" height="150">
        </canvas>

        <div class="wcontract_btnline">
        <button class="bt1" onclick="toDataURL();" value="서명 저장">서명 저장</button>
        <button class="bt2" onclick="toDataURL();" value="근로계약서 보내기">근로계약서 보내기</button>
         <br><br> <br><br>

        </div>
              
        </div>
 <br><br> <br><br>
       <script type="text/javascript"
     src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js">
    </script>
      
       <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
    </script>
    <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js">
    </script>
    
    
<script type="text/javascript">
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
=======
   	 </form>    
      </div>
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git
</body>
</html>