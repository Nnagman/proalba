/**
 * Trim
 */
String.prototype.trim = function() {
	return this.replace(/(^[\s]*)|([\s]*$)/g, "");
}

/**
 * 체크박스나 라디오박스 선택한 갯수 반환
 */
function cntChkBox(frmNm, objNm) {
	var obj = eval("document."+frmNm+"."+objNm)
	var chkcnt = 0;

	if (obj == "undefined" || obj == null) {
		return 0;
	}

	var limit = parseInt(obj.length);

	if (obj.checked == true) {
		chkcnt =chkcnt +1 ;
	}

	for(var i=0; i< limit; i++) {
		if(obj[i].checked == true)	{
			chkcnt = chkcnt + 1;
		}
	}
	return chkcnt;
}

/**
 * 체크박스나 라디오박스 선택한 value값 반환
 */
function getCheckedValue(frmNm, objNm){
	var obj = eval("document."+frmNm+"."+objNm)
	var objValue;

	for (i=0; i<=obj.length ; i++){
		if (obj[i].checked){
			objValue = obj[i].value;
			break;
		}
	}

	return objValue;
}

/**
 * 체크박스 전체체크, 전체해제..
 */
function getCheckAll(obj, val){
	if(obj!=undefined){
		if (obj.length>0){
			for (i=0; i<=obj.length-1; i++){
				obj[i].checked=val;
			}
		}else{
			obj.checked=val;
		}
	}
	return true;
}

/**
 * 숫자만 입력
 keycode
- 48~57 : 키보드 위쪽의 숫자키
- 96~105 : 넘버패드의 숫자키
- 188 : 콤마
- 8,9 : 백스페이스, 탭키
- 13 : 엔터키(키패드와 넘버패드 동일)
- 46 : del키
- 37,38,39,40 : 화살표 좌,상,우,하
 */
function onlyNumber() {
	if (((event.keyCode < 48) || (event.keyCode > 57)) && event.keyCode != 13 && event.keyCode != 9)
		event.returnValue = false;
}

/**
 * 숫자만 입력 IE, FF
 */
function onlyNumberIEFF( Ev ){
	var evCode = ( window.netscape ) ? Ev.which : event.keyCode ;
	/* FF일 경우 Ev.which 값을,
	IE을 경우 event.keyCode 값을 evCode에 대입 */
	if ( ! ( evCode == 0 || evCode == 8 || ( evCode > 47 && evCode < 58 ) ) ) {
		/* 눌러진 키 코드가 숫자가 아닌 경우
		( '0'은 FF에서 Tab 키,
		'8'은 FF에서 BackSpace가 먹히지 않아 삽입)    */
		if ( window.netscape ) {        // FF일 경우
			Ev.preventDefault() ;        // 이벤트 무효화
		} else {                                // IE일 경우
			event.returnValue=false;    // 이벤트 무효화
		}
	}
}

/**
 * 영문자/숫자만 입력
 */
function isAlphaNumber(s) {
	var re = new RegExp("[^0-9a-zA-Z]");
	if (!re.test(s))
		return true;
	else
		return false;
}

/**
 * 영문자/숫자/한글만 입력
 */
function isAlphaNumberHangul(s) {
	var re = new RegExp("[^0-9a-zA-Z가-힣]");
	if (!re.test(s))
		return true;
	else
		return false;
}

/**
 * 이메일주소 유효성체크
 */
function isEmail(s) {
	return s.search(/^\s*[\w\~\-\.]+\@[\w\~\-]+(\.[\w\~\-]+)+\s*$/g) >= 0;
}

/**
 * 특수문자 금지
 */
function isDenyChar(str) {
	for (var i = 0; i < str.length; i++) {
		if (str.charAt(i).search(/[0-9a-zA-Z가-힣一-豈 &/,.!@#$%^&*_+-=:<>~`?()\[\]]/) < 0) {
			alert("특수문자 [ " + str.charAt(i) + " ]은(는) 허용하지 않습니다.");
			return true;
		}
	}
	return false;
}

/**
 * window.open (전체창, 메뉴포함)
 */
function popup_window(url, wname, width, height, toolbar, menubar, statusbar, scrollbar, locationbar, resizable) {
	var top = (screen.availHeight - height) / 2;
	var left = (screen.availWidth - width) / 2;
	toolbar_str = toolbar ? "yes" : "no";
	menubar_str = menubar ? "yes" : "no";
	statusbar_str = statusbar ? "yes" : "no";
	scrollbar_str = scrollbar ? "yes" : "no";
	location_str = locationbar ? "yes" : "no";
	resizable_str = resizable ? "yes" : "no";
	window.open(url, wname, "left=" + left + ",top=" + top + ",width=" + width + ",height=" + height + ",toolbar=" + toolbar_str + ",menubar=" + menubar_str + ",location=" + location_str + ",status=" + statusbar_str + ",scrollbars=" + scrollbar_str + ",resizable=" + resizable_str);
}

/**
 * window.open (가운데 정렬)
 */
function popup_open(url, wname, width, height, scbar) {
	var top = (screen.availHeight - height)/2;
	var left = (screen.availWidth - width)/2;

	var prty = "top=" + top + ", left=" + left + ", width=" + width + ", height=" + height + ", status=1, resizable=0, scrollbars=" + scbar;
	window.open(url, wname, prty);
}

/**
 * window.open (정렬 옵션 추가 버전)
 */
function popup_open_align(url, wname, width, height, scbar, align) {
	// align(1: 왼쪽위, 2:오른쪽위, 3:오른쪽밑, 4:왼쪽밑, 5:정중앙
	var top;
	var left;

	switch (eval(align)) {
		case 1 :
			top = 0;
			left = 0;
			break;
		case 2 :
			top = 0;
			left = (screen.availWidth - width);
			break;
		case 3 :
			top = (screen.availHeight - height);
			left = (screen.availWidth - width);
			break;
		case 4 :
			top = (screen.availHeight-height);
			left = 0;
			break;
		case 5 :
			top = (screen.availHeight - height) / 2;
			left = (screen.availWidth - width) / 2;
			break;
	}

	var prty = "top=" + top + ", left=" + left + ", width=" + width + ", height=" + height + ", status=0, resizable=0, scrollbars=" + scbar;
	window.open(url, wname, prty);
}

/**
 * inputbox 자동포커스이동
 */
function autoFocusMove(curObj, nextObj, maxLen) {
	if (curObj.value.length == maxLen) {
		nextObj.focus();
	}
}

/**
 * Byte수 계산
 */
function getBytes(input_name_value) {
	var input_name_str, byte_count = 0, input_name_length = 0, one_str;

	input_name_str = new String(input_name_value);
	input_name_length = input_name_str.length;

	for (i = 0; i < input_name_length; i++) {
		one_str = input_name_str.charAt(i);
		if (escape(one_str).length > 4) {
			byte_count += 2;
		} else if (one_str != '\r') {
			byte_count++;
		}
	}
	return byte_count;
}

/**
 * Flash 표시
 */
function flash_show(path, width, height){
	var str;
	str = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'"
			+ " codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0'"
			+ " width='" + width + "' height='" + height + "'"
			+ " id=ShockwaveFlash2>"
			+ "<param name='movie' value='" + path + "'>"
			+ "<param name='quality' value='high'>"
			+ "<param name='wmode' value='transparent'>"
			+ "<param name='allowScriptAccess' value='always'>"
			+ "<embed src='"+path+"' quality='high'"
			+ " pluginspage='http://www.macromedia.com/go/getflashplayer'"
			+ " allowScriptAccess='always'"
			+ " type='application/x-shockwave-flash' width='"+width+"' height='"+height+"'>"
			+ "</embed>"
			+ "</object>";
	document.write (str);
}

/**
 * 숫자에 천단위콤마 찍어반환
 */
function getWon(str) {
	str = String(str);
	var nam = str.length % 3;
	var value = "";
	for ( var i = 0; i < str.length; i++ ) {
		var ch = str.charAt(i);
		for ( var k = 0; k<str.length/3; k++ ) {
			if ( i == nam + 3 * k && i != 0 ) value = value + ',';
		}
		value = value + ch;
	}
	return value;
}

/**
 * Json 으로 정의된 셀렉트박스 화면출력
 */
function drawOption(jsonGroup, jsonName, value){
	document.write(setOption(jsonGroup, jsonName, value));
}

/**
 * Json 으로 정의된 셀렉트박스 Option List
 */
function setOption(jsonGroup,jsonName, value){
	var json = eval(jsonGroup+"."+jsonName);
	var txt ='';
	var strSelected = '';
	var i =0 ;
	var intCount = 0;
	for( i = 0 ; i < json.length; i++){
		if( json[i].value == value){ strSelected = 'selected'; intCount++; }
		else { strSelected =''; }
		txt += '<option value="' + json[i].value + '"  '+strSelected+' >' + json[i].name +'</option>\n';
	}

	return txt;
}

/**
 * 동적 셀렉트박스 처리
 */
function setSubOption(objName, jsonGroup, jsonName, value, group){
	var obj = eval("document.getElementById('" + objName + "')");
	var json = eval(jsonGroup+"."+jsonName);
	var arrIndex = "";

	var objlength = parseInt(obj.length);

	for (var j = 1 ; j < objlength ; j++){
		obj.options[1] = null;
	}

	for (var i = 0 ; i < json.length ; i++){
		if (json[i].group == group){
			arrIndex += i + ",";
		}
	}

	arrIndex = arrIndex.split(",");
	for (var i = 0 ; i < arrIndex.length - 1 ; i++){
		obj.options[i+1] = new Option(json[arrIndex[i]].name, json[arrIndex[i]].value);
	}
}

/**
 * Json 으로 정의된 체크박스/라디오박스 그리기
 * @param  jsonName 사용할 Json명
 * @param  value	기본으로 checked 되어있을 Object의 Value 값
 * @param  isBr		줄바꿈 (Y/N 대소문자 주의)
 * @param  mode		박스타입 (checkbox/radio)
 */
function setArrayBox(jsonGroup, jsonName, value, isBr, mode){
	var json = eval(jsonGroup+"."+jsonName);
	var txt ='';
	var strChecked = '';
	var i =0 ;
	var newLine = '';
	var arrValue = value.split(",");

	for( i = 0 ; i < json.length; i++){
		for (j = 0 ; j < arrValue.length ; j++){
			if( json[i].value == arrValue[j]){ strChecked = 'checked';break;}
			else { strChecked =''; }
		}
		(isBr == "Y") ? newLine = "<br>" : newLine = "";
		txt += '<input type="'+ mode +'" value="'+ json[i].value + '"  '+strChecked+' >' + json[i].name + newLine;
	}
	document.write(txt);
}

// 휴대폰인증팝업
function certHtel(sitecd, userid, htel1, htel2, htel3, fromopen) {
	if (confirm(htel1 + "-" + htel2 + "-" + htel3 + "로 인증번호를 받으시겠습니까?")) {
		document.domain = "alba.co.kr";
		//popup_open("http://sign.alba.co.kr/policy/MobileCert.asp?site=" + sitecd + "&fromopen=" + fromopen + "&userid=" + userid + "&htel1=" + htel1 + "&htel2=" + htel2 + "&htel3=" + htel3, "mobilecert", 342, 320, "no");
		popup_open("", "mobilecert", 342, 320, "no");

		var form = document.createElement("form");
		form.setAttribute("method", "post");
		if('http:' == document.location.protocol) {
			if (location.href.toLowerCase().indexOf("new.alba.co.kr") > -1) {
				form.setAttribute("action", "http://sign0.alba.co.kr/policy/MobileCert.asp");
			} else {
				form.setAttribute("action", "http://sign.alba.co.kr/policy/MobileCert.asp");
			}
		}
		else {
			if (location.href.toLowerCase().indexOf("new.alba.co.kr") > -1) {
				form.setAttribute("action", "https://sign0.alba.co.kr/policy/MobileCert.asp");
			} else {
				form.setAttribute("action", "https://sign.alba.co.kr/policy/MobileCert.asp");
			}
		}
		form.setAttribute("target", "mobilecert");

		var hiddenField = document.createElement("input");				
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "site");
		hiddenField.setAttribute("value", sitecd);			
		form.appendChild(hiddenField);

		var hiddenField = document.createElement("input");				
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "fromopen");
		hiddenField.setAttribute("value", fromopen);			
		form.appendChild(hiddenField);

		var hiddenField = document.createElement("input");				
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "userid");
		hiddenField.setAttribute("value", userid);			
		form.appendChild(hiddenField);

		var hiddenField = document.createElement("input");				
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "htel1");
		hiddenField.setAttribute("value", htel1);			
		form.appendChild(hiddenField);

		var hiddenField = document.createElement("input");				
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "htel2");
		hiddenField.setAttribute("value", htel2);			
		form.appendChild(hiddenField);

		var hiddenField = document.createElement("input");				
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "htel3");
		hiddenField.setAttribute("value", htel3);			
		form.appendChild(hiddenField);

		document.body.appendChild(form);
		form.submit();
	}
}

// 개인정보수정팝업
function changeUserInfo(sitecd, ref) {
	document.domain = "alba.co.kr";
	if (location.href.toLowerCase().indexOf("new.alba.co.kr") > -1) {
		window.open("http://sign0.alba.co.kr/change/userinfochange_popup.asp?popup=1&site=" + sitecd + "&ref=" + ref, "userinfochange", "width=580, height=550, top=0, left=0, scrollbars=no");
	} else {
		window.open("http://sign.alba.co.kr/change/userinfochange_popup.asp?popup=1&site=" + sitecd + "&ref=" + ref, "userinfochange", "width=580, height=550, top=0, left=0, scrollbars=no");
	}
}

// 법인인증팝업
function certCompany(sitecd) {
	document.domain = "alba.co.kr";
	//window.open("http://sign.alba.co.kr/policy/companycert.asp?site=" + sitecd, "companycert", "width=630, height=517, top=0, left=0, scrollbars=no");
	if (location.href.toLowerCase().indexOf("new.alba.co.kr") > -1) {
		window.open("http://sign0.alba.co.kr/policy/companycert_admin.asp?site=" + sitecd, "companycert", "width=630, height=517, top=0, left=0, scrollbars=no");
	} else {
		window.open("http://sign.alba.co.kr/policy/companycert_admin.asp?site=" + sitecd, "companycert", "width=630, height=517, top=0, left=0, scrollbars=no");
	}
}

/* 01, 001등 숫자 자리수 맞추기 */
function pad(n, width) {
	n = n + '';
	return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
}

/* parseInt에 Default 값 0 반환 */
function parseIntZero(val){
	val += ''; //숫자형의 경우 replace가 되지 않음 문자형로 변경
	val = val.replace(/\s|,/g, ''); //공백 및 콤마 제거
	return parseInt(val.trim()) || 0;
}