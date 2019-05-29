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
		
		
		var email1,email2,email;
		$("#email_select").change(function () {
		    if ($("#email_select").val() != "1") {
		      $("#dev_mail_etc").val($("#email_select").val());
		      $("#dev_mail_etc").attr("disabled", true);
		      var email2 = $("#email_select").val();
		    }
		    if ($("#email_select").val() == "1") {
		      $("#dev_mail_etc").attr("disabled", false);
		    }
		  });
		

        $("#btn_modi").click(function(){

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
			
            var formData = $("#infoModi").serialize(); 
			$.ajax({
				async: false,
				type: 'POST',
				data: formData,
				url: 'http://localhost:8080/proalba/pregisterModify',
				success: function(data){
                    alert("수정 성공");
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

