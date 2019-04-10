<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
  src="https://code.jquery.com/jquery-3.3.1.slim.js"
  integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA="
  crossorigin="anonymous"></script>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/contract.css?ver=1">
<script type="text/javascript" src="resources/js/contract.js"></script>
<title>전자 근로계약서-프로알바</title>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
<%@ include file = "../include/menu.jsp" %>
    <div class="contents">
      <div class="title">
        <h1>전자 근로계약서 - 상세보기</h1>
      </div>
      <form id="formCon" name="formCon" method="post" action="${path}/board/insert.do">
      <div class="box">
        <br>
        <h2 class="gg">1. 근로계약기간</h2><br>
        <input class="tex1" type="text" maxlength="4" />
        <span>년</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>월</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>일  부터</span>
        <br>
        <input class="tex1" type="text" maxlength="4" />
        <span>년</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>월</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>일 까지</span>
        <br><br><br>

        <h2 class="gg">2. 근무장소</h2><br>
        <input class="tex3" type="text" />
        <br><br><br>

        <h2 class="gg">3. 업무의 내용</h2><br>
        <input class="tex3" type="text" />
        <br><br><br>

        <h2 class="gg">4. 소정근로시간</h2><br>
        <input class="tex4" type="text" maxlength="2" />
        <span>시</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>분 부터 </span>
        <input class="tex2" type="text" maxlength="2" />
        <span>시</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>분 까지 (휴게시간 :</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>시</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>분 ~ </span>
        <input class="tex2" type="text" maxlength="2" />
        <span>시</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>분)</span>
        <br><br><br>

        <h2 class="gg">5. 근무일/휴일</h2><br>
        <span class="t1">매주 </span>
        <input class="tex2" type="text" maxlength="2" />
        <span>일(또는 매일단위) 근무, </span>
        <span class="t2">주휴일 매주 </span>
        <input class="tex5" type="text" maxlength="1" />
        <span class="t2">요일</span>
        <br><br><br>

        <h2 class="gg">6. 임금</h2><br>
        <span class="t1">ㅡ  월(일, 시간)급 : </span>
        <input class="tex6" type="text" />
        <span>원</span><br><br>
        <span class="t1">ㅡ  기타 급여(재수당 등) </span>
        <input class="ra" id="y" name="hh" type="radio" /><span>있음 </span>
        <input class="ra" id="n" name="hh" type="radio" /><span>없음 </span><br><br>
        <span class="t1">ㅡ  임금지급일 : 매월(매주 또는 매일) </span>
        <input class="tex2" type="text" maxlength="2" /><span>일(휴일의 경우는 전일 지급)</span><br><br><br>

        <h2 class="gg">7. 연차유급휴가</h2><br>
        <span class="t1">ㅡ  연차유급휴가는 근로기준법에서 정하는 바에 따라 부여함</span>
        <br><br><br>

        <h2 class="gg">8. 사회보험 적용여부(해당란에 체크)</h2><br>
        <input class="che" type="checkbox" /><span>고용보험</span>
        <input class="che2" type="checkbox" /><span>산재보험</span>
        <input class="che2" type="checkbox" /><span>국민연금</span>
        <input class="che2" type="checkbox" /><span>건강보험</span>
        <br><br><br><br>

        <h2 class="gg">9. 근로계약서 교부</h2><br>
        <span class="t1">ㅡ  사업주는 근로계약을 체결함과 동시에 본 계약서를 사본하여 근로자에게 교부함</span><br>
        <span class="sp1">(근로기준법 제17조 이행)</span>
        <br><br><br><br><br><br>
        <input class="tex7" type="text" maxlength="4" />
        <span>년</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>월</span>
        <input class="tex2" type="text" maxlength="2" />
        <span>일</span>
        <br><br><br><br>

        <hr><br>

        <h2 class="hh">사업주</h2><br>
        <span class="t3">사업체명: </span>
        <input class="tex8" type="text" />
        <span class="sp3">대표자: </span>
        <img class="im" id="myImage"><br><br> <!-- 캔버스로 그린거 이미지로 변환한 이미지 -->
        <span class="t3">전화: </span>
        <input class="tex2" type="text" maxlength="3" /><span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" /><span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" /><br><br>
        <span class="t3">주소: </span>
        <input class="tex10" type="text" />
        <br><br><br>
        
        <h2 class="hh">근로자</h2><br>
        <span class="t3">연락처: </span>
        <input class="tex2" type="text" maxlength="3" /><span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" /><span>ㅡ</span>
        <input class="tex9" type="text" maxlength="4" />
        <span class="sp2">근로자: </span><br><br>
        <span class="t3">주소: </span>
        <input class="tex10" type="text" /><br><br><br><br>
        <canvas class="can1" id="myCanvas" style="background-color:#f0f0f0" width="300" height="150">
        </canvas>
        <button class="bt1" onclick="toDataURL();">서명 저장</button><br><br>
        <button class="bt2" onclick="toDataURL();">근로계약서 보내기</button>
        </div>
   	 </form>    
      </div>
</body>
</html>