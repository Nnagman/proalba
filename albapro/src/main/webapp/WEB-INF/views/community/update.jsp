<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<script type="text/javascript" src="${path}/resources/js/common.js"></script>
 <script src="${path}/resources/ckeditor/ckeditor.js"></script>
 <link rel="stylesheet" type="text/css" href="${path}/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css"  />
<link rel="stylesheet" type="text/css" href="${path}/resources/viewCss/blog-post.css"  />
 
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
						console.log("이미지가 아님");
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
		$("#btnUpdete").click(function(){
			//var title = document.form1.title.value; ==> name속성으로 처리할 경우
			//var content = document.form1.content.value;
			//var writer = document.form1.writer.value;
			var title = $("#title").val();
			var content = $("#content").val();
			//var writer = $("#writer").val();
			if(title == ""){
				alert("제목을 입력하세요");
				document.updateForm.title.focus();
				return;
			}
			if(content == ""){
				alert("내용을 입력하세요");
				document.updateForm.content.focus();
				return;
			}
			/* if(writer == ""){
				alert("이름을 입력하세요");
				document.form1.writer.focus();
				return;
			} */
			
			// 첨부파일 이름을 form에 추가
			var that = $("#updateForm");
			var str = "";
			// 태그들.each(함수)
			// id가 uploadedList인 태그 내부에 있는 hidden태그들
			$("#uploadedList .file").each(function(i){
				str += "<input type='hidden' name='files["+i+"]' value='"+$(this).val()+"'>";
			});
			// form에 hidden태그들을 추가
			$("#updateForm").append(str);
			// 폼에 입력한 데이터를 서버로 전송
			document.updateForm.submit();
		});
		
	});
	
</script>
<style>
 
#dbUplodedImg {
	display : inline;
}

.attImg {
	width: 400px;
	heigh: 250px;
}
/* 첨부파일을 드래그할 영역의 스타일 */
.fileDrop {
		width: 1180px;
		height: 100px;
		border: 2px dotted gray;
		background-color: gray;
	}
	
	
.content, input#title {
		width: 1180px;
	}
</style>
<script>
	$(function() {
		$("#btnReply").click(function() {
			reply();
		});

		$("#btnList").click(function() {
			location.href = "${path}/comm";
		});


		$("#btnDelete").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				document.form1.action = "${path}/board/delete.do";
				document.form1.submit();
			}
		});
		

		
		//이미지, 서버와 디비에서 삭제 
		 $("#dbUplodedImg").on("click", ".btnFileDelete" , function(e){
			var that = $(this);
			alert($(this).attr("data-src"));
			  $.ajax({
				type: "post",
				url: "${path}/upload/deleteUpdateFile",
				data: {fileName:$(this).attr("data-src")},
				dataType: "text",
				success: function(result){
					if(result=="deleted"){
						that.parent("span").remove();
					}
				}
			});	
		});  

	});
	
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<br><br><br>
	  <div class="container">

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">
 	<form name="updateForm" id="updateForm" method="post" action="${path}/comm/update.do">
        
        <div>
			<!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 -->
			작성일자 :
			<fmt:formatDate value="${vo.p_date}" pattern="yyyy-MM-dd a HH:mm:ss" />
			<!-- 날짜 형식 => yyyy 4자리연도, MM 월, dd 일, a 오전/오후, HH 24시간제, hh 12시간제, mm 분, ss 초 -->
		</div>
		<div>조회수 : ${vo.viewcnt}</div>
		<h3>
			제목 <input name="title" id="title" size="80" value="${vo.title}" placeholder="제목을 입력해주세요">
		</h3>
        
        <!-- Author -->
        <p class="lead">
          by
           ${vo.id} 
        </p>

        <hr>

        <div id="dbUplodedImg">
			<c:forEach var="att" items="${attvo }">
				<span>
					<img class="attImg" src="<spring:url value='/resources${att.fullname}' />" />
					<a href="#" class="btnFileDelete" data-src="${att.fullname }">삭제</a>
				</span>
			</c:forEach>
		</div>

       <div>
			<h3>첨부파일 등록</h3>
			<div class="fileDrop"></div>
			<div id="uploadedList"></div>
		</div>
        
        <hr>
        
       <div class="content">
			<h3>내용</h3>
			<textarea name="p_content" id="p_content" rows="4" cols="80" placeholder="내용을 입력해주세요">${vo.p_content}</textarea>
		</div>
		
        	<br><br><br>
        
        <div style="width: 1180px; text-align: center;">
			<!-- 게시물번호를 hidden으로 처리 -->
			<input type="hidden" name="p_code" value="${vo.p_code}">
			<!-- 본인이 쓴 게시물만 수정, 삭제가 가능하도록 처리 -->
				<button type="button" id="btnUpdete">수정</button>
			<!-- 상세보기 화면에서 게시글 목록화면으로 이동 -->
			<button type="button" id="btnList">목록</button>
		</div>
	</form>

      </div>


    </div>
    <!-- /.row -->

  </div>
	
	
	
	
	
	
	
</body>


</html>