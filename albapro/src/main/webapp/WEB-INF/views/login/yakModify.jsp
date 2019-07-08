<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>프로알바</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/pdata.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
<script>
     $(document).ready(function() {
    	 $("#pdataMo").click(function(){
    		var pdataText = $("#pdataText").val();
    		 $.ajax({
    			 type: "post",
    			 data: {"pdata": pdataText},
    			 url: "${path}/yakPdataModify",
    			 success: function(data){
					if(data == 'success'){
						alert("개인정보방침을 수정완료 하였습니다.");
					}
    			 }
    		 });
    	 });
    	 
    	 $("#articleMo").click(function(){
     		var articleTest = $("#articleTest").val();
     		 $.ajax({
     			 type: "post",
     			 data: {"articles": articleTest},
     			 url: "${path}/yakArticleModify",
     			 success: function(data){
 					if(data == 'success'){
 						alert("개인정보방침을 수정완료 하였습니다.");
 					}
     			 }
     		 });
     	 });
    	 
    }); 
  </script>
  <style type="text/css">
  	.text2{
  		margin: 0 auto;
  		text-align: center;
  		
  	}
  	.pdata {
  		display: inline-block;
  		height: 500px;
  	}
  	.articles{
  		display: inline-block;
  		height: 500px;
  		
  	}
  	
  	textarea {
    overflow-y: scroll;
	}
  	input[type=button] { display: inline-block; }
 /*  	.pdata textarea{
  		border: solid black;
  	}
  	
  	.articles textarea{
  		border: solid black;
  	} */
  </style>
</head>
<body>
<div class="header">
	 <a href= "/"><img src="resources/images/weblogo.png" class="logo1" /></a>
	<span class="sp1">개인정보처리방침</span>
	<a href="onlineQnA"><button type="button" id="qna" class="qna">온라인 문의</button></a>
</div>
<div class="text2" style="height:100%	">
	<div class="pdata">
	<h2>개인정보처리방침</h2>
	<textarea id="pdataText" rows="50" cols="90" >
	${pdata}
	</textarea>
	<input type="button" id="pdataMo" value="수정하기"/>
	</div>

	<div class="articles">
	<h2>프로알바 이용약관</h2>
	<textarea id="articleTest" rows="50" cols="90" style="height=100px" >
	${articles}
	</textarea>
	<input type="button" id="articleMo" value="수정하기"/>
	</div>
</div>

<div class="footer">
       © 2019 Copyright:<a href= "/"><img src="resources/images/weblogo.png" class="footer-logo"  /> 
      </a>
</div>
</body>
</html>