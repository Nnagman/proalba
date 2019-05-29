function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}

function MM_showHideLayers() { //v3.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3)
    if ((obj=MM_findObj(args[i]))!=null) {
      v=args[i+2];
      if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }
      obj.visibility=v;
    }
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}


//Flash 표시
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

/*
//Flash 표시2
function flash_get(path, width, height){
	var str;
	str = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'"
			+ " codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0'"
			+ " width='" + width + "' height='" + height + "'"
			+ " id=ShockwaveFlash2>"
			+ "<param name='movie' value='" + path + "'>"
			+ "<param name='quality' value='high'>"
			+ "<embed src='"+path+"' quality='high'"
			+ " pluginspage='http://www.macromedia.com/go/getflashplayer'"
			+ " type='application/x-shockwave-flash' width='"+width+"' height='"+height+"'>"
			+ "</embed>"
			+ "</object>";
	return (str);
}
*/

// 해당폼 체크  리턴
function form_check(oForm){
	for(i=0; i<oForm.elements.length; i++){
		// 빈 값 체크
		if(oForm.elements[i].required
			&& (   oForm.elements[i].value.replace(/ /g, "")==""
				|| oForm.elements[i].value.charCodeAt(0)==12288)	//ㄱ + 한자 + 1 체크
			&& oForm.elements[i].disabled==false){

			alert("[" + oForm.elements[i].title + "] 항목이 빠졌습니다.\n\n입력해주세요.");
			oForm.elements[i].focus();
			return false;
		}

		// 숫자 체크
		if(oForm.elements[i].isNum && oForm.elements[i].disabled==false){
//			if(!num_check(oForm.elements[i])){
			if(!isFinite(oForm.elements[i].value)){
				alert("[" + oForm.elements[i].title + "] 항목은 숫자만 입력해 주세요.");
				oForm.elements[i].focus();
				return false;
			}
		}

		// 암호 비교
		if(oForm.elements[i].isPass && oForm.elements[i].disabled==false){
			oPass1 = eval("oForm."+oForm.elements[i].name)[0];
			oPass2 = eval("oForm."+oForm.elements[i].name)[1];

			if(oPass1.value.length<4){alert("암호는 4자이상 입력해주세요."); oPass1.select(); return false;}
			if(oPass2.value.length<4){alert("암호는 4자이상 입력해주세요."); oPass2.select(); return false;}

			if(oPass1.value!=oPass2.value){
				alert("암호가 일치하지 않습니다.");
				oPass1.focus();
				return false;
			}
		}

		//email 검사
		if(oForm.elements[i].isEmail && oForm.elements[i].disabled==false && oForm.elements[i].required){
			if(!emailAddr_check(oForm.elements[i].value)){
				alert("Email 주소가 올바르지 않습니다.");
				oForm.elements[i].focus();
				return false;
			}
		}

		// 주민번호 체크
		if(oForm.elements[i].isJumin && oForm.elements[i].disabled==false){
			jumin1 = eval("oForm."+oForm.elements[i].name)[0];
			jumin2 = eval("oForm."+oForm.elements[i].name)[1];

			if(!check_jumin(jumin1.value, jumin2.value)){
				alert("주민번호가 올바르지 않습니다.");
				jumin1.focus();
				return false;
			}
		}

		// 사업자번호 체크
	/*	if(oForm.elements[i].isSaup && oForm.elements[i].disabled==false){
			saup1 = eval("oForm."+oForm.elements[i].name)[0];
			saup2 = eval("oForm."+oForm.elements[i].name)[1];
			saup3 = eval("oForm."+oForm.elements[i].name)[2];

			if(!Check_saupno(saup1.value, saup2.value, saup3.value)){
				alert("사업자번호가 올바르지 않습니다.");
				saup1.focus();
				return false;
			}
		}
*/
	}
	return true;
}

// popup open 전체창,메뉴포함
function open_popup_window(name, url, width, height, toolbar, menubar, statusbar, scrollbar, locationbar, resizable){
  var top = (screen.availHeight-height)/2
  var left = (screen.availWidth-width)/2
  toolbar_str = toolbar ? 'yes' : 'no';
  menubar_str = menubar ? 'yes' : 'no';
  statusbar_str = statusbar ? 'yes' : 'no';
  scrollbar_str = scrollbar ? 'yes' : 'no';
  location_str = locationbar ? 'yes' : 'no' ;
  resizable_str = resizable ? 'yes' : 'no';
  window.open(url, name, 'left='+left+',top='+top+',width='+width+',height='+height+',toolbar='+toolbar_str+',menubar='+menubar_str+',location='+location_str+',status='+statusbar_str+',scrollbars='+scrollbar_str+',resizable='+resizable_str);
}

// popup open	(가운데 정렬)
function popup_open(url, wname, w, h, scbar) {
	var top = (screen.availHeight - h) / 2;
	var left = (screen.availWidth-w) / 2;
	var prty = "top=" + top + ", left=" + left + ", width=" + w + ", height=" + h + ", status=no, resizable=no, scrollbars=" + scbar;
	var popwindow;
	popwindow = window.open(url, wname, prty);
	popwindow.focus();
}


// popup open	( 정렬 옵션 추가 버전)
function popup_open_align(url, wname, w, h, scbar, align){
	// align(1: 왼쪽위, 2:오른쪽위, 3:오른쪽밑, 4:왼쪽밑, 5:정중앙

	var top;
	var left;

	switch (eval(align)){
		case 1:
			top = 0;
			left = 0;
			break;
		case 2:
			top = 0;
			left = (screen.availWidth-w);
			break;
		case 3:
			top = (screen.availHeight-h);
			left = (screen.availWidth-w);
			break;
		case 4:
			top = (screen.availHeight-h);
			left = 0;
			break;
		case 5:
			top = (screen.availHeight-h)/2;
			left = (screen.availWidth-w)/2;
			break;
	}

	var prty = "top="+top+", left="+left+", width="+w+", height="+h+", status=0, resizable=0, scrollbars="+scbar;
	window.open(url, wname, prty);
}

//modal창 resize
function modWin_resize(winType){
	//winType=0	(스크롤바 없음)
	//winType=1	(스크롤바 있음)
//	var w = document.body.scrollWidth+8+"px";
//	var h = document.body.scrollHeight+34+"px";
	window.dialogWidth = (winType==0)?document.body.scrollWidth+5+"px":document.body.scrollWidth+25+"px";
	window.dialogHeight = (winType==0)?document.body.scrollHeight+24+"px":window.dialogHeight;

}


//modal창 resize
function modWin_resize2(winType){
	//winType=0	(스크롤바 없음)
	//winType=1	(스크롤바 있음)
//	var w = document.body.scrollWidth+8+"px";
	var h = document.body.scrollHeight+34+"px";
//	window.dialogWidth = (winType==0)?document.body.scrollWidth+8+"px":document.body.scrollWidth+25+"px";
	window.dialogHeight = (winType==0)?document.body.scrollHeight+34+"px":window.dialogHeight;

}

//popup창 resize
function popWin_resize(winType){
	//winType=0	(스크롤바 없음)
	//winType=1	(스크롤바 있음)
	var w = (winType==0)?document.body.scrollWidth+2:document.body.scrollWidth+28;
	var h = (winType==0)?document.body.scrollHeight+50:document.body.offsetHeight;
	window.resizeTo (w, h)

}



//popup창 resize
function popWin_resize2(winType){
	//winType=0	(스크롤바 없음)
	//winType=1	(스크롤바 있음)
/*
	var w = (winType==0)?document.body.scrollWidth+2:document.body.scrollWidth+28;
	var h = (winType==0)?document.body.scrollHeight+50:document.body.offsetHeight;
	window.resizeTo (w, h)
*/
	var w, h;
	var strAppVer = navigator.appVersion;

	if (strAppVer.indexOf("NT 5.2")>0 && strAppVer.indexOf("MSIE 6.0")>0){
		w = document.body.scrollWidth+27;
		h = document.body.scrollHeight+50;
	}else if (strAppVer.indexOf("NT 5.1")>0 && strAppVer.indexOf("MSIE 7.0")>0){
		w = document.body.scrollWidth+27;
		h = document.body.scrollHeight+70;
	}else if (strAppVer.indexOf("NT 5.1")>0 && strAppVer.indexOf("MSIE 6.0")>0){
		w = document.body.scrollWidth+27;
		h = document.body.scrollHeight+60;
	}else if (strAppVer.indexOf("NT 5.0")>0 && strAppVer.indexOf("MSIE 7.0")>0){
		w = document.body.scrollWidth+27;
		h = document.body.scrollHeight+70;
	}else if (strAppVer.indexOf("NT 5.0")>0 && strAppVer.indexOf("MSIE 6.0")>0){
		w = document.body.scrollWidth+27;
		h = document.body.scrollHeight+30;
	}else{
		w = document.body.scrollWidth+28;
		h = document.body.offsetHeight+32;
	}

	window.resizeTo (w, h)
}

//+++++++++++++++++++++++++++++++++++++++++++++
//모달리스 오픈
function modeless_open(url, w, h){	//스크롤 없음
	if (window.showModelessDialog){
		window.showModelessDialog(url, window, "dialogWidth:"+w+"px; dialogHeight:"+h+"px; center: Yes; help: No; resizable: Yes; status: No; scroll:0;");
	} else {
		window.open(url, window, "dialogWidth:"+w+"px; dialogHeight:"+h+"px; center: Yes; help: No; resizable: Yes; status: No; scroll:0;");
	}
}

function modeless_open2(url, w, h){//스크롤 있음
	w=w+17;
	if (window.showModelessDialog){
		window.showModelessDialog(url, window, "dialogWidth:"+w+"px; dialogHeight:"+h+"px; center: Yes; help: No; resizable: Yes; status: No;");
	} else {
		window.open(url, window, "dialogWidth:"+w+"px; dialogHeight:"+h+"px; center: Yes; help: No; resizable: Yes; status: No;");
	}

}

//모달창 오픈
function modal_open(url, w, h){
	window.showModalDialog(url, window, "dialogWidth:"+w+"px; dialogHeight:"+h+"px; center: Yes; help: No; resizable: No; status: No; scroll:0;");
}

//모달창 오픈
function modal_open2(url, w, h){
	window.showModalDialog(url, window, "dialogWidth:"+w+"px; dialogHeight:"+h+"px; center: Yes; help: No; resizable: Yes; status: No;");
}

//모달창 위치 중앙으로..
function modal_relocate(){
	var Lleft = (screen.availWidth-self.dialogWidth.replace("px", ""))/2;
	var Ltop = (screen.availHeight-self.dialogHeight.replace("px", ""))/2;
	self.dialogTop = Ltop;
	self.dialogLeft = Lleft;
}


//object popup open
function oPopup_show(oElement, x, y, w, h, strContent){
	var oPopup = window.createPopup();
	var popBody = oPopup.document.body;

//    popBody.style.borderColor = "#0164B0";
	popBody.style.border = "solid #0164B0 1px";
	popBody.style.fontFamily = "돋움";
	popBody.style.fontSize = "12px";
	popBody.style.color = "#474747";

	popBody.innerHTML = strContent;
	oPopup.show(x, y, w, h, oElement);
}
//---------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++
// 체크박스 전체 선택/해제
function checkbox_check(isCheck, objChkbox){
	if (objChkbox == null) return;
	if(objChkbox.length==null){
		objChkbox.checked=isCheck;
	}else{
		for(i=0; i<objChkbox.length; i++){
			objChkbox[i].checked=isCheck;
		}
	}
}

// 체크박스, 라디오 선택 유무 return
function checkbox_ischeck(objChkbox){
	var rtn=false;
	if(objChkbox.length==null){
		if(objChkbox.checked){
			rtn=true;
		}
	}else{
		for(i=0; i<objChkbox.length; i++){
			if(objChkbox[i].checked){
				rtn=true;
				break;
			}
		}
	}
	return rtn;
}

// 체크박스 선택된 갯수 return
function checkbox_selectedCount(objChkbox){
	var cnt=0;
	var i;
	if(objChkbox.length==null){
		if(objChkbox.checked){cnt+=1;};
	}else{
		for(i=0; i<objChkbox.length; i++){
			if(objChkbox[i].checked){cnt+=1;};
		}
	}
	return cnt;
}

/**
 * 체크박스나 라디오박스 선택한 갯수 반환
 */
function cntChkBox(frmNm, objNm) {
	var obj = eval("document."+frmNm+"."+objNm)
	var chkcnt = 0;
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

//체크박스(동일이름) 선택된 갯수 return
function getCheckedCnt(obj){
	var i, cnt=0;
	for(i=0; i<obj.length; i++){(obj[i].checked)?cnt+=1:cnt=cnt;}
	return cnt;
}

// 체크박스나 라디오박스 선택한 value값 반환
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
 * 체크박스 라디오박스 value로 선택.
 */
function setCheckedValue(frmNm, objNm, val){
	var obj = eval("document."+frmNm+"."+objNm)
	var objValue;
	if(obj!=undefined){

		if (obj.length>0){

			for (i=0; i<=obj.length-1; i++){

				if (obj[i].value == val){
					obj[i].checked=true;
				}
			}
		}else{
			obj.checked=true;
		}
	}
	return true;
}


//----------------------------------------------
//콤보 기본선택

function comboDefSelect(oSelect, selVal){
	var i;
	for(i=0; i<oSelect.options.length; i++){
		if (oSelect.options[i].value!='')
		{
			if(oSelect.options[i].value==selVal){
				oSelect.options[i].selected=true;
				break;
			}
		}
	}
}

/**
 * 셀렉트박스 선택된 값 반환
 */
function getSelectBoxVal(objName){
	var obj = getObject(objName);
	return obj[obj.selectedIndex].value;
}

// 숫자인지 검사 return
var whitespace = " \t\n\r";
function isInteger(s){
    var i;

    if (isWhitespace(s))
    	return false;

    for (i = 0; i < s.length; i++)
    {
        // Check that current character is number.
        var c = s.charAt(i);

        if (!isDigit(c)) return false;
    }

    // All characters are numbers.
    return true;
}

function isEmpty(s){
	return ((s == null) || (s.length == 0))
}

function isWhitespace(s){
	var i;

	if (isEmpty(s)) return true;

	for (i = 0; i < s.length; i++)
	{
		var c = s.charAt(i);

		if (whitespace.indexOf(c) == -1) return false;
	}

	return true;
}

function isDigit(c){
	return ((c >= "0") && (c <= "9"))
}
////////////////////////////



//숫자체크
function num_check(oField){
	if(event.keyCode==9){return true;}
	if(oField.value==""){return true;}

	if(!isInteger(oField.value)){
		return false;
	}else{
		return true;
	}
}


//영문(소문자),숫자(return true)
function isEngNum(str){
	for(i=0;i<str.length;i++) {
		var a=str.charCodeAt(i);
		if (a<48 || (57<a && a<97) || 122<a)
			return false;
	}
	return true;
}



//영문(소문자)&숫자 체크
function engnum_check(oField){
	if(oField.value=="") return;

	if(!isEngNum(oField.value)){
		alert("영문(소문자) 또는 숫자만 입력 가능합니다.")
		oField.select();
	}
}



// 메일주소 검사
function emailAddr_check(str){
	var filter= /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
	if (filter.test(str)){
		return true;
	}else{
		return false;
	}
}



//숫자 -> 콤마 return
function formatNumber(num){
/*	ver2####*/
    var reg = /(^[+-]?\d+)(\d{3})/;
	num = Number(num)
	num = String(num)

    while (reg.test(num))
        num = num.replace(reg, '$1' + ',' + '$2');

	return num;
}


//시간 combo 시간표시 변경
function change_timeCombo(oSelect){
//	workTime_combo_reset(oSelect);
	//
	var i, tmp;
	for(i=0; i<oSelect.options.length; i++){
		tmp = oSelect.options[i].value;
		if(tmp==""){continue;}
		if(tmp.length<2){tmp = "0"+tmp;}
		oSelect.options[i].text=tmp;
	}

	var selVal = eval(oSelect.options[oSelect.selectedIndex].value);
	var dispText;
	if(typeof(selVal)!="undefined"){
		if(selVal==0){
			dispText = "밤 12시";
		}else if(selVal==12){
			dispText = "낮 12시";
		}else{
			if(selVal<12){
				dispText = "오전 " + selVal + "시";
			}else if(12<selVal && selVal<24){
				selVal -= 12;
				dispText = "오후 " + selVal + "시";
			}
		}
	}else{
		dispText=oSelect.options[oSelect.selectedIndex].text;
	}
	oSelect.options[oSelect.selectedIndex].text=dispText;
}


//combo option 생성 (숫자로 된거만..)
//oSelect:select개체, sNum:시작번호, eNum:끝번호, defVal:기본값, strEnd:끝에 붙는 문자
function option_create(oSelect, sNum, eNum, step, defVal, strEnd){
	var i;
	for ( i=sNum; i<=eNum;i+=step) {
		oSelect.options[oSelect.length] = new Option(i+strEnd, i);
		if(String(i)==String(defVal)) oSelect.options[oSelect.length-1].selected=true;
	}
}

//주민번호 체크
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
function check_jumin(jumin_num1,jumin_num2){
    var str_serial1 = jumin_num1;
    var str_serial2 = jumin_num2;

	if (str_serial1=="750518" && str_serial2=="5780189") {	//국내거소등록번호 에외처리!!~~
		return true;
	}

    if (Check(str_serial1) != 6) {
      return false;
    }
    if (Check(str_serial2) != 7) {
      return false;
    }
    if (!num_char(str_serial1)) {
    	return false;
    }
    if (!num_char(str_serial2)) {
    	return false;
    }
    if (str_serial1.substring(2,3) > 1){
      return false;
    }
    if (str_serial1.substring(4,5) > 3){
      return false;
    }
    if (str_serial2.substring(0,1) > 4 || str_serial2.substring(0,1) == 0){
      return false;
    }
    var a1=str_serial1.substring(0,1)
    var a2=str_serial1.substring(1,2)
    var a3=str_serial1.substring(2,3)
    var a4=str_serial1.substring(3,4)
    var a5=str_serial1.substring(4,5)
    var a6=str_serial1.substring(5,6)
    var check_digit=a1*2+a2*3+a3*4+a4*5+a5*6+a6*7
    var b1=str_serial2.substring(0,1)
    var b2=str_serial2.substring(1,2)
    var b3=str_serial2.substring(2,3)
    var b4=str_serial2.substring(3,4)
    var b5=str_serial2.substring(4,5)
    var b6=str_serial2.substring(5,6)
    var b7=str_serial2.substring(6,7)
    var check_digit=check_digit+b1*8+b2*9+b3*2+b4*3+b5*4+b6*5
    check_digit = check_digit%11
    check_digit = 11 - check_digit
    check_digit = check_digit%10
    if (check_digit != b7){
      return false;
    }
    else {
    	return true;
    }
}
function Check(keyword) {
   var st_num, key_len;
   st_num = keyword.indexOf(" ");
   while (st_num != -1)
   {
	keyword = keyword.replace(" ", "");
	st_num  = keyword.indexOf(" ");
   }
   key_len=keyword.length;
   return key_len;
}
function num_char(char_set) {
   var digit=0;
   for (var i=0;i<char_set.length;i++){
      var str_dig=char_set.substring(i,i+1);
      if (str_dig<'0' || str_dig>'9'){
        digit=digit+1
      }
   }
   if (digit == 0) {
      return true;
   }
}
//------------------------------------------------------------------



//사업자 번호 체크
function Check_saupno(s_v1,s_v2,s_v3) {
	if(s_v1=="" || s_v2=="" || s_v3==""){return false;}
	if(s_v1=="000" || s_v2=="00" || s_v3=="00000"){return false;}
	if(s_v1=="617" && s_v2=="81" && s_v3=="48252"){return false;}
	if(s_v1.length!=3){return false;}
	if(s_v2.length!=2){return false;}
	if(s_v3.length!=5){return false;}


	var NoCheckNum = "1309516286,";		// 체크안되는 사업자번호 예외처리
	if(NoCheckNum.indexOf(s_v1+s_v2+s_v3) >= 0){
		return true;
	}

	var num=(s_v1+s_v2+s_v3);  //사업자등록번호를 붙입니다...
	var w_c,w_e,w_f,w_tot;

	w_c=num.charAt(8)*5;       // 9번째자리의 숫자에 5를 곱한다.
	w_e=parseInt((w_c/10),10); // 10으로 나누고 10진수 형태의 숫자형으로 ..나눈몫
	w_f=w_c % 10 ;             // 10으로 나눈 나머지....
	w_tot=num.charAt(0)*1;
	w_tot+=num.charAt(1)*3;
	w_tot+=num.charAt(2)*7;
	w_tot+=num.charAt(3)*1;
	w_tot+=num.charAt(4)*3;
	w_tot+=num.charAt(5)*7;
	w_tot+=num.charAt(6)*1;
	w_tot+=num.charAt(7)*3;
	w_tot+=num.charAt(9)*1;
	w_tot+=(w_e+w_f);
	if (!(w_tot % 10)) {        // 10으로 나누어 지면 true를 그렇지 않으면 false
		return true;
	} else {
		return false;
	}
}


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//쿠키 저장
function SetCookie(cName, cValue, expDay){
	var strExpires;
	if (expDay>0){
		var todayDate = new Date();
		todayDate.setDate( todayDate.getDate() + expDay);
		strExpires = " expires=" + todayDate.toGMTString() + ";"
	}
//	document.cookie = cName+"="+cValue+"; domain=.alba.co.kr; path=/; expires=" + todayDate.toGMTString() + ";"
	document.cookie = cName+"="+cValue+"; domain=.alba.co.kr; path=/;"+strExpires;
}


// Retrieve the value of the cookie with the specified name.
function GetCookie(sName){
	// cookies are separated by semicolons
	var aCookie = document.cookie.split("; ");
	for (var i=0; i < aCookie.length; i++)
	{
	  // a name/value pair (a crumb) is separated by an equal sign
	  var aCrumb = aCookie[i].split("=");
	  if (sName == aCrumb[0])
	    return unescape(aCrumb[1]);
	}

	// a cookie with the requested name does not exist
	return null;
}


function GetCookie2(sName){
	var aCookie = document.cookie.split("; ");
	for (var i=0; i < aCookie.length; i++)
	{
		if (aCookie[i].indexOf("&")<0){continue;}
		var aSub = aCookie[i].split("&");
		for (var ii=0; ii<aSub.length; ii++)
		{
			var aCrumb = aSub[ii].split("=");
			if (sName == aCrumb[0])
			{
				return unescape(aCrumb[1]);
			}
		}
	}

	return null;
}



//os 버전
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++
function getOSVersion () {
	if (navigator.appName == "Microsoft Internet Explorer") {
		var Agent = navigator.userAgent;
		Agent = Agent.toLowerCase();
		if(Agent.indexOf("nt 6.") > 0){
			return "vista";
		}else if(Agent.indexOf("nt 5.") > 0) {
			return "xp";
		}
	}
}

//-----------------------------------------------------------------
function dateDiff(part, date1, date2){
//     var date1 = new Date (d1);
 //    var date2 = new Date (d2);
     var diff  = new Date();
/*     if (date1 > date2) {
     diff = date1 - date2;
     }
     else {*/
          diff = date2 - date1;
//     }

     var years = parseInt(diff/(365*24*60*60*1000));
     var weeks = parseInt(diff/(7*24*60*60*1000));
     var month = parseInt(diff/(12*7*24*60*60*1000));
     var days  = parseInt(diff/(24*60*60*1000));

	 switch(part){
		 case "y": return years; break;
		 case "w": return weeks; break;
		 case "m": return month; break;
		 case "d": return days; break;
	 }
}



/**
 * (String)  source    The text to be encoded.
 * (boolean) display   The output is intended for display.
 *
 *                     If true:
 *                     * Tabs will be expanded to the number of spaces
 *                       indicated by the 'tabs' argument.
 *                     * Line breaks will be converted to <br />.
 *
 *                     If false:
 *                     * Tabs and linebreaks get turned into &#____;
 *                       entities just like all other control characters.
 *
 * (integer) tabs      The number of spaces to expand tabs to.  (Ignored
 *                     when the 'display' parameter evaluates to false.)
 */
function htmlEncode(source, display, tabs)
{
	function special(source)
	{
		var result = '';
		for (var i = 0; i < source.length; i++)
		{
			var c = source.charAt(i);
			if (c < ' ' || c > '~')
			{
				c = '&#' + c.charCodeAt() + ';';
			}
			result += c;
		}
		return result;
	}

	function format(source)
	{
		// Use only integer part of tabs, and default to 4
		tabs = (tabs >= 0) ? Math.floor(tabs) : 4;
		// split along line breaks
		var lines = source.split(/\r\n|\r|\n/);
		// expand tabs
		for (var i = 0; i < lines.length; i++)
		{
			var line = lines[i];
			var newLine = '';
			for (var p = 0; p < line.length; p++)
			{
				var c = line.charAt(p);
				if (c === '\t')
				{
					var spaces = tabs - (newLine.length % tabs);
					for (var s = 0; s < spaces; s++)
					{
						newLine += ' ';
					}
				}
				else
				{
					newLine += c;
				}
			}
			// If a line starts or ends with a space, it evaporates in html
			// unless it's an nbsp.
			newLine = newLine.replace(/(^ )|( $)/g, '&nbsp;');
			lines[i] = newLine;
		}

		// re-join lines
		var result = lines.join('<br />');

		// break up contiguous blocks of spaces with non-breaking spaces
		result = result.replace(/  /g, ' &nbsp;');

		// tada!
		return result;
	}

	var result = source;

	// ampersands (&)
	result = result.replace(/\&/g,'&amp;');

	// less-thans (<)
	result = result.replace(/\</g,'&lt;');

	// greater-thans (>)
	result = result.replace(/\>/g,'&gt;');

	if (display)
	{
		// format for display
		result = format(result);
	}
	else
	{
		// Replace quotes if it isn't for display,
		// since it's probably going in an html attribute.
		result = result.replace(new RegExp('"','g'), '&quot;');
	}

	// special characters
	result = special(result);

	// tada!
	return result;
}


//로그인 메세지
function loginChkConfirm2(curUrl){
	if(confirm('로그인후 이용 가능합니다\n\n로그인 하시겠습니까?')){
		top.location.href = "http://sign.alba.co.kr/login/logingate.asp?site=WWW";
	}
}

//맞춤 문자 신청시  알바설정 정보 없을때
function NoSms(curUrl){
	if ( confirm('맞춤 알바정보가 없습니다 \n맞춤 알바정보 설정을 하시겠습니까?') )
	{
	popup_open_align('/pMypage/myMadeRc/myMadeRc_edit.asp', 'myMadeWin', '780', '380', 'yes', '5' );
	//	top.location.href = "/pMypage/myMadeRc/myMadeRcEdit.asp";
	}
}



// 스페이스 제거
function trimJs(str) {
    return str.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
}

//화상면접 설치 체크

function vchat_Initialize()
{
  runtimeVersion = "2.0.0";

  if (HasRuntimeVersion(runtimeVersion))
  {
    location.href = "/albavchat/AlbavChat.application";
  }else{
	location.href = "/albavchat/setup.exe";
  }
}



function Initialize()
{
  runtimeVersion = "2.0.0";
  directLink = "/albavchat/AlbavChat.application";
  if (HasRuntimeVersion(runtimeVersion))
  {
    InstallButton.href = directLink;
    //BootstrapperSection.style.display = "none";
  }
}
function HasRuntimeVersion(v)
{
  var va = GetVersion(v);
  var i;
  var a = navigator.userAgent.match(/\.NET CLR [0-9.]+/g);
  if (a != null)
    for (i = 0; i < a.length; ++i)
      if (CompareVersions(va, GetVersion(a[i])) <= 0)
		return true;
  return false;
}
function GetVersion(v)
{
  var a = v.match(/([0-9]+)\.([0-9]+)\.([0-9]+)/i);
    return a.slice(1);
}
function CompareVersions(v1, v2)
{
  for (i = 0; i < v1.length; ++i)
  {
    var n1 = new Number(v1[i]);
    var n2 = new Number(v2[i]);
    if (n1 < n2)
      return -1;
    if (n1 > n2)
      return 1;
  }
  return 0;
}

// 입력글 허용 정규식 추가 2009-04-06 김 신 추가
function doanothercheck(name) {

	var mikExp = /[0-9a-zA-Z가-힣一-豈 &/,.!@#$%^&*_+-=:<>~`?()\[\]]/;
	var getNmae = name.value

	for ( i = 0 ; i < getNmae.length ; i++ ){
		if( getNmae.charAt(i).search(mikExp) != 0 ) {
			alert("특수문자 [ " + getNmae.charAt(i) + " ]은(는) 허용하지 않습니다.");
			//name.value = "";
			name.focus();
			return false;
		}
	}
	return true;
}

// 글자수 제한 추가 2009-04-09 김 신 추가
// aro_name : 입력글, ari_max : 허용 글자수, flag : 글자 타입(1:한글,2:그외)
function fc_chk_byte(aro_name ,ari_max, flag, msg) {

	var ls_str     = aro_name.value;
	var li_str_len = ls_str.length;

	var li_max      = ari_max;
	var i           = 0;
	var li_byte     = 0;
	var li_len      = 0;
	var ls_one_char = "";
	var ls_str2     = "";

	if ( flag == 1 ){
		li_max = li_max * 2;
	}

	for( i = 0 ; i < li_str_len ; i++ ) {

		ls_one_char = ls_str.charAt(i);

		if (escape(ls_one_char).length > 4) {
			li_byte += 2;
		} else {
			li_byte++;
		}

		if(li_byte <= li_max) {
			li_len = i + 1;
		}
	}

	if(li_byte > li_max) {
		alert( msg + "최대 " + ari_max + "자 까지 입력 가능합니다.");
		ls_str2 = ls_str.substr(0, li_len);
		aro_name.value = ls_str2;
	}
	aro_name.focus();
}

function fileUpPreview(objFile, previewer) {
	if (!/(\.gif|\.jpg|\.jpeg|\.png)$/i.test(objFile.value)) {
		alert("이미지 형식의 파일을 선택하십시오");
		return;
	}

	// ie 7 구분
	if (window.navigator.userAgent.indexOf("MSIE 7") != -1) {	// ie 7 이면
		previewer.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='file://" + String(objFile.value) +"', sizingMethod='scale')";
	} else {	// ie 7 이 아닌 브라우저이면
		previewer.innerHTML = "";
		var W = previewer.offsetWidth;
		var H = previewer.offsetHeight;
		//var tmpImage = new Image();
		var tmpImage = document.createElement('img');
		previewer.appendChild(tmpImage);

		tmpImage.onerror = function () {
			alert("이미지 미리보기 생성중 오류발생.");
			return previewer.innerHTML = "";
		}

		tmpImage.onload = function () {
			if (this.width > W) {
				this.height = this.height / (this.width / W);
				this.width = W;
			}
			if (this.height > H) {
				this.width = this.width / (this.height / H);
				this.height = H;
			}
		}

		if (window.navigator.userAgent.indexOf("Firefox/3") != -1) {	// firefox3 이면
			var picData = objFile.files.item(0).getAsDataURL();
			tmpImage.src = 'data:' + picData;
			tmpImage.writeAttribute("title", "ImageSize: "+ objFile.files.item(0).fileSize +" byte");
		} else {
			tmpImage.src = "file://" + objFile.value;
		}
	}
}

// 웹표준용 스크립트 2009-11-17
function getStyleObject(objectId) {
	if(document.getElementById && document.getElementById(objectId)) {
		return document.getElementById(objectId).style;
	}
	else if (document.all && document.all(objectId)) {
		return document.all(objectId).style;
	}
	else if (document.layers && document.layers[objectId]) {
		return document.layers[objectId];
	} else {
		return false;
	}
}

// 웹표준용 스크립트 2009-11-17
function getObject(objectId) {
	if(document.getElementById && document.getElementById(objectId)) {
		return document.getElementById(objectId);
	}
	else if (document.all && document.all(objectId)) {
		return document.all(objectId);
	}
	else if (document.layers && document.layers[objectId]) {
		return document.layers[objectId];
	} else {
		return false;
	}
}

// 웹표준용 스크립트 2009-11-17
function getObjectNm(objectNm) {
	if(document.getElementsByName && document.getElementsByName(objectNm)) {
		return document.getElementsByName(objectNm);
	}
	else {
		return false;
	}
}


function changeObjectVisibility(objectId, newVisibility) {
    // first get a reference to the cross-browser style object
    // and make sure the object exists
    var styleObject = getStyleObject(objectId);
    if(styleObject) {
	styleObject.visibility = newVisibility;
	return true;
    } else {
	// we couldn't find the object, so we can't change its visibility
		return false;
    }
}

function displayText(objectId, text){
	if (document.all) {
	document.all[objectId].innerHTML = text;
	}
	else
	{
	var obj = document.getElementById(objectId);
	obj.innerHTML = text;
	}
}

// 공백 체크
function fnEmpty(data)
{
   for ( var i = 0 ; i < data.length ; i++ )
   {
      if (data.substring( i, i+1 ) != " ")
         return false;
   }
   return true;
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
 * 스크립트 삽입 확인 2010-01-01
 */
function cssBlock(text) {
	var filter = /<script|\.js[^p]|<base/i;
	if (filter.test(text)) {
		rtnVal = true;
	} else {
		rtnVal =false;
	}
	return rtnVal;
}

function numbersonly(e, decimal) {
	var key;
	var keychar;

	if (window.event) {
		// IE에서 이벤트를 확인하기 위한 설정
		key = window.event.keyCode;
	} else if (e) {
		// FireFox에서 이벤트를 확인하기 위한 설정
		key = e.which;
	} else {
		return true;
	}

	keychar = String.fromCharCode(key);
	if ((key == null) || (key == 0) || (key == 8) || (key == 9) || (key == 13)
			|| (key == 27)) {
		return true;
	} else if ((("0123456789").indexOf(keychar) > -1)) {
		return true;
	} else if (decimal && (keychar == ".")) {
		return true;
	} else
		return false;
}
function okCashNumFocus(obj, obj2){
	var len = obj.value.length;
	var maxlen = obj.maxLength;
	if(len == maxlen) document.all[obj2].focus();
}

//임시이메일 입력제한 2011-12-20
function fnEmailExcept(val){
	var TempEmail = "24our.com/owpic.com/nwldx.com/yopmail.com/10minutemail.com";
	var arrEmail = TempEmail.split("/");
	var isEmailExcept = false;
	for (var i = 0; i < arrEmail.length; i++) {
		if (arrEmail[i].indexOf(val)  > -1) {
			isEmailExcept = true;
			break;
		}
	}
	return isEmailExcept;
}

/* 서버시간 가져오기 */
function getServDate(){
	var xmlHttp;
	try{
		if(window.XMLHttpRequest){//IE7.0이상, 크롬, 파이어폭스
			xmlHttp = new XMLHttpRequest();
			xmlHttp.open('HEAD', '/rsc/lib/common/blank.asp', false);
			xmlHttp.setRequestHeader('Content-Type', 'text/html');
			xmlHttp.send('');
			return new Date(xmlHttp.getResponseHeader('Date'));
		} else if (window.ActiveXObject){//IE
			xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
			xmlHttp.open('HEAD', '/rsc/lib/common/blank.asp', false);
			xmlHttp.setRequestHeader('Content-Type', 'text/html');
			xmlHttp.send('');
			return new Date(xmlHttp.getResponseHeader('Date'));
		} else {//그래도 처리 안된다면...
			return new Date();
		}
	}
	catch(e){
		return new Date();
	}
}