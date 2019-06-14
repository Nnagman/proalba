<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>프로알바</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="resources/css/bootstrap.css" />

<!-- 자체 css -->
<link rel="stylesheet" href="resources/css/addjobopening.css" />
<%@ include file="../include/header.jsp"%>


	<div class="container">
	
	
		<div class="addjob_div">

			<div class="doller_addjob">
				<p class="addjob_title">유료 등록</p>
				<br> <img src="resources/images/dollar-solid.png"
					class="addjob_img" />
				<p class="addjob_text">
					특정 금액을 지불하고 눈에 띄고<br> 효율적인 공고를 작성할 수 있습니다.
				</p>
				
				<button type="button" class="btn btn-primary btn-lg">공고 등록</button>
				
			</div>

			<div class="free_addjob">
				<p class="addjob_title">무료 등록</p>
				<br> <img src="resources/images/free.png" class="addjob_img" />
				<p class="addjob_text">
					무료로 공고 등록을 할 수 있습니다.<br> 메인화면에 표기 되지 않습니다.
				</p>
				
				<button type="button" class="btn btn-primary btn-lg" onclick = "location.href = '${path}/addjobopening_free' ">공고등록</button>
				
			</div>
		</div>

	</div>
	<%@ include file="../include/footer.jsp"%>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="resources/js/jquery.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="resources/js/bootstrap.js"></script>
</body>
</html>