<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
  src="https://code.jquery.com/jquery-3.3.1.slim.js"
  integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA="
  crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="resources/css/myqna.css?ver=1">
<script type="text/javascript" src="resources/js/myqna.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
<%@ include file = "../include/menu.jsp" %>
<div class="contents">
      <div class="title">
        <h1>나의 문의내역</h1>
        <img src="resources/images/상태.png" width="1200px">
      </div>
      <div class="tablebox">
        <table class="tab">
          <thead class="he">
            <tr>
              <th class="aa">문의일</th>
              <th class="aa">문의유형</th>
              <th class="tit">제목</th>
              <th class="aa">처리상태</th>
              <th class="aa">답변일</th>
            </tr>
          </thead>
          <tbody class="bo">
            <tr>
              <td>2019.4.11</td>
              <td>뚱이</td>
              <td class="tit2">제목</td>
              <td>스폰지밥</td>
              <td>징징이</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
</body>
</html>