<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.slim.js"
	integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA="
	crossorigin="anonymous"></script>
	
<title>프로알바</title>
<script>
	$(function() {
		$("#hourWageM").click(function() {
			var hw = $("#mh").val();
			$.ajax({
				type : "post",
				data : {
					"hourWage" : hw
				},
				url : "${path}/hwModify",
				success : function(data) {
					if (data == 'success') {
						alert("최저시급을 수정하였습니다. ");
						window.location.href = "${path}/hourWageModify";
					}
				}
			});
		});
		
		$("#memIdButton").click(function(){
			var memId = $("#memId").val();
			$.ajax({
				type: "post",
				data: {"memId":memId},
				url: "${path}/memDelete",
				success: function(data){
					if(data=='personal'){
						$("#memInfo").empty();
						$("#memInfo").append("개인회원 입니다. <input data-type='p' type='button' id='memDelete' value='삭제' />");						
					}else if(data=='ceo'){
						$("#memInfo").empty();
						$("#memInfo").append("사장회원 입니다. <input data-type='c' type='button' id='memDelete' value='삭제' />");						
					}else if(data=='none'){
						$("#memInfo").empty();
						$("#memInfo").append("계정이 없습니다.");						
					}
				}
			})
		});
		
		$("#memInfo").on("click", "#memDelete", function(e){
			var sortCP = $("#memDelete").data("type");
			var memId = $("#memId").val();
			var mcode = sortCP+memId;
			alert(mcode);
			$.ajax({
				type: "post",
				data: {"mcode" : mcode},
				url: "${path}/withdrawMan",
				success: function(data){
					if(data == 'success'){
						alert(memId + " 계정이 삭제되었습니다.");
					}
				}
			});
		});
		
	});
</script>
<style>
	.container{
		display: -webkit-box;
		width: 80%;
		display: flex;
    /* flex-direction: column; */
    /* flex-wrap: wrap; */
   	 	justify-content: space-between;
   	 	margin-top: 40px !important;
		
	}
	.hourWageDiv{
		display: block;
		border: solid black;
		width: 60%;
	}
	.dataCount{
		display: block;
		border: solid black;
		width: 60%;
	}
	.memManage{
		display: block;
		border: solid black;
		width: 60%;
	}
	.inputMem, .inputMem>#memInfo{
		margin-top: 30px; margin-left:10px;
	}
	#memInfo{
		margin-left: 10px;
	}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="container">
	<div class="hourWageDiv">
		<h2>시급: ${hourWage}</h2>
		<h2>시급 수정:</h2>
		<input id="mh" type="text" /> <input type="button" id="hourWageM" value="수정" />
	</div>
	<div class="memManage">
		<div class="inputMem">
			<input type="text" id="memId" value=""/>
			<input type="button" id="memIdButton" value="회원정보 조회" />
		</div>
		<div id="memInfo"></div>
	</div>
	<div class="dataCount">
		<h2>사장 계정 수 : ${ceoCount}</h2>
		<h2>직원 계정 수 : ${perCount}</h2>
		<h2>총 계약서 수 : ${contCount}</h2>
	</div>
	</div>
</body>
</html>