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
           <li class="nav-item ">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cserEmpManage?id=${login.id}">
              <i class="material-icons">person</i>
             직원 관리
            </a>
          </li>
     
          <li class="nav-item ">
            <a class="nav-link" href="${path}/comm">
              <i class="material-icons">bubble_chart</i>
              커뮤니티
              </a>
          </li>
        
        </ul>
      </div>
    </div>
         <!-- End of Sidebar -->

<div class="content">


     
        <form id="formCon" name="formCon">
            <div id="createPdf" class="div_createPdf">
                <div class="box">
                   
            <h3 class="contract_title">전자 근로 계약서</h3>
   
                    <br>
                    <h4 class="gg">1. 근로 계약기간</h4><br>
                    <input type="hidden" name="c_id" value="${login.id}" />
                    <input class="tex" name="start_period" type="text" value="" id="startSearchDate" />
                    <span>부터</span>

                    <input class="tex1" style="width:15%;" name="end_period" type="text" value="" id="endSearchDate" />
                    <span>까지</span>

                    <h4 class="gg">2. 근무장소</h4><br>
                    <input class="tex3" name="work_place" type="text" />

                    <h4 class="gg">3. 업무의 내용</h4><br>
                    <input class="tex3" name="work_detail" type="text" />

                    <h4 class="gg">4. 소정근로시간</h4><br>

                    <div class="worktime_div">
                        <span class="timepiker_txt_title">근로시간</span>

                        <div id="datetimepicker3" class="input-append">
                            <input class="timepiker" id="time1" name="start_work_time" data-format="hh:mm:ss" type="text"></input>
                            <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar" style="margin-top: -4px;"> </i></span>
                        </div>
                        <span class="timepiker_txt">부터</span>

                        <div id="datetimepicker4" class="input-append">
                            <input class="timepiker2" id="time2" name="end_work_time" data-format="hh:mm:ss" type="text"></input>
                            <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar" style="margin-top: -4px;"> </i></span>
                        </div>
                        <span class="timepiker_txt">까지</span>
                    </div>

                    <h4 class="gg">5. 임금</h4><br>
                    <span class="t1">ㅡ 월(일, 시간)급 : </span>
                    <input class="tex6" name="hour_wage" type="text" onkeypress="onlyNumber();" />
                    <span>원</span><br><br>
                    <span class="t1">ㅡ 기타 급여(재수당 등) </span>
                    <input class="ra" id="y" name="additional_wage" type="radio" value="1" /><span>있음 </span>
                    <input class="ra" id="n" name="additional_wage" type="radio" value="0" /><span>없음 </span><br><br>
                    <span class="t1">ㅡ 임금지급일 : 매월(매주 또는 매일) </span>
                    <input class="tex2" type="text" name="payday" maxlength="2" onkeypress="onlyNumber();" /><span>일(휴일의 경우는 전일 지급)</span><br>

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
                    <input class="tex7" type="text" maxlength="4" onkeypress="onlyNumber();" />
                    <span>년</span>
                    <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
                    <span>월</span>
                    <input class="tex2" type="text" maxlength="2" onkeypress="onlyNumber();" />
                    <span>일</span>

                    <hr><br>

                    <h4 class="hh">사업주</h4>
                    <div id="sign" style="width: 40%; display: inline-block; float:right;">
                    	<canvas class="can1" id="myCanvas" style="background-color:#f0f0f0; margin:1px;" width="240" height="90"></canvas>
                    	<img class="can1" id="myImage" style="margin:1px;">
                	</div>	
                    <span class="t3">사업체명: </span>
                    <input class="tex8" name="work_place_name" type="text" style="z-index: 100;" /><br>
                    <span class="t3">사업자등록번호: </span>
                    <input class="tex8" name="b_number" type="text" style="z-index: 100;" onkeypress="onlyNumber();"/><br>
                    <span class="t3" id="mySign">대표자: </span>
                    <input class="tex8" name="b_name" type="text" /><br>
                    <span class="t3">주소: </span>
                    <input class="tex10" name="c_address" type="text" /><br>
                    <span class="t3">연락처: </span>
                    <input class="tex6" name="work_place_phone" type="text" maxlength="11" onkeypress="onlyNumber();" /><br><br>
                    </div>
                </div>
                <div style="text-align: center;">
						<button type="button" class="bt1" id="moveSign">서명란이동</button>
						<button type="button" class="bt1" id="moveSignEnd">이동완료</button>
                        <button type="button" class="bt1" value="근로계약서 작성완료" data-toggle="modal" data-target=".bs-example-modal-lg" id="submit1">근로계약서 작성완료</button>
            			<button type="button" class="bt1" value="근로계약서 작성완료" id="signAgain">다시 서명하기</button>
            			<input type="button" class="bt1" onclick="toDataURL();" value="서명 저장">
            	</div>
            <!-- Large modal -->
            <div class="modal fade bs-example-modal-lg where-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <p>전송할 근로자 아이디 입력</p>
                        <input id="p_id" name="p_id" type="text" maxlength="20"/><br/>
                        <button type='button' class="bt2" id="submit2">근로계약서 보내기</button>
                    </div>
                </div>
            </div>
        </form>
    </div>

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




    <script>


        $(document).ready(function() {
        	
        	var test = false;

            $("#submit2").on("click", contractServerUp);

            function contractServerUp(e) {
            	if(test) return;
            	
                html2canvas(document.getElementById('createPdf'),	{
                    onrendered: function(canvas)	{
                    	canvas.toBlob(function(blob)	{
                            var formData = new FormData();
                            var d = new Date();
                            var fileName = String('${login.id}' + '-' + $('#p_id').val() + '-' + d.getTime() + '.png');
                            formData.set('file', blob, fileName);
                            console.log(formData);

                            $.ajax({
                                url: "http://39.127.7.84:8080/proalba/wcontract/upload",
                                type: "post",
                                data: formData,
                                dataType: "text",
                                processData: false, // processType: false - header가 아닌 body로 전달
                                contentType: false,
                                success: function(data) {
                                    var fileName = '${fileName}';
                                    alert(fileName);
                                    var c_id = '${login.id}';
                                    $("#p_id").append('<input id="fileName" name="fileName" type="hidden" value= "'+ data +'" />');
                                    test = true;
                                    $("#formCon").attr({"method" : 'post', "action" : 'http://39.127.7.84:8080/proalba/cserWcontract'});
                                    $("#submit2").attr({"type" : 'submit'});
                                    $("#submit2").trigger('click');
                                }
                            });
                    	});
                    }
                });
            }
        });
    </script>
</body>

</html>
