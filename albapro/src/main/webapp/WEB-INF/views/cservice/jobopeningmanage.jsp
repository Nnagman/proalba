<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>공고관리 - 프로알바</title>
  <link rel="stylesheet" href="css/jobopeningManage.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
  <script src="resources/js/jquery.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
    $(function() {
      $( "#startSearchDate, #endSearchDate").datepicker({
          dateFormat: 'yy-mm-dd',
          prevText: '이전 달',
          nextText: '다음 달',
          showOn: "both",
          buttonImage: "images/date1.png",
          changeMonth: true,
          changeYear: true,
          changeMonth: true,
          dayNames: ['월', '화', '수', '목', '금', '토', '일'],
          dayNamesShort: ['월', '화', '수', '목', '금', '토', '일'],
          dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
          monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
          monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
          showMonthAfterYear: true,
          yearSuffix: '년'
      });
    });
</script>
</head>
<body>
  <div class="contents">
    <h1>공고관리</h1>
    <div class="jobOpeningMenu">
      <!-- 디폴트 메뉴 -->
      <input type="radio" id="jo_all" name="tabs" checked>
      <label for="jo_all">전체</label>
      <input type="radio" id="jo_ing" name="tabs"/>
      <label for="jo_ing">공고중</label>
      <input type="radio" id="jo_end" name="tabs"/>
      <label for="jo_end">공고마감</label>
      <input type="radio" id="jo_wait" name="tabs"/>
      <label for="jo_wait">공고대기</label>

      <div class="date_setting">
        <button type="button" name="button">전체</button>
        <button type="button" name="button">3개월</button>
        <button type="button" name="button">6개월</button>
        <button type="button" name="button">1년</button>

        <input type="text" id="startSearchDate" style="height:18px; width:120px"> - <input type="text" id="endSearchDate" style="height:18px; width:120px">
        <input type="text" id="search" name="search" placeholder="검색" style="height:18px; width:170px">
        <button type="button" id="searchBtn" name="button"><i class="fas fa-search"></i></button>
      </div>

      <section id="content1">
        <p>전체</p>
      </section>

      <section id="content2">
        <p>공고중</p>
      </section>

      <section id="content3">
        <p>공고마감</p>
      </section>

      <section id="content4">
        <p>공고대기</p>
      </section>
    </div>
  </div>
</body>
</html>
