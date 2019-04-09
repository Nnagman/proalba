<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>������� - ���ξ˹�</title>
  <link rel="stylesheet" href="css/jobopeningManage.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
  <script src="resources/js/jquery.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
    $(function() {
      $( "#startSearchDate, #endSearchDate").datepicker({
          dateFormat: 'yy-mm-dd',
          prevText: '���� ��',
          nextText: '���� ��',
          showOn: "both",
          buttonImage: "images/date1.png",
          changeMonth: true,
          changeYear: true,
          changeMonth: true,
          dayNames: ['��', 'ȭ', '��', '��', '��', '��', '��'],
          dayNamesShort: ['��', 'ȭ', '��', '��', '��', '��', '��'],
          dayNamesMin: ['��', 'ȭ', '��', '��', '��', '��', '��'],
          monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
          monthNames: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
          showMonthAfterYear: true,
          yearSuffix: '��'
      });
    });
</script>
</head>
<body>
  <div class="contents">
    <h1>�������</h1>
    <div class="jobOpeningMenu">
      <!-- ����Ʈ �޴� -->
      <input type="radio" id="jo_all" name="tabs" checked>
      <label for="jo_all">��ü</label>
      <input type="radio" id="jo_ing" name="tabs"/>
      <label for="jo_ing">������</label>
      <input type="radio" id="jo_end" name="tabs"/>
      <label for="jo_end">������</label>
      <input type="radio" id="jo_wait" name="tabs"/>
      <label for="jo_wait">������</label>

      <div class="date_setting">
        <button type="button" name="button">��ü</button>
        <button type="button" name="button">3����</button>
        <button type="button" name="button">6����</button>
        <button type="button" name="button">1��</button>

        <input type="text" id="startSearchDate" style="height:18px; width:120px"> - <input type="text" id="endSearchDate" style="height:18px; width:120px">
        <input type="text" id="search" name="search" placeholder="�˻�" style="height:18px; width:170px">
        <button type="button" id="searchBtn" name="button"><i class="fas fa-search"></i></button>
      </div>

      <section id="content1">
        <p>��ü</p>
      </section>

      <section id="content2">
        <p>������</p>
      </section>

      <section id="content3">
        <p>������</p>
      </section>

      <section id="content4">
        <p>������</p>
      </section>
    </div>
  </div>
</body>
</html>
