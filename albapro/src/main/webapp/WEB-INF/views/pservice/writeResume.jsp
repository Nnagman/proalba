<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>프로알바</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link rel="stylesheet" href="resources/css/writeResume.css" />
<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/writeResume.js"></script>
</head>
<%@ include file = "../include/header.jsp" %>	
<%@ include file = "../include/menu.jsp" %>
<body id="secMem" class="memResWp memResSimple">
	<form name="form" action="target" method="post">
		<div class="contents">
			<div id="content">
				<div class="rsSimpleWrite">
					<div class="rsSec rsSecPersonal edit simple">
						<h2 class="th">
							<span class="sq">*</span>
							개인기본정보
							<span>가입 시 등록한 개인정보를 한번 더 확인하세요.</span>
						</h2>
						<!-- 개인기본정보 -->
						<table class="rsTbl">
							<caption>
								<span class="skip">개인기본정보</span>
							</caption>
							<colgroup>
								<col width="165px;">
								<col width="20%">
								<col width="*">
							</colgroup>
							<tbody id="dev_personal_info">
								<tr>
									<td rowspan="6">
										<img id="ps_photo" src="http://placehold.it/112x148" alt="ps_photo"></img>
										<br>
										<label for="photo_add">사진등록</label>
										<input type="file" id="photo_add" multiple accept="images/*" onchange="loadFile(this)" />
									</td>
									<td colspan="2">
										<span class="nameWp">
											<span class="name">XXX</span>
											<span class="sex">
												<em>x성xx세</em>
											</span>
										</span>
									</td>
								</tr>
								<tr>
									<th class="sTit">
										<i class="fas fa-mobile-alt"></i>
										<span class="tHp">휴대폰</span>
									</th>
									<td class="hp">010-0000-0000</td>
								</tr>
								<tr>
									<th class="sTit">
										<i class="fas fa-envelope"></i>
										<span class="tEmail">이메일</span>
									</th>
									<td class="email">xxxx@naver.com</td>
								</tr>
								<tr>
									<th class="sTit">
										<i class="fas fa-home"></i>
										<span class="tAddr">주　소</span>
									</th>
									<td class="addr">xx시 x구 xx동
										
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 이력서 제목 -->
					<div id="m1" class="rsSec rsSecTitle">
						<fieldset>
							<table id="rsSec rsSecTitle">
								<colgroup>
									<col width="21%">
									<col width="79%">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" class="mTit">
											<label for="dev_sr_title">
												<span class="sq">*</span>
												이력서제목
											</label>
										</th>
										<td>
											<input type="text" name="M_Resume_Title" id="dev_sr_title" maxlength="24" value>
											<p class="cont">
												<em id="dev_sr_title_cnt"></em>
											</p>
										</td>
									</tr>
								</tbody>
							</table>
						</fieldset>
					</div>
					<!-- 희망 근무지 -->
					<div id="m3" class="rsSec rsSecArea">
				 		<fieldset>
				 			<table class="rsTbl">
				 				<colgroup>
				 					<col width="21%">
									<col width="79%">
				 				</colgroup>
								<tbody>
									<tr>
										<th class="mTit">
											<span class="sq">*</span>
											희망 근무지
										</th>
										<td>
											<div id="dev_sr_area_selectbox">
												<p id="dev_duty_code_0">
													<select class="Duty_Si_code0" name="Duty_Si_Code" style="width:150px;" title="시/도 입력">
														<option value="F000" required>대구광역시</option>
													</select>
													<select class="Duty_Gu_Code0" name="Duty_Gu_Code" style="width:150px;" title="시/군/구입력" required>
														<option value="F010">남구</option>
														<option value="F020">달서구</option>
														<option value="F020">달성군</option>
														<option value="F020">동구</option>
														<option value="F020">북구</option>
														<option value="F020">서구</option>
														<option value="F020">수성구</option>
														<option value="F020">중구</option>
													</select>
												</p>
											</div>
										</td>
									</tr>
								</tbody>
				 			</table>
				 		</fieldset>
					</div>
					<!-- 희망직종 선택 -->
					<div id="m4" class="rsSec rsSecPart">
						<fieldset>
							<table class="rsTbl">
								<colgroup>
									<col width="21%">
									<col width="79%">
								</colgroup>
								<tbody>
									<tr>
										<th class="mTit">
											<label for="lb_partSch_1">
											<span class="sq">*</span>
											희망 직종 선택
											</label>
										</th>
										<td>
											<p>
												<input type="text" width="335px;" id="dev_sr_part_search" name="sr_part_search" data-toggle="modal" data-target="#myModal" value="">
											</p>
										</td>
									</tr>
								</tbody>
							</table>
						</fieldset>
					</div>
				</div>
			</div>
		</div>
		
		
<!-- 부트스트랩 희망직종 새화면 띄우기 -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">직종선택</h4>
        </div>
        <div class="modal-body">
        <div class="modal_container">
          <div class="div_sel_job">
          
         <!--  <table>
          
          	<tr>
          		<td>경영 사무(1)</td>
          	</tr>
          
          	<tr>
          		<td>영업 고객상담(2)</td>
          	</tr>
          	
          	<tr>
          		<td>IT 인터넷(4)</td>
          	</tr>
          	
          	<tr>
          		<td>전문직(5)</td>
          	</tr>
          	
          	<tr>
				<td>서비스(11)</td>          	
          	</tr>
          	
          	<tr>
          		<td>경영 사무(1)</td>
          	</tr>
          </table> -->
          <div class="list-group">

  <ul>
  <li class="list-group-item">Dapibus ac facilisis in</li>
   <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
  </ul>
</div>
         
        </div>
         <div class="div_sel_job1">
         	<Table class="table_job_detail">
         	 
         	 <tr>
         	 	<td><input type="checkbox" value="all"/>전체</td> <td><input type="checkbox" value="shop_manager"/>매장관리 판매</td> <td><input type="checkbox" value="serving"/>서빙</td>
         	 	
         	 </tr>
         	 
         	 <Tr>
         	 <td><input type="checkbox" value="all"/>전체</td> <td><input type="checkbox" value="shop_manager"/>매장관리 판매</td> <td><input type="checkbox" value="serving"/>서빙</td>
         	 </Tr>
         	 <tr>
         	 <td><input type="checkbox" value="all"/>전체</td> <td><input type="checkbox" value="shop_manager"/>매장관리 판매</td> <td><input type="checkbox" value="serving"/>서빙</td>
         	 </tr>
         	</Table>
         </div>
       </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
	</form>
</body>
</html>