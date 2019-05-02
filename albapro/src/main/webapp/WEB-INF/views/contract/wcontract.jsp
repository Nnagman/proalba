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
<link rel="stylesheet" type="text/css" href="resources/css/contract.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<%@ include file = "../include/header.jsp" %>


<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/contract.js?ver=2"></script>

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

                    <br>
                    <input class="tex1" name="end_period" type="text" value="" id="endSearchDate" />
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
                            <input class="timepiker" name="start_work_time" data-format="hh:mm" type="text"></input>
                            <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"> </i></span>
                        </div>
                        <span class="timepiker_txt">부터</span>

                        <div id="datetimepicker4" class="input-append">
                            <input class="timepiker2" name="end_work_time" data-format="hh:mm" type="text"></input>
                            <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"> </i></span>
                        </div>
                        <span class="timepiker_txt">까지</span>
                    </div>


                    <div class="break_div">
                        <span class="timepiker_txt_title">휴게시간</span>

                        <div id="datetimepicker5" class="input-append">
                            <input class="timepiker" name="start_break_time" data-format="hh:mm" type="text"></input>
                            <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"> </i></span>

                        </div>
                        <span class="timepiker_txt">부터</span>
                        <div id="datetimepicker6" class="input-append">
                            <input class="timepiker2" name="end_break_time" data-format="hh:mm" type="text"></input>
                            <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"> </i></span>
                        </div>
                        <span class="timepiker_txt">까지</span>
                    </div>

                    <br><br><br>

                    <h2 class="gg">5. 근무일/휴일</h2><br>
                    <span class="t1">매주 </span>
                    <input class="tex2" type="text" name="work_day" maxlength="2" onkeypress="onlyNumber();" />
                    <span>일(또는 매일단위) 근무, </span>
                    <span class="t2">주휴일 매주 </span>
                    <input class="tex5" name="holiday" type="text" maxlength="1" />
                    <span class="t2">요일</span>
                    <br><br><br>

                    <h2 class="gg">6. 임금</h2><br>
                    <span class="t1">ㅡ 월(일, 시간)급 : </span>
                    <input class="tex6" name="hour_wage" type="text" onkeypress="onlyNumber();" />
                    <span>원</span><br><br>
                    <span class="t1">ㅡ 기타 급여(재수당 등) </span>
                    <input class="ra" id="y" name="additional_wage" type="radio" value="1" /><span>있음 </span>
                    <input class="ra" id="n" name="additional_wage" type="radio" value="0" /><span>없음 </span><br><br>
                    <span class="t1">ㅡ 임금지급일 : 매월(매주 또는 매일) </span>
                    <input class="tex2" type="text" name="payday" maxlength="2" onkeypress="onlyNumber();" /><span>일(휴일의 경우는 전일 지급)</span><br><br><br>

                    <h2 class="gg">7. 연차유급휴가</h2><br>
                    <span class="t1">ㅡ 연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함</span>
                    <br><br><br>

                    <h2 class="gg">8. 사회보험 적용여부(해당란에 체크)</h2><br>
                    <input class="che2" type="checkbox" id="고용보험" /><span>고용보험</span>
                    <input class="che2" type="checkbox" id="국민보험" /><span>국민연금</span>
                    <input class="che2" type="checkbox" id="건강보험" /><span>건강보험</span>
                    <input class="che2" type="checkbox" id="산재보험" checked /><span>산재보험</span>
                    <br><br><br><br>

                    <h2 class="gg">9. 근로계약서 교부</h2><br>
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
                    <div class="div_sign"><img class="im" id="myImage"></div>
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

                    <h2 class="hh">근로자</h2><br>
                    <span class="t3">근로자: </span>
                    <input class="tex2" name="p_name" type="text" maxlength="11" />
                    <span class="sp3">근로자: </span><Br>



                    <span class="t3">주소: </span>
                    <input class="tex10" name="p_address" type="text" /> <Br><Br>


                    <span class="t3">연락처: </span>
                    <input class="tex6" name="p_phone" type="text" maxlength="11" onkeypress="onlyNumber();" /><br><br>


                    <canvas class="can1" id="myCanvas" style="background-color:#f0f0f0" width="300" height="150">
                    </canvas>

                    <div class="wcontract_btnline">
                        <input type="button" class="bt1" onclick="toDataURL();" value="서명 저장">
                        <button type="button" class="bt2" value="작성완료" data-toggle="modal" data-target=".bs-example-modal-lg" id="submit1">작성완료</button>

                        <br><br> <br><br>
                    </div>

                </div>



            </div>
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
            	
                console.log("aaa");
                html2canvas(document.getElementById('createPdf'), {
                    onrendered: function(canvas) {

                        // 캔버스를 이미지로 변환
                        var imgData = canvas.toDataURL();

                        var imgWidth = 210; // 이미지 가로 길이(mm) A4 기준
                        var pageHeight = imgWidth * 1.414; // 출력 페이지 세로 길이 계산 A4 기준
                        var imgHeight = canvas.height * imgWidth / canvas.width;
                        var heightLeft = imgHeight;

                        var doc = new jsPDF('p', 'mm');
                        var position = 0;

                        // 첫 페이지 출력
                        doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                        heightLeft -= pageHeight;

                        // 한 페이지 이상일 경우 루프 돌면서 출력
                        while (heightLeft >= 20) {
                            position = heightLeft - imgHeight;
                            doc.addPage();
                            doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                            heightLeft -= pageHeight;
                        }

                        var formData = new FormData();
                        var d = new Date();
                        var fileName = String('${login.id}' + '-' + $('#p_id').val() + '-' + d.getTime() + '.pdf');
                        // 파일 저장
                        var file = doc.output('blob');
                        console.log(file);
                        formData.set('file', file, fileName);
                        console.log(doc);
                        console.log(formData);

                        $.ajax({
                        	async: false,
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
                    }
                });
            }
        });
    </script>
</body>

</html>
