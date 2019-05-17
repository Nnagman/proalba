<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>부트스트랩 101 템플릿</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="resources/css/bootstrap.css" />

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<%@ include file="../include/header.jsp"%>

<body>


	<div class="container">

		<div class="card-deck">
			<!-- 파워링크 -->
			<div class="bd-example">
				<div id="carouselExampleCaptions" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleCaptions" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
						<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="resources/images/1.jpg" class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>First slide label</h5>
								<p>Nulla vitae elit libero, a pharetra augue mollis
									interdum.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="resources/images/2.jpg" class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>Second slide label</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="resources/images/3.jpg" class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>Third slide label</h5>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur.</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleCaptions"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="card">
				<img src="resources/images/광고.jpg" class="advertisecard-img-top"
					alt="...">

			</div>
		</div>


		<!-- 카드댁 시작	 -->
		<div class="card-deck">
			<div class="card">
				<img src="resources/images/rogo.png" class="card-img-top"
					alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">집가자</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img src="resources/images/rogo.png" class="card-img-top"
					alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">ㅇㅈ? ㅇㅇㅈ</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img src="resources/images/rogo.png" class="card-img-top"
					alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">집가자.</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
		</div>

		<!-- 	두번째 카드덱 라인-->
		<br>
		<div class="card-deck">
			<div class="card">
				<img src="resources/images/rogo.png" class="card-img-top"
					alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">집갈때 됐다</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img src="resources/images/rogo.png" class="card-img-top"
					alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">ㅇㅈ? ㅇㅇㅈ</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			
			<div class="card">
				<img src="resources/images/rogo.png" class="card-img-top"
					alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">집가자.</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
		</div>
		<!-- 3번째 카드덱 -->
		<br>
		<div class="card-deck">
			<div class="card">
				<img src="resources/images/rogo.png" class="card-img-top"
					alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">집갈때 됐다</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			
			<div class="card">
				<img src="resources/images/rogo.png" class="card-img-top"
					alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">ㅇㅈ? ㅇㅇㅈ</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			
			<div class="card">
				<img src="resources/images/rogo.png" class="card-img-top"
					alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">집가자.</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
		</div>
		

	</div>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="resources/js/jquery.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="resources/js/bootstrap.js"></script>
</body>
</html>