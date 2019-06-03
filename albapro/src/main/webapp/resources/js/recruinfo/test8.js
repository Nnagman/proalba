function ajaxRequest(param, objurl, objselected, target1, target2) {
	var strUrl;
	var strSelected = jQuery('#'+objselected).val();
	if (param.length > 0) {
		strUrl = objurl +"?param="+ param +"&objselected="+ strSelected;

		jQuery.ajax({
			type: "GET",
			url: "C:/Users/bon300-3/Desktop/test.html",
			data: "",
			success: function(resultText)
			{
				if (resultText.length>120) {
					jQuery('#'+target1).html(resultText);
					if( target2 != "" && jQuery("#"+target2) != "undefined" ){
						jQuery('#'+target2).style.display="";
					}
				}
				else {
					jQuery('#'+target1).html("<ul id='viewSelectedLicense'><li class='noInfo'>검색조건에 맞는 자격증 인재가 없습니다.</li></ul>");
				}
			},
			error: function() {
				alert("호출에 실패했습니다.");
			}
		});
	}
}

function clickDeadlineJQuery(adid, userid, cuserid) {
	jQuery.ajax({
		type : "POST",
		url : "/rsc/ajax/ajaxDeadline.asp",
		data : "adid=" + adid +"&userid=" + userid +"&cuserid=" + cuserid,
		success : function(resultText) {
			alert('구인 완료된 공고로 접수되었습니다.');
		},
		error: function() {return true}
	});
}

function clickCounterJQuery(_catcd) {
	jQuery.ajax({
		type : "POST",
		url : "/rsc/ajax/ajaxClickCounter.asp",
		data : "catcd=" + _catcd,
		success : function(resultText) {return true},
		error: function() {return true}
	});
}
