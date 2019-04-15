<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>공고관리 - 프로알바</title>
<link rel="stylesheet" href="resources/css/jobopeningmanage.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<%@ include file="../include/header.jsp"%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#startSearchDate, #endSearchDate").datepicker(
				{
					dateFormat : 'yy-mm-dd',
					prevText : '이전 달',
					nextText : '다음 달',
					showOn : "both",
					buttonImage : "resources/images/date1.png",
					changeMonth : true,
					changeYear : true,
					changeMonth : true,
					dayNames : [ '월', '화', '수', '목', '금', '토', '일' ],
					dayNamesShort : [ '월', '화', '수', '목', '금', '토', '일' ],
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					showMonthAfterYear : true,
					yearSuffix : '년'
				});
	});
</script>
 <script>
      $( document ).ready( function() {
        $( '.check_all' ).click( function() {
          $( '.check' ).prop( 'checked', this.checked );
        } );
      } );
    </script>
</head>
<body>
	<c:if
		test='${fn:substring(login.m_code,0,1) == "c" && login.m_code != null}'>
		<%@ include file="../include/cmenu.jsp"%>
	</c:if>
	<form>
		<div class="contents">
			<h1>공고관리</h1>
			<div class="jobOpeningMenu">
				<!-- 디폴트 메뉴 -->
				<input type="radio" id="jo_all" name="tabs" checked> <label
					for="jo_all">전체</label> <input type="radio" id="jo_ing" name="tabs" />
				<label for="jo_ing">공고중</label> <input type="radio" id="jo_end"
					name="tabs" /> <label for="jo_end">공고마감</label>

				<div class="date_setting">
					<button type="button" name="button">전체</button>
					<button type="button" name="button">3개월</button>
					<button type="button" name="button">6개월</button>
					<button type="button" name="button">1년</button>

					<input type="text" id="startSearchDate"
						style="height: 18px; width: 120px"> - <input type="text"
						id="endSearchDate" style="height: 18px; width: 120px"> <input
						type="text" id="search" name="search" placeholder="검색"
						style="height: 18px; width: 170px">
					<button type="button" id="searchBtn" name="button">
						<i class="fas fa-search"></i>
					</button>
				</div>

				<div class="jobOpeningStatus">
					<input type="button" id="select_end" name="선택마감" value="선택마감">
					<input type="button" id="re_register" name="재등록" value="재등록">
				</div>

				<section id="content1">
					<table class="table">
						<thead class="thead-light">
							<tr>
								<th><input type="checkbox" class="check_all"/></th>
								<th>등록일</th>
								<th>게재현황</th>
								<th class="job">채용공고</th>
								<th>열람 횟수</th>
							</tr>
						</thead>
						<tbody>
					<%-- <c:forEach items="${ }" var=""> --%>
							<tr>
								<td><input type="checkbox" class="check"/></td>
								<td>20180409</td>
								<td>게재중</td>
								<td>공고</td>
								<td>10</td>
							</tr>
						</tbody>
					<%-- </c:forEach> --%>
					</table>
				</section>

				<section id="content2">
					<p>공고중</p>
				</section>

				<section id="content3">
					<p>공고마감</p>
				</section>
			</div>
		</div>
	</form>
</body>
</html>
