<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.slim.js" integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA=" crossorigin="anonymous"></script>
<title>프로알바</title>
<script>
	$(function(){
		$("#hourWageM").click(function(){
			var hw = $("#mh").val();
			$.ajax({
				type: "post",
				data: {"hourWage": hw},
				url: "${path}/hwModify",
				success: function(data){
					if(data == 'success'){
						alert("최저시급을 수정하였습니다. ");
						window.location.href="${path}/hourWageModify";
					}					
				}
			});
		});
	});
</script>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
<h1>시급: ${hourWage} </h1>
<h1>시급 수정: </h1>
<input id="mh" type="text"/>
<input type="button" id="hourWageM" value="수정" />
</body>
</html>