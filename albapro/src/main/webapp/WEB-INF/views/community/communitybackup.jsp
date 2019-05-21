<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "../include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="${path}/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css"  />
<link rel="stylesheet" type="text/css" href="${path}/resources/viewCss/blog-post.css"  />
<script>
$(function(){

	$("#btnWrite").click(function(){
		location.href="${path}/comm/write";
	});
	
	$("#hLogin").click(function(){
		location.href="${path}/board/login";
	});
	$("#hLogout").click(function(){
		location.href="${path}/board/logout";
	});
});
	// 원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
	function list(page){
		location.href="${path}/comm?curPage="+page+"&searchOption-${map.searchOption}"+"&keyword=${map.keyword}";
	}
</script>

</head>

<body>
  <div class="container">

<br>
<h2>게시판</h2>
	<c:if test="${login.id != null}">
		<button type="button" id="btnWrite">글쓰기</button>
	</c:if><br>
${map.count}개의 게시물이 있습니다. <br>
<form name="form1" method="post" action="${path}/comm">
		<select name="searchOption">
			<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
			<option value="all" <c:out value="${map.searchOption == 'all'?'selected':''}"/> >제목+아이디+내용</option>
			<option value="id" <c:out value="${map.searchOption == 'name'?'selected':''}"/> >아이디</option>
			<option value="p_content" <c:out value="${map.searchOption == 'p_content'?'selected':''}"/> >내용</option>
			<option value="title" <c:out value="${map.searchOption == 'title'?'selected':''}"/> >제목</option>
		</select>
		<input name="keyword" value="${map.keyword}">
		<input type="submit" value="조회">
	<!-- 로그인한 사용자만 글쓰기 버튼을 활성화 -->

</form>
<table class="table table-striped table-bordered table-hover">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>아이디</th>
		<th>날짜</th>
		<th>조회수</th>		
	</tr>
<c:forEach var="row" items="${map.list }" >
	<tr>
		<th>${row.p_code }</th>
		<th> 
			<a href="${path}/comm/view?p_code=${row.p_code}&curPage=${map.boardPager.curPage}&searchOption=${map.searchOption}&keyword=${map.keyword}">${row.title }</a>
			<c:if test="${row.recnt > 0}">
				<span style="color:red;">( ${row.recnt})</span>
			</c:if>
		</th>
		<th>${row.id }</th>
		<th><fmt:formatDate value="${row.p_date }" pattern="yyyy-MM-dd HH:mm:ss" /></th>
		<th>${row.viewcnt }</th>		
	</tr>
</c:forEach>
		<!-- 페이징 -->
		<tr>
			<td colspan="5">
				<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
				<c:if test="${map.boardPager.curBlock > 1}">
					<a href="javascript:list('1')">[처음]</a>
				</c:if>
				
				<!-- 이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
				<c:if test="${map.boardPager.curBlock > 1}">
					<a href="javascript:list('${map.boardPager.prevPage}')">[이전]</a>
				</c:if>
				
				<!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 -->
				<c:forEach var="num" begin="${map.boardPager.blockBegin}" end="${map.boardPager.blockEnd}">
					<!-- 현재페이지이면 하이퍼링크 제거 -->
					<c:choose>
						<c:when test="${num == map.boardPager.curPage}">
							<span style="color: red">${num}</span>&nbsp;
						</c:when>
						<c:otherwise>
							<a href="javascript:list('${num}')">${num}</a>&nbsp;
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
				<c:if test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
					<a href="javascript:list('${map.boardPager.nextPage}')">[다음]</a>
				</c:if>
				
				<!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
				<c:if test="${map.boardPager.curPage <= map.boardPager.totPage}">
					<a href="javascript:list('${map.boardPager.totPage}')">[끝]</a>
				</c:if>
			</td>
		</tr>
		<!-- 페이징 -->
</table>
</div>
</body>
</html>