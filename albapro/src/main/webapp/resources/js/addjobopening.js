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

$(function(){
	var address1,address2,address3,address4,address;
	var d = new Date();
	var date = d.getFullYear() + '' + (d.getMonth()+1) + '' + d.getDate() + ''
				+ d.getHours() + '' + d.getMinutes() + '' + d.getSeconds();
	var date2 = d.getFullYear() + '-' + (d.getMonth()+1) + '-' + d.getDate();
	
	$("#submit").click(function(){
		address1 = $("#sample6_postcode").val();
		address2 = $("#sample6_address").val();
		address3 = $("#sample6_detailAddress").val();
		address4 = $("#sample6_extraAddress").val();
		address=address1+address2+address4+address3;
		$("#sample6_extraAddress").append('<input name="address" value="'+address+'" type="text"/>');
		console.log(address1);
		console.log(address2);
		console.log(address3);
		console.log(address4);
		var n_code = 'c'+$('#id').val()+date;
		$("#sample6_extraAddress").append('<input name="n_code" value="'+n_code+'" type="text"/>');
		var age="1";
		if($("#age_set").val() == "1"){
			age = "1"
			
		}else {
			age = $("#age_min").val() + '/' + $("#age_max").val();
		}
		
		$("#sample6_extraAddress").append('<input name="age" value="'+age+'" type="text"/>');
		var m_code = 'c'+$('#id').val();
		var content = $('#content').val();
		$("#sample6_extraAddress").append('<input name="m_code" value="'+m_code+'" type="text"/>');
		$("#sample6_extraAddress").append('<input name="job_type" value="1" type="text"/>');
		$("#sample6_extraAddress").append('<input name="p_date" value="'+date2+'" type="text"/>');
		$("#sample6_extraAddress").append('<input name="viewcnt" value="0" type="text"/>');
	});
});