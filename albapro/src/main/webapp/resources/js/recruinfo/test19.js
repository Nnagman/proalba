
$(document).ready(function() {
	fnSchInit();
});

function fnSchInit() {
	// 업·직종
	JOBSEARCH.fnsetJobkind($("#hidJobKindMulti").val());
	JOBSEARCH.fnshowKind();
	
	// 근무요일
	if ($("[name=workweekcd]:checked").val() == "D07") {
		$(".date .subSelect:eq(1)").show();
	} else if ($("[name=workweekcd]:checked").val()=="D08" || $("[name=workweekcd]:checked").val()=="D09" || $("[name=workweekcd]:checked").val()=="D10" || $("[name=workweekcd]:checked").val()=="D11" || $("[name=workweekcd]:checked").val()=="D12" || $("[name=workweekcd]:checked").val()=="D13") {
		$("#workweekcdweek").attr("checked", true); 
		$("#workweekcdweek").parent().addClass("on"); 
		$(".date .subSelect:eq(0)").show();
		$(".date .clearBtn").show();
	}
	
	JOBSEARCH.fnsetCareer($("#hidCareerCD").val());	
	JOBSEARCH.fnsetLastSchoolcd($("#hidLastSchoolCD").val());	
	// 급여		
	JOBSEARCH.fnsetPaycd($("#hidLastPayCD").val(), $("#hidPayStart").val());
	if ($("[name=paycd]:checked").length < 1) {
		JOBSEARCH.fnEachInit(10);
	} 
	// 복리후생
	JOBSEARCH.fnDisplayWal('');	
	 // 우대조건 
	JOBSEARCH.fnDisplaySpecial('');
	
}

$(document).ready(function() {
	// 검색 Coding...
	$(".date input[name='workweekcd']").click(function(){
		$(".work .subSelect").hide();
		if ($(this).is(":checked")) $(this).parent(".input").next(".subSelect").show();
		$("#workweekcdweek").attr("checked", false);
		$("#workweekcdweek").parent().removeClass("on");

		$(".date input[name='weekdays']").attr("checked", false);
		$(".date input[name='weekdays']").parent().removeClass("on");

		$(".date .clearBtn").show();
	});
	$("#workweekcdweek").click(function(){
		$(this).attr("checked", true);
		$(".work .subSelect:eq(1)").hide();
		$(".work .subSelect:eq(0)").show();
		$(".date input[name='workweekcd']").attr("checked", false);
		$(".date input[name='workweekcd']").parent().removeClass("on");

		$(".date input[name='weekdays']").attr("checked", false);
		$(".date input[name='weekdays']").parent().removeClass("on");

		$(".date .clearBtn").show();
	});
	$(".date .subSelect:eq(0) input[name='workweekcd']").click(function() {
		$(".work .subSelect:eq(0)").show();
		$("#workweekcdweek").attr("checked", true);
		$("#workweekcdweek").parent().addClass("on");
	});
	$(".gender :input").click(function() {
		$(".gender .clearBtn").addClass("on");
	});
	$(".pay :input").click(function() {
		$(".pay .clearBtn").addClass("on");
	});

	// 3. 검색 Action
	// 상세검색 열기 닫기
	$("#schDetailBtn").click(function() {
		if($("#schnm").val()=="AREA" || $("#schnm").val()=="HOTPLACE") {
			$("#areaSchOpt").hide();
			$(".jobSearch .detailBtn").removeClass("on");
			$("#areaSchOpt").slideUp("fast");
			$("#detailSearchBtn").show();
			window.scrollTo(0,0);
		} else {
			if($(".jobSearch .detailBtn").hasClass("on")) {
				if (!$(".jobSearch .detail dl").hasClass("valueYes")) {
					$(".jobSearch .detail").slideUp("fast");
					$(this).removeClass("on");
				} else {
					$(".jobSearch .detail dl.valueNo").slideUp("fast");
					$(this).removeClass("on");
				}
			} else {
				$(".jobSearch .detail, .jobSearch .detail dl").slideDown("fast");
				$(this).addClass("on");
			}
		}
	});
	// tabForm 클릭 on
	$(".data .tabForm li a").click(function(){
		$(this).parents(".tabForm").children("li").removeClass("on");
		$(this).parent("li").addClass("on");
		return false;
	});
	// tabForm odd, last클래스 추가
	$(".data .tabForm").each(function(){
		$(this).children("li:nth-child(odd)").addClass("odd");
		$(this).children("li:nth-child(" + $(this).children("li").length / 2 + "n)").addClass("last");
	});
	// .data 열기 액션
	$(".content .blank, .content .value").click(function(){
		if ($(this).parent(".content").next(".data").is(":visible")) {
			$(this).parent(".content").next(".data").hide();
		}
		else {
			$(this).parent(".content").next(".data").show();
		}
		return false;
	});
	// .data 닫기 액션
	$(".data .dataCloseBtn").click(function(){
		$(this).parent(".data").hide();
		return false;
	});
	// 근무기간, 근무요일, 근무시간 높이값 설정
	var term = $(".work .term .inputWrap").height();
	var day = $(".work .day .inputWrap").height();
	var time = $(".work .time .inputWrap").height();
	var max = Math.max(term,day);
	max = Math.max(max,time);
	$(".work dl .inputWrap").height(max);
	// input 초기 checked 된 값 체크
	$(".input input[type='radio']:checked, .input input[type='checkbox']:checked").each(function(){
		$(this).parent(".input").addClass("on");
	}); 
	// input 라디오버튼 컨트롤
	$("span.input input[type='radio']").click(function(){
		$("input[name=" + $(this).attr("name") +"]").each(function(){
			if ($(this).is(":checked")) {
				$(this).parent(".input").addClass("on");
			} else {
				$(this).parent(".input").removeClass("on");
			}
		});
	});
	// input 체크박스 컨트롤
	$("span.input input[type='checkbox']").click(function(){
		if ($(this).is(":checked")) {
			$(this).parent(".input").addClass("on");
		} else {
			$(this).parent(".input").removeClass("on");
		}
	});
});