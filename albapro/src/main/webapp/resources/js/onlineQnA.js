function categoryChange(e) {
        var detail_of_inquiry_0 = ["선택해주세요."];
        var detail_of_inquiry_1 = ["선택해주세요.", "회원정보 수정", "아이디/비밀번호 찾기", "사업자등록번호 변경", "회원가입/탈퇴", "휴대폰 인증"];
        var detail_of_inquiry_2 = ["선택해주세요.", "이력서 수정/관리", "휴대폰 인증"];
        var detail_of_inquiry_3 = ["선택해주세요.", "무통장입금", "카드 결제", "휴대폰 결제", "세금계산서", "환불 문의"];
        var detail_of_inquiry_4 = ["선택해주세요.", "모바일 웹", "모바일 앱"];
        var detail_of_inquiry_5 = ["선택해주세요.", "불편사항 개선 요청", "건의 사항"];
        var detail_of_inquiry_6 = ["선택해주세요.", "기타"];
        var target = document.getElementById("detail_of_inquiry");

        if(e.value == "1") var d = detail_of_inquiry_1;
        else if(e.value == "2") var d = detail_of_inquiry_2;
        else if(e.value == "3") var d = detail_of_inquiry_3;
        else if(e.value == "4") var d = detail_of_inquiry_4;
        else if(e.value == "5") var d = detail_of_inquiry_5;
        else if(e.value == "6") var d = detail_of_inquiry_6;
        else if(e.value == "0") var d = detail_of_inquiry_0;

        target.options.length = 0;

        for (x in d) {
          $("#detail_of_inquiry").append('<option value="'+x+'">'+d[x]+'</option>');
        }
      }

function fnOnlineSubmit(){

    if($.trim($("#type_of_inquiry option:selected").val()) == "0"){
      alert("문의유형을 선택하세요.");
      $("#type_of_inquiry").focus();
      return false;
    }

    if($.trim($("#detail_of_inquiry option:selected").val()) == "선택해주세요."){
      alert("문의유형을 선택하세요.");
      $("#type_of_inquiry").focus();
      return false;
    }

    if($.trim($("#title").val()) == ""){
      alert("제목을 입력하세요.");
      $("#title").focus();
      return false;
    }

    if($.trim($("#kkk").val()) == ""){
      alert("내용을 입력하세요.");
      $("#kkk").focus();
      return false;
    }

    if($.trim($("#usernm").val()) == ""){
      alert("작성자를 입력하세요.");
      $("#usernm").focus();
      return false;
    }

    if($.trim($("#email1").val()) == ""){
      alert("이메일을 입력하세요.");
      $("#email1").focus();
      return false;
    }

    if($.trim($("#email2").val()) == ""){
      alert("이메일을 입력하세요.");
      $("#email2").focus();
      return false;
    }

    var email = $("#email1").val() +"@"+ $("#email2").val();
    var pattern = /([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)\.([0-9a-zA-Z_-]+)/;
    if(!pattern.test(email)){
      alert("잘못된 이메일 입니다.");
      return false;
    }

    if($.trim($("#tel1").val()) == "" || $.trim($("#tel2").val()) == "" || $.trim($("#tel3").val()) == ""){
    alert("휴대폰 번호를 입력하세요.");
    return false;
  }

  if($("input:checkbox[id='agree']").is(":checked") == false){
    alert("개인정보 수집 및 이용에 동의해주세요.");
    $(".agree").focus();
    return false;
  }
  
  var d = new Date();
  var month = d.getMonth()+1;
  var s = d.getFullYear() + '-' + month + '-' + d.getDate() + ' ' + d.getHours() + ':' + d.getMinutes() + ':' + d.getSeconds();

  var service_type = $("#type_of_inquiry option:selected").text()+'/'+$("#detail_of_inquiry option:selected").text();
  var service_type_val = $("select[name=type_of_inquiry]").val()+'/'+$("select[name=detail_of_inquiry]").val();
  var cs_code = service_type_val+'/'+s+'/';
  $("#bt1").append('<input type="hidden" name="service_type"value="'+service_type+'"></input>');
  $("#bt1").append('<input type="hidden" name="cs_code"value="'+cs_code+'"></input>');
  p_Number = $("#tel1").val()+$("#tel2").val()+$("#tel3").val();
  alert(p_Number);
  $("#tel3").append('<input id="phone" name="phone" value="'+p_Number+'" type="text"/>');
  email = $("#email1").val()+'@'+$("#email2").val();
  $("#email2").append('<input id="email" name="email" value="'+email+'" type="hidden"/>');
  
  $("#bt1").after('<button type="submit" id="bt2"></button>');
  document.getElementById("bt2").click();
}

$('.agree').change(function(){
    var inputbox = $('.checkbox');
    var input = $(this);

    if( input.is(':chacked') ){
      inputbox.addClass('on')
    }else{
      inputbox.removeClass('on')
    }
  });

function onlyNumber() {
    if (((event.keyCode < 48) || (event.keyCode > 57)) && event.keyCode != 13){
      alert("숫자만 입력할 수 있습니다.");
      event.returnValue = false;
    }
  }

$(document).ready(function(){
	$("#email_select").change(function(){
		if($("#email_select").val() != "1"){
			$("#email2").val($("#email_select").val());
			$("#email2").attr("disabled", true);
			email2 = $("#email_select").val();
		}
		if($("#email_select").val() == "1"){
			$("#email2").attr("disabled", false);
		}
	});
});
