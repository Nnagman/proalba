function categoryChange(e) {
        var good_q = ["선택해주세요."];
        var good_a = ["선택해주세요.", "회원정보 수정", "아이디/비밀번호 찾기", "사업자등록번호 변경", "회원가입/탈퇴", "휴대폰 인증"];
        var good_b = ["선택해주세요.", "채용공고 등록", "채용공고 수정/관리"];
        var good_c = ["선택해주세요.", "이력서 수정/관리", "휴대폰 인증"];
        var good_d = ["선택해주세요.", "채용정보 검색"];
        var good_e = ["선택해주세요.", "무통장입금", "카드 결제", "휴대폰 결제", "세금계산서", "환불 문의"];
        var good_f = ["선택해주세요.", "모바일 웹", "모바일 앱"];
        var good_g = ["선택해주세요.", "불편사항 개선 요청", "건의 사항"];
        var good_h = ["선택해주세요.", "기타"];
        var target = document.getElementById("good");

        if(e.value == "a") var d = good_a;
        else if(e.value == "b") var d = good_b;
        else if(e.value == "c") var d = good_c;
        else if(e.value == "d") var d = good_d;
        else if(e.value == "e") var d = good_e;
        else if(e.value == "f") var d = good_f;
        else if(e.value == "g") var d = good_g;
        else if(e.value == "h") var d = good_h;
        else if(e.value == "q") var d = good_q;

        target.options.length = 0;

        for (x in d) {
          var opt = document.createElement("option");
          opt.value = d[x];
          opt.innerHTML = d[x];
          target.appendChild(opt);
        }
      }

function checkemailaddy(){
    if (form.email_select.value == '1') {
        form.email2.readonly = false;
        form.email2.value = '';
        form.email2.focus();
    }
    else {
        form.email2.readonly = true;
        form.email2.value = form.email_select.value;
    }
}

function fnOnlineSubmit(){

    if($.trim($("#check option:selected").val()) == "q"){
      alert("문의유형을 선택하세요.");
      $("#check").focus();
      return false;
    }

    if($.trim($("#good option:selected").val()) == "선택해주세요."){
      alert("문의유형을 선택하세요.");
      $("#check").focus();
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
