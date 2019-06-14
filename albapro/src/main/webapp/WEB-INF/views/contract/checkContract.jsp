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
<link rel="stylesheet" type="text/css" href="resources/css/contract.css?ver=3">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<%@ include file = "../include/header.jsp" %>


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

<title>프로알바</title>
</head>


<body>

    <div class="contents" id="contents">
        <div class="title">
            <h1>전자 근로계약서 - 상세보기</h1>
        </div>
        <form id="formCon" name="formCon">
            <div id="createPdf">
            	<img src='${path}/displayContract?name=${contractPath}'/>
            	<div class="box" style="z-index: 100;">
            		<h2 class="hh">근로자</h2><br>
                    <div id="sign" style="width: 40%; display: inline-block; float:right;">
                    	<canvas class="can1" id="myCanvas" style="background-color:#f0f0f0; margin:1px;" width="240" height="90"></canvas>
                    	<img class="can1" id="myImage" style="margin:1px;">
                	</div>
                    <span class="t3">근로자: </span>
                    <input class="tex2" name="p_name" type="text" maxlength="11" /><br><br>

                    <span class="t3">연락처: </span>
                    <input class="tex6" name="p_phone" type="text" maxlength="11" onkeypress="onlyNumber();" /><br><br>
                    
                    <span class="t3">주소: </span>
                    <input class="tex10" name="p_address" type="text" /> <Br><Br>
                </div>
			</div>
			<div style="text-align: center;">
				<button type="button" class="bt1" value="근로계약서 작성완료" id="submit2">근로계약서 작성완료</button>
            	<button type="button" class="bt1" value="근로계약서 작성완료" id="signAgain">다시 서명하기</button>
				<input type="button" class="bt1" onclick="toDataURL();"value="서명 저장">
				<button type="button" class="bt1" id="moveSign">서명란이동</button>
				<button type="button" class="bt1" id="moveSignEnd">이동완료</button>
				<button type="button" class="bt1" id="endGame">최종완료</button>
			</div>
			<div id="sign" style="z-index: 100; position: relative; width: 75%; height: 100%; margin: 0 auto;">
				<canvas class="can1" id="myCanvas" style="background-color: #f0f0f0" width="240" height="120"></canvas>
				<div>
					<img class="can1" id="myImage">
				</div>
			</div>
        </form>
    </div>

	<script>
    $(document).ready(function() {
    	var test = false;

        $("#submit2").on("click", contractServerUp);

        function contractServerUp(e) {
    		$(".submit2").remove();
    		$(".signAgain").remove();
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
                    var pngName = "${contractPath}";
                    var fileName = "${contractPath}";
                    // 파일 저장
                    var file = doc.output('blob');
                    console.log(file);
                    formData.set('file', file, fileName);
                    console.log(doc);
                    console.log(formData);

                    $.ajax({
                    	async: false,
                        url: "${path}/wcontract/checkContract",
                        type: "post",
                        data: formData,
                        dataType: "text",
                        processData: false, // processType: false - header가 아닌 body로 전달
                        contentType: false,
                        success: function(data) {
                        	self.location = "${path}/removeFile?fileName="+encodeURI(data);
                        }
                    });
                }
            });
        }
    }); 
	</script>
</body>
</html>