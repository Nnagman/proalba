<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen" href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
</head>
<link rel="stylesheet" type="text/css" href="resources/css/contract.css?ver=4">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<%@ include file = "../include/header.jsp" %>


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

<title>전자 근로계약서-프로알바</title>




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




</head>


<body>
    <%@ include file = "../include/cmenu.jsp" %>

    <div class="contents">
        <div class="title">
            <h1>전자 근로계약서 - 상세보기</h1>
        </div>
        <form id="formCon" name="formCon">
            <div id="createPdf">
                <div class="box">
                    <br>
                    <h2 class="gg">1. 근로계약기간</h2><br>
                    <input type="hidden" name="c_id" value="${login.id}" />
                    <input class="tex1" name="start_period" type="text" value="" id="startSearchDate" />
                    <span>부터</span>

                    <input class="tex" style="width:15%;" name="end_period" type="text" value="" id="endSearchDate" />
                    <span>까지</span>

                    <br><br><br>

                    <h2 class="gg">2. 근무장소</h2><br>
                    <input class="tex3" name="work_place" type="text" />
                    <br><br><br>

                    <h2 class="gg">3. 업무의 내용</h2><br>
                    <input class="tex3" name="work_detail" type="text" />
                    <br><br><br>

                    <h2 class="gg">4. 소정근로시간</h2><br>

                    <div class="worktime_div">
                        <span class="timepiker_txt_title">근로시간</span>

                        <div id="datetimepicker3" class="input-append">
                            <input class="timepiker" id="time1" name="start_work_time" data-format="hh" maxlength="2" type="text"></input>
                            <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"> </i></span>
                        </div>
                        <span class="timepiker_txt">부터</span>

                        <div id="datetimepicker4" class="input-append">
                            <input class="timepiker2" id="time2" name="end_work_time" data-format="hh" maxlength="2" type="text"></input>
                            <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"> </i></span>
                        </div>
                        <span class="timepiker_txt">까지</span>
                    </div>

                    <br><br><br>

                    <h2 class="gg">5. 임금</h2><br>
                    <span class="t1">ㅡ 월(일, 시간)급 : </span>
                    <input class="tex6" name="hour_wage" type="text" onkeypress="onlyNumber();" />
                    <span>원</span><br><br>
                    <span class="t1">ㅡ 기타 급여(재수당 등) </span>
                    <input class="ra" id="y" name="additional_wage" type="radio" value="1" /><span>있음 </span>
                    <input class="ra" id="n" name="additional_wage" type="radio" value="0" /><span>없음 </span><br><br>
                    <span class="t1">ㅡ 임금지급일 : 매월(매주 또는 매일) </span>
                    <input class="tex2" type="text" name="payday" maxlength="2" onkeypress="onlyNumber();" /><span>일(휴일의 경우는 전일 지급)</span><br><br><br>

                    <h2 class="gg">6. 연차유급휴가</h2><br>
                    <span class="t1">ㅡ 연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함</span>
                    <br><br><br>

                    <h2 class="gg">7. 사회보험 적용여부(해당란에 체크)</h2><br>
                    <input class="che2" type="checkbox" id="고용보험" /><span>고용보험</span>
                    <input class="che2" type="checkbox" id="국민보험" /><span>국민연금</span>
                    <input class="che2" type="checkbox" id="건강보험" /><span>건강보험</span>
                    <input class="che2" type="checkbox" id="산재보험" checked /><span>산재보험</span>
                    <br><br><br><br>

                    <h2 class="gg">8. 근로계약서 교부</h2><br>
                    <span class="t1">ㅡ 사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자에게 교부함</span><br>
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
                    <input class="tex8" name="work_place_name" type="text" /><br><Br>
                    <span class="t3">사업자등록번호: </span>
                    <input class="tex8" name="b_number" type="text" onkeypress="onlyNumber();" />
                    <span class="sp2">대표자: </span>



                    <!-- 캔버스로 그린거 이미지로 변환한 이미지 -->
                    <br>
                    <span class="t3">대표자: </span>
                    <input class="tex8" name="b_name" type="text" />
                    <!--       <span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" onkeypress="onlyNumber();" /><span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" onkeypress="onlyNumber();" /> -->
                    <br><br>
                    <span class="t3">주소: </span>
                    <input class="tex10" name="c_address" type="text" />
                    <br><br>
                    <span class="t3">연락처: </span>
                    <input class="tex6" name="work_place_phone" type="text" maxlength="11" onkeypress="onlyNumber();" /><br><br><br>

					<div id="sign">
                    <canvas class="can1" id="myCanvas" style="background-color:#f0f0f0" width="240" height="120"></canvas>
                    <div><img class="can1" id="myImage"></div>

                    <div class="wcontract_btnline">
                        <input type="button" class="bt1" onclick="toDataURL();" value="서명 저장">
						<button type="button" class="bt2" id="moveSign">서명란이동</button>
						<button type="button" class="bt2" id="moveSignEnd">이동완료</button>
						<button type="button" class="bt2" id="endGame">최종완료</button>
                        <br><br> <br><br>
                    </div>
                    </div>

                </div>



            </div>
            <button type="button" class="bt3" value="근로계약서 작성완료" data-toggle="modal" data-target=".bs-example-modal-lg" id="submit1">근로계약서 작성완료</button>
            <button type="button" class="bt4" value="근로계약서 작성완료" id="signAgain">다시 서명하기</button>
            <!-- Large modal -->
            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <p>전송할 근로자 아이디 입력</p>
                        <input id="p_id" name="p_id" type="text" maxlength="20" /><br/>
                        <button type='button' class="bt2" id="submit2">근로계약서 보내기</button>
                    </div>
                </div>
            </div>
            <br><br> <br><br>
        </form>
    </div>

    <script>

        $(document).ready(function() {
        	var test = false;

            $("#submit2").on("click", contractServerUp);

            function contractServerUp(e) {
            	if(test) return;
            	
            	var work_time = $("#time1").val()+'/'+$("#time2").val();
            	$("#time2").append("<input name='work_time' type='text' value='"+work_time+"'/>");
            	
                html2canvas(document.getElementById('createPdf'),	{
                    onrendered: function(canvas)	{
                    	canvas.toBlob(function(blob)	{
                            var formData = new FormData();
                            var d = new Date();
                            var fileName = String('${login.id}' + '-' + $('#p_id').val() + '-' + d.getTime() + '.png');
                            formData.set('file', blob, fileName);
                            console.log(formData);

                            $.ajax({
                                url: "${path}/wcontract/upload",
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
                                    $("#formCon").attr({"method" : 'post', "action" : '${path}/wcontract'});
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
