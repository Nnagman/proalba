<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>프로알바 가입</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="resources/js/signUp.js?ver=3"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="resources/js/bootstrap.js"></script>

<script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script>
<script src="resources/js/recruinfo/test13.js"></script>
<script src="resources/js/recruinfo/majorjson.js"></script>
<script src="resources/js/cserAddjobopening_freeSC.js?ver=2"></script>

<link rel="stylesheet" href="resources/css/signUp.css">
</head>
<body>
	<div id="wrap">
		
		<div class="header">
			
		</div>
		<div id="container">
			<div id="content">
				<div class="signUpForm-header">
					<h1>기업회원 가입</h1>
				</div>

				<!--개인 정보 동의 -->
				<form id="agree_form">
					<div class="all_agree">
						<p>
							<label></label> <input type="checkbox" id="all" name="all" />
							전체약관동의<br />
						</p>

						<p>
							<label> &nbsp;&nbsp;<input type="checkbox" id="c1"
								name="c1" /></label>
								프로알바 <a href="articles">이용약관</a> 동의 (필수)<br />
							
						</p>
						<p>
							<label> &nbsp;&nbsp;<input type="checkbox" id="c2"
								name="c2" /></label>
								<a href="pdata">개인정보처리방침</a> 동의 (필수)<br />
							
						</p>
					</div>
				</form>

				<!-- 회원 정보 입력 폼 -->

				<form name="signUpForm" id="form">
				
					<table>
						<tbody>
							<tr>
								<th>아이디</th>

								<td>
									<input type="text" name="id" id="id" class="tBox tId" maxlength="16" placeholder="6~16자 영문, 숫자" title="아이디">

									<input type="button" id="double_check" value="중복확인" />
								</td>
							</tr>



							<tr>
								<th>비밀번호</th>
								<td><input type="password" name="password"
									class="tBox tPwd" id="dev_pwd1" maxlength="16"
									placeholder="6~16자 영문, 숫자, 특수문자" title="비밀번호"
									autocomplete="off"></td>
							</tr>



							<tr>
								<th>비밀번호 확인</th>
								<td><input type="password" name="password2"
									id="dev_pwdconfirm" class="tBox tPWd" maxlength="16"
									title="비밀번호확인" autocomplete="off">
									<p class="compul" id="passwd_success">비밀번호가 일치합니다.</p>
									<p class="compul" id="passwd_danger">비밀번호가 일치하지 않습니다.</p></td>
							</tr>

              				<tr>
								<th>휴대폰 번호</th>
								<td><select id="dev_hphone1" name="Phone1"
									class="tBox joinBx tPhone" title="휴대폰 번호">
										<option value="010" selected>010</option>
										<option value="011">011</option>
										<option value="016">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
								</select> - 
									<input id="dev_hphone2" name="Phone2" class="tBox tPhone" type="text" title="휴대폰 번호" value="" size="4" maxlength="4"
									autocomplete="off"> - 
									<input id="dev_hphone3" name="Phone3" class="tBox tPhone" type="text" title="휴대폰 번호"
									value="" size="4" maxlength="4" autocomplete="off">
                                    <input id="phone" name="phone" value="" type="hidden"/>
									</td>
							</tr>
							
							<tr>
								<th>이메일</th>
								<td>
									<input type="text" class="tBox tEmail" id="dev_M_Email" maxlength="25" title="이메일계정" autocomplete="off"> 
										<span> @</span> 
									<input type="text" name="EmailDomain" class="tBox tEmail email2" id="dev_mail_etc" maxlength="25" title="이메일계정">
							        <select class="sel2 tEmail" name="email_select" id="email_select">
							          <option value="1">직접입력</option>
							          <option value="naver.com">네이버</option>
							          <option value="daum.net">다음</option>
							          <option value="gmail.com">구글</option>
							          <option value="hanmail.net">한메일</option>
							          <option value="nate.com">네이트</option>
							        </select>
							        <input id="email" name="email" value="" type="hidden"/>
								</td>
							</tr>

							<tr>
								<td colspan="2" class="tLine">
									<hr />
								</td>
							</tr>

              <tr>
                <th>사업주</th>
                <td>
                  <input type="text" class="tBox comNum" name="name" id="comNum" size="10" maxlength="20" value="">
                </td>
              </tr>

              <tr>
                <th>사업자등록번호</th>
                <td>
                  <input type="text" class="tBox comNum" name="b_number" id="comNum" size="10" maxlength="10" value="">
                </td>
              </tr>
              
              <tr>
              	<th>사업체명</th>
              	<td>
              		<input type="text" class="tBox comName" name="work_place_name" id="comName" size="25" maxlength="25">
                    <input id="m_code" name="m_code" type="hidden" value="c">
              	</td>
              </tr>
              
              <tr>
              	<th>업종</th>
              	<td>
	              	<div class="jobcho-line1">
	              		<div class="jobchoice"></div>
						<input type="button" class="btn btn-light-green adr-btn jobchoice-btn" onclick="jsonout()" data-toggle="modal"data-target="#myModal" value="전체 카테고리"/>
					</div>
              	</td>
              </tr>
              
              <tr>
              	<th>사업장소개</th>
              	<td>
              		<textarea form="form" name="introduction"> </textarea>
              	</td>
              </tr>
              <tr>
              <th>주소</th>
              <td>
              <div class="search" style="margin-left:20%;"></div>
					
					<input type="text" id="sample6_postcode" class="addr" placeholder="우편번호"/>
					<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="btn btn-light-green adr-btn" id="address1" />
					<br>
					<input type="text" id="sample6_address" class="sample6_address" placeholder="주소"/>
					<input type="hidden" id="sample6_extraAddress" placeholder="참고항목"/>
					<input type="hidden" id="address" name="address"/>
					<input type="text" id="sample6_detailAddress" placeholder="상세주소"/>
					<input type="button" class="searchmap btn btn-light-green adr-btn" id="address" value="위치찾기"/>
              </td>
              </tr>
			</tbody>
		</table>
				<div id="map" style="width:60%;height:400px; margin-left:20%;" class="map"></div>
					<div class="btnfield">
						<button class="btn btn-dark" id="btn_signup" value="가입하기" disabled>가입하기</button>
					</div>
				</form>
			</div>
		</div>
	
	
	
	
	
	</div>
	
	
	
	
	<!-- 다음 지도 api  -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a746e8d90125d9464009ac37f598586f&libraries=services"></script>
   <script src="//dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<!-- 다음 지도 api  -->
	
	<!-- 다음지도 script -->
<script>
   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   mapOption = {
       center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
       level: 3 // 지도의 확대 레벨
   };  
   //지도를 생성합니다    
   var map = new daum.maps.Map(mapContainer, mapOption); 
</script>
	<!-- 다음지도 script -->
	
	
	<!--주소대로 맵에 표시하기 -->
	<script>
   $(document).on('click','.searchmap',function(){
      var address1 = $('.sample6_address').val();   
      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new daum.maps.services.Geocoder();
      // 주소로 좌표를 검색합니다
      geocoder.addressSearch(address1, function(result, status) {
          // 정상적으로 검색이 완료됐으면 
          if (status === daum.maps.services.Status.OK) {
             var coords = new daum.maps.LatLng(result[0].y, result[0].x);   
             var pricoordsx = new daum.maps.LatLng(result[0].y);   
             var pricoordsy = new daum.maps.LatLng(result[0].x); 
             console.log(pricoordsx.jb);
             console.log(pricoordsy.jb);
             $('#coordinate').val(pricoordsx.jb+','+pricoordsy.jb);
              // 결과값으로 받은 위치를 마커로 표시합니다
              var marker = new daum.maps.Marker({ map: map, position: coords });
              // 인포윈도우로 장소에 대한 설명을 표시합니다
              var infowindow = new daum.maps.InfoWindow({ content: '<div style="width:150px;text-align:center;padding:6px 0;">매장위치</div>' });
              infowindow.open(map, marker);
              // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
              map.setCenter(coords);
          } 
      });    
   });
</script>
		<!--주소대로 맵에 표시하기 -->
		
		        <!-- 주소찾기 api  -->
            <script type="text/javascript">
            
            function execDaumPostcode(){
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var addr = ''; // 주소 변수
                        var extraAddr = ''; // 참고항목 변수

                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                            addr = data.roadAddress;
                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                            addr = data.jibunAddress;
                        }

                        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                        if(data.userSelectedType === 'R'){
                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                extraAddr += data.bname;
                            }
                            // 건물명이 있고, 공동주택일 경우 추가한다.
                            if(data.buildingName !== '' && data.apartment === 'Y'){
                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                            if(extraAddr !== ''){
                                extraAddr = ' (' + extraAddr + ')';
                            }
                            // 조합된 참고항목을 해당 필드에 넣는다.
                            document.getElementById("sample6_extraAddress").value = extraAddr;
                        
                        } else {
                            document.getElementById("sample6_extraAddress").value = '';
                        }

                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        document.getElementById('sample6_postcode').value = data.zonecode;
                        document.getElementById("sample6_address").value = addr;
                        // 커서를 상세주소 필드로 이동한다.
                        document.getElementById("sample6_detailAddress").focus();
                    }
                }).open();
            }

            
            </script>
		<!-- 주소찾기 api  -->
		
		
	<div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog modal-lg">
         <script src="resources/js/bootstrap.js"></script>
         <!-- Modal content  -->
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               <h4 class="modal-title">직종 선택</h4>
            </div>
            <div class="modal-body">
               <div class="jobcho1"></div>
               <div class="jobcho2"></div>
               <div class="jobcho3-title">선택된 직종</div>
               <div class="jobcho3"></div>
               <button class="btn btn-default btn-sejob" data-dismiss="modal">선택 완료</button>
               <button class="btn btn-default btn-remove">모두지우기</button>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
   </div>
</body>
<script>
       //이용약관 동의
 var doc = document;
 var agree_form = doc.getElementById('agree_form');
 var inputs = agree_form.getElementsByTagName('INPUT');
 var agree_form_data = {
   "c1": false,
   "c2": false,
   "c3": false
 };
 var c1 = doc.getElementById('c1');
 var c2 = doc.getElementById('c2');
 var c3 = doc.getElementById('c3');
 function checkboxListener() {
   agree_form_data[this.name] = this.checked;
   if(this.checked) {
     // submit 할때 체크하지 않아 색이 변한 font 를 다시 원래 색으로 바꾸는 부분.
     this.parentNode.style.color = "#000";
   }
 }
   c1.onclick = c2.onclick = c3.onclick = checkboxListener;
   var all = doc.getElementById('all');
   all.onclick = function() {
     if (this.checked) {
       setCheckbox(agree_form_data, true);
     } else {
       setCheckbox(agree_form_data, false);
     }
   };
   function setCheckbox(obj, state) {
     for (var x in obj) {
       obj[x] = state;
       for(var i = 0; i < inputs.length; i++) {
         if(inputs[i].type == "checkbox") {
           inputs[i].checked = state;
         }
       }
     }
   }
       </script>
       <script>
            $(document).ready(function(){
             $("#passwd_success").hide();
             $("#passwd_danger").hide();
             $("#dev_pwdconfirm").keyup(function(){
                     var pwd1=$("#dev_pwd1").val();
                     var pwd2=$("#dev_pwdconfirm").val();
                     if(pwd1 != "" || pwd2 != ""){
                             if(pwd1 == pwd2){
                                     $("#passwd_success").show();
                                     $("#passwd_danger").hide();
                                     $("#submit").removeAttr("disabled");
                             }else{
                                     $("#passwd_success").hide();
                                     $("#passwd_danger").show();
                                     $("#submit").attr("disabled", "disabled");
                             }
                     }
             });
		


        $("#double_check").click(function(){
			var id = $("#id").val();
			
			$.ajax({
				async: false,
				type: 'POST',
				data: id,
				url: '${path}/idcheck',
				dataType: 'json',
				contentType: 'application/json; charset=UTF-8',
				success: function(data){
	                if (data.cnt > 0) {
	                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
	                    $("#dev_idchk").focus();
	                } else {
	                    alert("사용가능한 아이디입니다.");
	                    $("#dev_pwd1").focus();
	                    $("#btn_signup").removeAttr("disabled");
	                    $("#dev_idchk").attr("disabled");
	            		var m_code = 'c'+$('#id').val();
	            		console.log(m_code);
	            		$("#m_code").val(m_code);
	                }
	            },
	            error : function(error) {
	                alert("error : " + error);
	            }
			});
		});
        
		$("#email_select").change(function () {
		    if ($("#email_select").val() != "1") {
		      $("#dev_mail_etc").val($("#email_select").val());
		      $("#dev_mail_etc").attr("disabled", true);
		    }
		    if ($("#email_select").val() == "1") {
		      $("#dev_mail_etc").attr("disabled", false);
		    }
		  });

        $("#btn_signup").click(function(){
        	
            var email1,email2,email;
            email1 = $("#dev_M_Email").val();
			email2 = $("#dev_mail_etc").val();
			email = email1 + '@' + email2;
            $("#email").val("");
            $("#email").val(email);
        	
            var pnum1,pnum2,pnum3,p_Number;
            pnum1 = $("select[name=Phone1]").val();
            pnum2 = $("#dev_hphone2").val();
			pnum3 = $("#dev_hphone3").val();
			p_Number = pnum1+pnum2+pnum3;
			$( "#phone" ).val("");
			$("#phone").val(p_Number);
			console.log($("#phone").val());
			console.log(pnum1);
			console.log(pnum2);
            console.log(pnum3);
            
            var address = $("#sample6_postcode").val() + "/";
            address += $("#sample6_address").val() + "/";
            address += $("#sample6_detailAddress").val();
            $("#address").val(address);
            
        	var jobchoice = $('.jobchoice').html();
        	$('.jobchoice').append('<textarea name="job_type">'+jobchoice+'</textarea>');
			
            var formData = $("#form").serialize(); 
			$.ajax({
				async: false,
				type: 'POST',
				data: formData,
				url: '${path}/cregister',
				success: function(data){
                    alert("회원가입성공!");
	            },
	            error : function(error) {
	                alert("error : " + error);
	            }
			});
			
			//핸드폰 번호 숫자만 입력받기.
			$(".tPhone").on("keyup", function(){
				 $(this).val($(this).val().replace(/[^0-9]/g,""));
			});

		});
    });      
            </script>
            
            
            
    

<!-- <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uxsff7i3b6"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uxsff7i3b6&submodules=geocoder"></script>
<script src="resources/js/map.js?ver=5"></script> -->
<script src="resources/js/signUp_agree.js?ver=2"></script>
</html>