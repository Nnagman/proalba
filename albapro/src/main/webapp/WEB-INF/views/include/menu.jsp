<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
<<<<<<< HEAD

	<div class="container">
	<ul class="nav">
		<li class="menuLi">
			<a class="menuLink" href="${path }/">MAIN</a>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path }/pservice">개인서비스</a>
<!-- 			Full Down Menu -->			
			<div class="fulldrop">
				<div class="column">
					<h3>이력서 등록 관리</h3>
					<ul>
						<li><a href="#">새 이력서 작성</a>
						<li><a href="#">이력서 관리</a>
					</ul>
				</div>
				
				<div class="column">
					<h3>지원 관리</h3>
					<ul>
						<li><a href="#">전자 근로계약서</a>
						<li><a href="#">취업활동 증명서</a>
					</ul>
				</div>
				
				<div class="column">
					<h3>근태 기록</h3>
					<ul>
						<li><a href="#">근태 기록 관리/조회</a>
					</ul>
				</div>
				
				<div class="column">
					<h3>급여 관리</h3>
					<ul>
						<li><a href="#">급여 조회</a>
					</ul>
				</div>
				
				<div class="column">
					<h3>경력 관리</h3>
					<ul>
						<li><a href="#">경력 조회</a>
					</ul>
				</div>
			</div>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path }/recruinfo">채용정보</a>
			<ul class="subMenu">
			
			</ul>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path }/cservice">고객센터</a>
			<ul class="subMenu">
			
			</ul>
		</li>
		<li>|</li>
		<li class="menuLi">
			<a class="menuLink" href="${path }/community">커뮤니티</a>
			<ul class="subMenu">
			
			</ul>
		</li>
		<li>|</li>
	</ul>
</div> 

=======
<div style-"text-align: center;">
	<a href="/">main</a>
	<a href="pservice" class="p-ser" >개인서비스</a>
	<a href="recruinfo" class="r-crui" >채용정보</a>
	<a href="cservice" class="c-ser" >고객센터</a>
	<a href="community" class="comm" >커뮤니티</a>
	<a href="login">로그인</a>
</div>
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git
