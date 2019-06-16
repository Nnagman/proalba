function hiddendiv() {
	var checkpreconditionschoice1 = document.getElementById("recruUnchecked1");
	
	if (checkpreconditionschoice1.checked == true) {
		var str1 = '<select class="schcho" id="schcho"><option>고등학교졸업이상</option><option>대학졸업(2,3년)이상</option>';
		var str2 = '<option>대학졸업(4년)이상</option><option>석사졸업이상</option><option>박사졸업이상</option><option>졸업예정</option></select>';
		var str = str1 + str2;
		$("#education_box").append(str);
		checkpreconditionschoice1.disabled = true;
	}
	
	if (document.getElementById("recruUnchecked2").checked == true){
		checkpreconditionschoice1.disabled = false;
		$("#schcho").remove();
	}

}

function hiddendiv2() {
	var checkBox = document.getElementById("appperiod-tel");
	var checkBox2 = document.getElementById("appperiod-online");
	var checkBox3 = document.getElementById("appperiod-Visit");
	
	if (checkBox2.checked == true) {
		var str1 = '<div id="appperiod-hidden-online"><br><div class="documents">필요한 제출서류<br><textarea form="form" name="documents" id="documents"></textarea>';
		var str2 = '</div><div class="interview">사전인터뷰<br><textarea form="form" name="interview" id="interview"></textarea></div></div>';
		$(".appperiod-how").append(str1+str2);
		checkBox2.disabled = true;
	}
	
	if (checkBox2.checked != true) {
		$("#appperiod-hidden-online").remove();
		checkBox2.disabled = false;
	}

/* 모집 방법 전화 아래 번호입력란*/
	/*	if (checkBox.checked == true) {
		$("#appperiod-hidden-tel").remove();
		var str1 = '<div id="appperiod-hidden-tel">담당자 번호:<select class="President-num" id="President-num"><option>010</option><option>011</option>';
		var str2 = '<option>016</option><option>017</option><option>019</option></select> - <input type="text" class="President-num1"> -<input type="text" class="President-num2"></div>';
		$(".appperiod-how").append(str1+str2);
		
		checkBox.disabled = true;
	}*/
	/* 모집 방법 전화 아래 번호입력란*/
	if(checkBox.checked != true) {
		$("#appperiod-hidden-tel").remove();
		checkBox.disabled = false;
	}
}

var mycont = Object.keys(arrJobCodeWide.JOBCD).length;
var mycont2 = Object.keys(arrJobCodeMid.JOBCD).length;
var mymajorlen = Object.keys(amajorser.content).length;
var jobchoid = [];
var jobchotext = [];


/*------------------오늘 날짜------------------------------*/


var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
if(dd<10) {
    dd='0'+dd
} 
if(mm<10) {
    mm='0'+mm
} 
today = yyyy+'/' + mm+'/'+dd;


var st_date = new Date().toISOString().substr(0, 10).replace('T', ' ');






$(document).ready(function(){
	var tod = $('.today1');
	$('<p></p>').text(st_date).appendTo(tod);	
	$('<input type="hidden" name="p_date" value="'+st_date+'"/>');
});

function jsonout() {
	var modal = $('.jobcho1');
	$('.jobcho1').text('');
	$('.jobcho2').text('');
	$('.jobchoice').text('');
	$('.jobcho3').text('');
	 jobchoid =[];

	 jobchotext =[];

	

	for (i = 0; i < mycont; i++) {

		$('<p></p>').attr('id', '0' + [ i + 1 ] + '000000').addClass(
				'jobcho-de').text(arrJobCodeWide.JOBCD[i].NM).appendTo(modal);

	}
	$('.jobcho-de').click(
			function() {
				var modal2 = $('.jobcho2');
				$(modal2).text('');

				var id = $(this).attr('id');

				for (i = 0; i < mycont2; i++) {
					if (id == arrJobCodeMid.JOBCD[i].MCD) {

						$('<p></p>').addClass('jobcho-de2').attr('id',
								arrJobCodeMid.JOBCD[i].CD).text(
								arrJobCodeMid.JOBCD[i].NM).appendTo(modal2);

					}

				}

			});

};



$(document).on(
		'click',
		'.jobcho-de2',
		function() {
			var modal3 = $('.jobcho3');
			var text = $(this).text();
			var textid = $(this).attr('id');
			var textlen = $('.jobcho-de3').text();
			var divcnt = $('.jobcho-de3').length

			/*--------중복체크--------------*/
			
			
		
			

			
			if (divcnt < 1) {

				$('<div></div>').addClass('jobcho-de3').text(text).attr('id',
						textid).appendTo(modal3);

				jobchoid.push($(this).attr('id'));
				jobchotext.push(text);

			}  else {
				alert("1개이상 선택 불가능 합니다.");
			}
			
			
			
		});

$(document).on(
		'click',
		'.btn-sejob',
		function() {

			var chodiv = $('.jobchoice');

			for (i = 0; i < jobchoid.length; i++) {
				$('<p></p>').addClass('sejobre').attr('id', jobchoid[i]).text(
						jobchotext[i]).appendTo(chodiv);
			}
			
			
		});



// 모두지우기
$(document).on('click', '.btn-remove', function() {
	$('.jobcho3').text('');
	 jobchoid =[];

	 jobchotext =[];


});



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



