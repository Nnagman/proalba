<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로알바</title>

<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${path}/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css"  />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script type="text/javascript" src="${path}/resources/js/common.js"></script>
 <script src="${path}/resources/ckeditor/ckeditor.js"></script>
    <script>
    window.onload = function(){
       ck = CKEDITOR.replace("p_content");
    };
 </script>
<script>
	
	$(document).ready(function(){
		// 파일 업로드 영역에서 기본효과를 제한
		$(".fileDrop").on("dragenter dragover", function(e){
			e.preventDefault(); // 기본효과 제한
		});
		

		$(".fileDrop").on("drop", function(e){
			console.log(e);
			e.preventDefault(); // 기본효과 제한
			var files = e.originalEvent.dataTransfer.files; // 드래그한 파일들
			//console.log(files);
			var file = files[0]; // 첫번째 첨부파일
			var formData = new FormData(); // 폼데이터 객체
			formData.append("file", file); // 첨부파일 추가
			$.ajax({
				url: "${path}/upload/uploadAjax",
				type: "post",
				data: formData,
				dataType: "text",
				processData: false, // processType: false - header가 아닌 body로 전달
				contentType: false,
				success: function(data){
					var checkImg = checkImageType(data);
					console.log("checkIMG : "+checkImg);
					if(checkImg == null){

						alert("이미지를 등록해주세요.");
						return;
					}
					console.log("file_data: "+data);
					// 첨부 파일의 정보
					var fileInfo = getFileInfo(data);
					
					// 하이퍼링크
					var html = "<div><a href='"+fileInfo.getLink+"'>"+fileInfo.fileName+"</a>";
					// hidden 태그 추가
					html += "<input type='hidden' class='file' value='"+fileInfo.fullName+"'>";
					// 미리보기 추가
					html += "<img class='attImg' src='<spring:url value='/resources" + fileInfo.fullName+ "'/>'/>";
					//삭제 태그 추가 
					html += "<a href='#' class='file_del' data-src='"+fileInfo.fullName+"'>[삭제]</a></div>";
					// div에 추가
					$("#uploadedList").append(html);
				}
			});

		});
		
		$("#uploadedList").on("click", ".file_del" , function(e){
			var that = $(this);
			$.ajax({
				type: "post",
				url: "${path}/upload/deleteWriteFile",
				data: {fileName:$(this).attr("data-src")},
				dataType: "text",
				success: function(result){
					if(result=="deleted"){
						that.parent("div").remove();
					}
				}
			});
		});

		 
		$("#btnSave").click(function(){
			//var title = document.form1.title.value; ==> name속성으로 처리할 경우
			//var content = document.form1.content.value;
			//var writer = document.form1.writer.value;
			var title = $("#title").val();
			var content = $("#content").val();
			//var writer = $("#writer").val();
			if(title == ""){
				alert("제목을 입력하세요");
				document.form1.title.focus();
				return;
			}
			if(content == ""){
				alert("내용을 입력하세요");
				document.form1.content.focus();
				return;
			}
			/* if(writer == ""){
				alert("이름을 입력하세요");
				document.form1.writer.focus();
				return;
			} */
			
			// 첨부파일 이름을 form에 추가
			var that = $("#form1");
			var str = "";
			// 태그들.each(함수)
			// id가 uploadedList인 태그 내부에 있는 hidden태그들
			$("#uploadedList .file").each(function(i){
				str += "<input type='hidden' name='files["+i+"]' value='"+$(this).val()+"'>";
			});
			// form에 hidden태그들을 추가
			$("#form1").append(str);
			// 폼에 입력한 데이터를 서버로 전송
			document.form1.submit();
		});
		
		$("#returnList").click(function(){
			window.location.href="${path}/comm";
		});
		
	});
	
</script>
<style>
	/* 첨부파일을 드래그할 영역의 스타일 */
	.fileDrop {
		width: 1180px;
		height: 100px;
		border: 2px dotted gray;
		background-color: gray;
	}

	.content {
		width: 1180px;
	}
</style>
</head>
<body>
	<br><br><br>

  <div class="container">

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">
 	<form name="form1" id="form1" method="post" action="${path}/comminsert.do">
 	
 		<input name="id" type="hidden" value="${login.id}">
 	
        <!-- Title -->
        <h3 class="mt-4">제목 <input name="title" id="title" size="80" placeholder="제목을 입력하세요."></h3>

        <br> 

		<div class="content">
			<h3>내용 </h3>
			<textarea name="p_content" id="p_content" rows="3" cols="80"
				placeholder="내용을 입력하세요"></textarea>
		</div>
        
		<br>

		<div>
			<h3>첨부파일 등록</h3>
			<div  class="fileDrop"></div>
			<div id="uploadedList"></div>
		</div>
		
        <hr>
        <br><br><br>
        
        <div style="width: 1180px; text-align: center;">
			<button type="button" id="btnSave">확인</button>
			<button type="button" id="returnList">취소</button>
		</div>
	</form>
	
      </div>
    </div>
    <!-- /.row -->
  </div>
</body>
</html>