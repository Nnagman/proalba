	var JOBSEARCH = {
		areaLimitCnt : 5,
		jobkindMulti : "",

		areaMulti : "",
		areaLimitCnt : 5,
		jobkindMulti : "",

		// Sido
		fnsetSido : function(areaMulti, areacd){
			var strSido = "";
			var strSelected = "";
			var tmpAreaCD = "";
			var tmpAreaNM = "";
			var arrMulti;
			var arrMulti2;

			this.areaMulti = $.trim(areaMulti);

			if (this.areaMulti != "") {
				arrMulti = this.areaMulti.split(",");
				arrMulti2 = arrMulti[0].split("||");
				tmpAreaCD = arrMulti2[0];
			} else if (areacd != "") {
				tmpAreaCD = areacd;
			} else {
				tmpAreaCD = arrAreaWide.AREACD[0]["CD"];
			}

			$('#ulAreacd').html("");

			$.each(arrAreaWide.AREACD, function(index, entry) {
				if (tmpAreaCD == entry["CD"]) {
					strSelected = " class=\"on\" ";
					tmpAreaNM = entry["NM"];
				} else {
					strSelected = "";
				}

				strSido += "<li id='"+entry["CD"]+"' "+strSelected+"><a href='#' onclick=\"JOBSEARCH.fnsetGugun('"+ entry["CD"] +"', '"+ entry["NM"] +"');\">"+ entry["NM"] +"</a></li>";
			});

			$('#ulAreacd').html(strSido);

			if (tmpAreaNM == "") {
				tmpAreaNM = arrAreaWide.AREACD[0]["NM"];
			}

			// Gugun
			this.fnsetGugun(tmpAreaCD, tmpAreaNM);
		},

		// Gugun
		fnsetGugun : function(areacd, areanm){
			var strGugun = "";
			var i;
			var j;
			var strCss;
			var strChecked;
			var arrMulti;
			var arrMulti2;

			$('#ulGugun').html("");
			$('#ulDong').hide();

			if (areacd == "99" || areacd == "044") {
				strCss = "";
				strChecked = "";

				if (JOBSEARCH.areaMulti != "") {
					arrMulti = JOBSEARCH.areaMulti.split(",");
					for (j = 0; j < arrMulti.length; j++){
						arrMulti2 = arrMulti[j].split("||");
						if ($.trim(arrMulti2[0]) == $.trim(areacd) && $.trim(arrMulti2[1]) == "전체"){
							strCss = "on";
							strChecked = "checked";
							break;
						}
					}
				}

				strGugun +="<li><span class=\"input "+strCss+"\">"
						+"	<input type='radio' id='selGugun0' name='selGugun' value='전체'  "+strChecked+" "
						+"	onClick=\"JOBSEARCH.fnsetDong(this, '"+areacd+"', '"+areanm+"', '전체'); "
				strGugun += " JOBSEARCH.fnAreaDisplay(this, '"+areanm+"','전체',''); \" /><label for='selGugun0'><strong>"+areanm+" 전체</strong></label></span></li>";
				/*if (areacd == "99") {
					strGugun += " JOBSEARCH.fnLocalSubDisplay2(this, '"+areacd+"','전체',''); \" /><label for='selGugun0'><strong>"+areanm+" 전체</strong></label></span></li>";
				} else {
					strGugun += " \" /><label for='selGugun0'><strong>"+areanm+" 전체</strong></label></span></li>";
				}*/
			} else {
				$.each(arrAreaMid.AREACD, function(index, entry) {
					if (entry["MCD"] == areacd && $.trim(entry["NM"]) == "전체") {
						strCss = "";
						strChecked = "";

						if (JOBSEARCH.areaMulti != "") {
							arrMulti = JOBSEARCH.areaMulti.split(",");
							for (j = 0; j < arrMulti.length; j++){
								arrMulti2 = arrMulti[j].split("||");
								if ($.trim(arrMulti2[0]) == $.trim(entry["MCD"]) && $.trim(arrMulti2[1]) == $.trim(entry["NM"])){
									strCss = "on";
									strChecked = "checked";
									break;
								}
							}
						}

						strGugun +="<li><span class=\"input "+strCss+"\">"
								+"	<input type='radio' id='selGugun0' name='selGugun' value='"+ entry["NM"] +"'  "+strChecked+" "
								+"	onClick=\"JOBSEARCH.fnsetDong(this, '"+areacd+"', '"+areanm+"', '"+entry["NM"]+"'); "
						strGugun += " JOBSEARCH.fnAreaDisplay(this, '"+areanm+"','"+entry["NM"]+"',''); \" /><label for='selGugun0'><strong>"+areanm+" "+entry["NM"]+"</strong></label></span></li>";
						//strGugun += " JOBSEARCH.fnLocalSubDisplay2(this, '"+areacd+"','"+entry["NM"]+"',''); \" /><label for='selGugun0'><strong>"+areanm+" "+entry["NM"]+"</strong></label></span></li>";
					}
				});

				i = 1;

				$.each(arrAreaMid.AREACD, function(index, entry) {
					if (entry["MCD"] == areacd && $.trim(entry["NM"]) != "전체") {

						strGugun +="<li><span class=\"input \">"
								+"	<input type='radio' id='selGugun"+i+"' name='selGugun' value='"+ entry["NM"] +"'  "
								+"	onClick=\"JOBSEARCH.fnsetDong(this, '"+areacd+"', '"+areanm+"', '"+entry["NM"]+"'); "
						strGugun += " \" /><label for='selGugun"+i+"'>"+ entry["NM"]+"</label></span></li>";

						i++;
					}
				});
			}

			$('#ulGugun').html(strGugun);
		},

		// Dong
		fnsetDong : function(obj, areacd, areanm, gugun) {
			var strDong = "";
			var arrMulti;
			var arrMulti2;
			var j;

			$('input:radio[id^=selGugun]').each(function() {
				$(this).parent().removeClass("on");
			});
			$(obj).parent().addClass("on");

			if (areanm == "전국") { // 2016.03.15 leekiback 044 세종시 제외
				$('#ulDong').hide();
			}
			else {
				if (gugun != "" && ( gugun != "전체" || (areacd == "044" && gugun == "전체") )) { // 2016.03.15 leekiback 044 세종시 제외 세종시 전체 표시 할수 있도록 예외처리 추가
					
					if (areacd != "044") {
						if (this.areaMulti != "") {
							arrMulti = this.areaMulti.split(",");
							for (j = 0; j < arrMulti.length; j++){
								arrMulti2 = arrMulti[j].split("||");
								if ($.trim(arrMulti2[0]) == $.trim(areacd) && $.trim(arrMulti2[1]) == $.trim(gugun)){
									strDong += arrMulti2[2]+",";
								}
							}
						}
					}
					

					$.ajax({
						type: "POST",
						url: "/rsc/inc/biz/GetDongData.asp?jopsearch=DD&sido=" + escape(areanm) + "&gu=" + escape(gugun) + "&dong="+escape(strDong),
						cache: false,
						data:"",
						contentType:"text/html",
						success: function (data) {
							if (data != "fail") { 
								$('#ulDong').show(); $('#ulDong').html(data);

							} else { 
								$('#ulDong').html(""); 
							}
						},
						error: function() {	alert("동 가져오기 오류"); }
					});
				}
				else {
					$('#ulDong').hide();
				}
			}
		},

		// Dong (경리단길 구군모드에서 사용)
		fnsetAreaDong : function(obj, areacd, areanm, gugun) {
			var strDong = "";
			var strAreaMulti = $("#strAreaMulti").val();
			var arrMulti;
			var arrMulti2;
			var j;

			$("ul.localList.listFirst li > a").removeClass("on");
			$(obj).addClass("on");

			if (areanm == "전국") {
				$('#ulDong').hide();
			} else {
				if (gugun != "" && (gugun != "전체" || (areacd == "044" && gugun == "전체"))) {
					if (strAreaMulti != "") {
						arrMulti = strAreaMulti.split(",");
						for (j = 0; j < arrMulti.length-1; j++){
							arrMulti2 = arrMulti[j].split("||");
							if ($.trim(getSidoName(arrMulti2[0])) == $.trim(areanm) && $.trim(arrMulti2[1]) == $.trim(gugun)){
								strDong += arrMulti2[2]+",";
							}
						}
					}

					$.ajax({
						type: "POST",
						url: "/job/area/search/ajax/ajaxGetDongData.asp?jopsearch=D&sido=" + areacd + "&gu=" + escape(gugun) + "&dong="+escape(strDong),
						cache: false,
						data: "",
						contentType:"text/html",
						success: function (data) {
							if (data != "fail") { $('#ulDong').show(); $('#ulDong').html(data);} else { $('#ulDong').html(""); }
						},
						error: function() {	alert("동 가져오기 오류"); }
					});
				} else {
					$('#ulDong').hide();
				}
			}
		},

		fnshowArea : function() {
			var strHtml = "";
			var arrMulti;
			var arrMulti2;
			var i, j;
			var tmpAreaNM;
			var objA = $("dl.area dd.content > a");

			if (this.areaMulti != ""){
				arrMulti = this.areaMulti.split(",");
				for (i=0; i<arrMulti.length; i++) {
					arrMulti2 = arrMulti[i].split("||");

					for (j = 0; j < arrAreaWide.AREACD.length; j++) {
						if (arrAreaWide.AREACD[j]["CD"] == $.trim(arrMulti2[0])) {
							tmpAreaNM = arrAreaWide.AREACD[j]["NM"];
							break;
						}
					}
					if (arrMulti2[0] == "044") { // 2016.03.15 leekiback 044 세종시 gugun 제외 표시
						if (arrMulti2[2] == "") {
							strHtml += "<span>"+tmpAreaNM+" "+arrMulti2[1]+" <button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnAreaNoneDisplay('"+tmpAreaNM+"', '"+arrMulti2[1]+"', '"+arrMulti2[2]+"'); return false;\"></button></span>";
						} else {
							strHtml += "<span>"+tmpAreaNM+" "+arrMulti2[2]+" <button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnAreaNoneDisplay('"+tmpAreaNM+"', '"+arrMulti2[1]+"', '"+arrMulti2[2]+"'); return false;\"></button></span>";
						}
						
					} else {
						strHtml += "<span>"+tmpAreaNM+" "+arrMulti2[1]+" "+arrMulti2[2]+" <button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnAreaNoneDisplay('"+tmpAreaNM+"', '"+arrMulti2[1]+"', '"+arrMulti2[2]+"'); return false;\"></button></span>";
					}
					
				}

				objA.removeClass("blank");
				objA.addClass("value");
				objA.html(strHtml);
			}
		},

		fnshowArea2 : function() {
			var strHtml = "";
			var arrMulti;
			var arrMulti2;
			var i, j;
			var tmpAreaNM;
			var objA = $("dl.area dd.content > a");
			var sigudong = "";
			var sigudong2 = "";

			if (this.areaMulti != ""){
				arrMulti = this.areaMulti.split(",");
				for (i=0; i<arrMulti.length-1; i++) {
					arrMulti2 = arrMulti[i].split("||");
					sigudong = arrMulti2[0]+"||"+arrMulti2[1]+"||"+arrMulti2[2];

					if (arrMulti2[0] == "044") {
						if (arrMulti2[2] != "") {
							sigudong2 = getSidoName(arrMulti2[0])+" "+arrMulti2[2];
						} else {
							sigudong2 = getSidoName(arrMulti2[0])+" "+"전체";
						}
					} else if (arrMulti2[1] == "전체") {
						sigudong2 = getSidoName(arrMulti2[0])+" "+arrMulti2[1];
					} else {
						sigudong2 = getSidoName(arrMulti2[0])+" "+arrMulti2[1]+" "+arrMulti2[2];
					}
					strHtml += "<span>"+tmpAreaNM+" "+arrMulti2[1]+" "+arrMulti2[2]+" <button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnLocalNoneDisplay2(this, '"+tmpAreaNM+"', '"+arrMulti2[1]+"', '"+arrMulti2[2]+"'); return false;\"></button></span>";
					//strHtml +="<span onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnLocalNoneDisplay2(this, '"+arrMulti2[2]+"', '"+sigudong+"', '"+sigudong2+"'); return false;\">"+sigudong2+ "<button></button></span>";
				}

				objA.removeClass("blank");
				objA.addClass("value");
				objA.html(strHtml);
			}
		},

		// Gugun Display
		fnAreaDisplay : function(objInput, sido, gugun, dong){
			var objA = $("dl.area dd.content > a");
			var tmpAreaCD = "";
			var i;
			var chkDupli;

			for (i = 0; i < arrAreaWide.AREACD.length; i++) {
				if (arrAreaWide.AREACD[i]["NM"] == $.trim(sido)) {
					tmpAreaCD = arrAreaWide.AREACD[i]["CD"];
					break;
				}
			}

			if ($(objInput).is(":checked")) {

				chkDupli = 0;
				arrMulti = this.areaMulti.split(",");
				for (j = 0; j < arrMulti.length; j++){
					arrMulti2 = arrMulti[j].split("||");
					if (tmpAreaCD == "044") {  // 2016.03.15 leekiback 044 세종시 gugun 제외 표시
						if ($.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[2]) == $.trim(dong) ){
							chkDupli++;
						}
					} else {
						if ($.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[1]) == $.trim(gugun) && $.trim(arrMulti2[2]) == $.trim(dong) ){
							chkDupli++;
						}
					}
					
				}

				if (chkDupli == 0) {
				
					$(objInput).parent().addClass("on");

					if ($.trim(this.areaMulti) == ""){
						objA.html("");
						this.areaMulti += $.trim(tmpAreaCD+"||"+gugun+"||"+dong);
					}
					else {
						this.areaMulti += $.trim(","+tmpAreaCD+"||"+gugun+"||"+dong);
					}

					this.fnAreaRankDisplay(tmpAreaCD, sido, gugun, dong);

					arrMulti = this.areaMulti.split(",");
					if (arrMulti.length > this.areaLimitCnt) {
						alert("최대 "+this.areaLimitCnt+"개까지 선택가능합니다.");
						$(objInput).attr("checked", false);
						$(objInput).parent().removeClass("on");
						this.fnAreaNoneDisplay(sido, gugun, dong);
						return false;
					}
					else {
						objA.removeClass("blank");
						objA.addClass("value");
						if (tmpAreaCD == "044") { // 2016.03.15 leekiback 044 세종시 gugun 제외 표시
							if (dong == "") {
								objA.append("<span>"+sido+" "+gugun+" <button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnAreaNoneDisplay('"+sido+"', '"+gugun+"', '"+dong+"'); return false;\"></button></span>");
							} else {
								objA.append("<span>"+sido+" "+dong+" <button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnAreaNoneDisplay('"+sido+"', '"+gugun+"', '"+dong+"'); return false;\"></button></span>");
							}
						} else {
							objA.append("<span>"+sido+" "+gugun+" "+dong+" <button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnAreaNoneDisplay('"+sido+"', '"+gugun+"', '"+dong+"'); return false;\"></button></span>");
						}
						
					}

				}
				else {
					return false;
				}
			}
			else {
				$(objInput).parent().removeClass("on");
				this.fnAreaNoneDisplay(sido, gugun, dong);
			}
		},

		fnAreaNoneDisplay : function (sido, gugun, dong) {
			var strtmp;
			var arrMulti;
			var arrMulti2;
			var tmpAreaCD = "";
			var i,j
			var tmpIndex;
			var tmpCnt;
			var noneCheck = false;

			for (i = 0; i < arrAreaWide.AREACD.length; i++) {
				if (arrAreaWide.AREACD[i]["NM"] == $.trim(sido)) {
					tmpAreaCD = arrAreaWide.AREACD[i]["CD"];
					break;
				}
			}

			if ($.trim(this.areaMulti) != ""){

				arrMulti = this.areaMulti.split(",");
				for (i=0; i<arrMulti.length; i++) {
					arrMulti2 = arrMulti[i].split("||");
					
					if (tmpAreaCD == "044") { // 2016.03.15 leekiback 044 세종시 gugun 제외 표시
						if ( $.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[2]) == $.trim(dong) ) {
							tmpIndex = i;
						}
					} else {
						if ( $.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[1]) == $.trim(gugun) && $.trim(arrMulti2[2]) == $.trim(dong) ) {
							tmpIndex = i;
						}
					}
					
				}

				tmpCnt = arrMulti.length - 1;

				if (this.areaMulti.indexOf(",") > -1) {
					if (tmpIndex == tmpCnt) {
						strtmp = $.trim(","+arrMulti[tmpIndex]);
					}
					else {
						strtmp = $.trim(arrMulti[tmpIndex]+",");
					}
				}
				else {
					strtmp = $.trim(arrMulti[tmpIndex]);
				}

				this.areaMulti = this.areaMulti.replace(strtmp, "");

				$("dl.area dd.content > a span").each(function(i) {
					strtmp = $.trim($(this).text());
					strtmp = String(strtmp);

					if (strtmp.indexOf(sido) > -1) {
						strtmp = strtmp.replace(sido, "");
					}

					if ($.trim(strtmp) == "전체") { // 2016.03.15 leekiback 044 세종시 
						if (tmpAreaCD == "044" && dong == "") {
							$(this).remove();
						} else {
							if ($.trim(gugun) == "전체") {
								$(this).remove();
							}
						}
						
					}
					else {
						if (strtmp.indexOf(gugun) > -1) {
							strtmp = strtmp.replace(gugun, "");
						}

						if ($.trim(dong) == $.trim(strtmp)) {
							$(this).remove();
						}
					}
				});

				if ($.trim(this.areaMulti) == "") {
					this.areaMulti = $.trim(this.areaMulti);
					$("dl.area dd.content > a").removeClass("value");
					$("dl.area dd.content > a").addClass("blank");
					$("dl.area dd.content > a").html("지역을 선택하세요 (최대 "+this.areaLimitCnt+"개 선택가능)");
				}
				
				if (tmpAreaCD == "044") { // 2016.03.15 leekiback 044 세종시 gugun 제외로 동비교
					$('input[id^=selDong]').each(function(i){
						if ($.trim($(this).val()) == $.trim(dong)) {

							//alert($(this).val() + ", " + $(this).parent().html());
							$(this).removeAttr("checked");
							$(this).parent().removeClass("on");
						}
					});
				} else {
					$('input[id^=selGugun]:checked').each(function(i){
						if ($.trim($(this).val()) == $.trim(gugun)) {
							noneCheck = true;
						}
					});
					
					if (noneCheck){
						$('input[id^=selDong]').each(function(i){
							if ($.trim($(this).val()) == $.trim(dong)) {
								$(this).attr("checked", false);
								$(this).parent().removeClass("on");
							}
						});
					}

				}
				

				if ($("#"+tmpAreaCD+"").hasClass("on")){ 
					if (tmpAreaCD == "044") { // 2016.03.15 leekiback 044 세종시 gugun 제외로 동비교
						if ($.trim(dong) == ""){
							$("#selGugun0").attr("checked", false);
							$("#selGugun0").parent().removeClass("on");
						}
					} else {
						if ($.trim(gugun) == "전체"){
							$("#selGugun0").attr("checked", false);
							$("#selGugun0").parent().removeClass("on");
						}
					}
					
				}
			}
			else {
				alert("삭제할 지역이 없습니다.");
				return false;
			}
		},
		
		fnAreaRankDisplay : function(tmpAreaCD, sido, gugun, dong) {
			var arrMulti = this.areaMulti.split(",");
			var arrMulti2;
			var tmpAreaNM;
			var i, j;

			if ($.trim(tmpAreaCD) == "99") {
				for (j = 0; j < arrMulti.length; j++){
					arrMulti2 = arrMulti[j].split("||");
					if ($.trim(arrMulti2[0]) != "99") {

						for (i = 0; i < arrAreaWide.AREACD.length; i++) {
							if (arrAreaWide.AREACD[i]["CD"] == $.trim(arrMulti2[0])) {
								tmpAreaNM = arrAreaWide.AREACD[i]["NM"];
								break;
							}
						}

						this.fnAreaNoneDisplay(tmpAreaNM, arrMulti2[1], arrMulti2[2]);
					}
				}
			}
			else {

				if ($.trim(dong) != ""){
					this.fnAreaNoneDisplay("전국", "전체", "");

					if ($.trim(dong) ==  "전체") {
						for (j = 0; j < arrMulti.length; j++){
							arrMulti2 = arrMulti[j].split("||");

							if ( $.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[1]) == gugun &&  $.trim(arrMulti2[2]) != "" && $.trim(arrMulti2[2]) != "전체"){
								this.fnAreaNoneDisplay(sido, gugun, arrMulti2[2]);
							}
						}
						this.fnAreaNoneDisplay(sido, '전체', '');
					} else {
						for (j = 0; j < arrMulti.length; j++){
							arrMulti2 = arrMulti[j].split("||");
							if ($.trim(tmpAreaCD) == "044") { // 2016.03.15 leekiback 044 세종시 gugun 제외
								if ($.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[2]) == "" ){  //동 선택시 군 , 동 전체 해제.
									this.fnAreaNoneDisplay(sido, '전체', '');
								}
							} else {
								if ($.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[1]) == "전체" ){
									this.fnAreaNoneDisplay(sido, '전체', '');
								}
								else if ($.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[1]) == $.trim(gugun) && $.trim(arrMulti2[2]) == "전체") {
									this.fnAreaNoneDisplay(sido, gugun, '전체');
								}		
							}
						}
					}
				}
				
				if ($.trim(tmpAreaCD) == "044") {
					if ($.trim(dong) == "") {  // 군전체 선택시 나머지 해당 동 해지 체크
						this.fnAreaNoneDisplay("전국", "전체", "");
						for (j = 0; j < arrMulti.length; j++){
							arrMulti2 = arrMulti[j].split("||");
							if ( $.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[2]) != "" ){
								this.fnAreaNoneDisplay(sido, arrMulti2[1], arrMulti2[2]);
							}
						}						
					}
				} else {
					if ($.trim(gugun) == "전체") {
						this.fnAreaNoneDisplay("전국", "전체", "");
						for (j = 0; j < arrMulti.length; j++){
							arrMulti2 = arrMulti[j].split("||");
							if ( $.trim(arrMulti2[0]) == $.trim(tmpAreaCD) && $.trim(arrMulti2[1]) != "전체" ){
								this.fnAreaNoneDisplay(sido, arrMulti2[1], arrMulti2[2]);
							}
						}						
					}
				}
				
			}

		},

		//지역 (구군 멀티)
		fnLocalSubDisplay : function(obj, sido, gugun, dong) {
			var objA = $("#localcontent");
			var strAreaMulti = $("#strAreaMulti").val();
			var arrAreaMulti = "";
			var arrAreaMulti2 = "";
			var i = 0;
			var sigudong = sido + "||" + gugun + "||" + dong;
			var gudong = gugun + " " + dong;
			var dong = dong.replace(/\./g,'\\\.');		//id로 넘길 때 특수문자(.) 처리

			if (sido == "044") {
				gudong = getSidoName(sido) + " " + dong;
			}

			if ($(obj).is(":checked")) {
				var chkCnt = 0;
				if (strAreaMulti != "") {
					arrAreaMulti = strAreaMulti.split(",");
					if (dong == "전체") {
						for (i=0; i<arrAreaMulti.length; i++) {
							if (arrAreaMulti[i].indexOf(sido + "||" + gugun) > -1)	{
								strAreaMulti = strAreaMulti.replace(arrAreaMulti[i]+",", "");

								$("input.typeCheckbox[name=dong]").each(function () {
									if ($(this).val() != $(obj).val()){
										$(this).attr("checked",false);
										$(this).parent().removeClass("on");
									} else {
										$(this).attr("checked",true);
										$(this).parent().addClass("on");
									}
								});
							}
						}
					} else {
						for (i=0; i<arrAreaMulti.length; i++) {
							if (arrAreaMulti[i] == sido + "||" + gugun + "||" + "전체") {
								strAreaMulti = strAreaMulti.replace(arrAreaMulti[i]+",", "");
								$("input.typeCheckbox[name=dong]").each(function () {
									if ($(this).val() != $(obj).val()){
										$(this).attr("checked",false);
										$(this).parent().removeClass("on");
									} else {
										$(this).attr("checked",true);
										$(this).parent().addClass("on");
									}
								});
							}
						}
					}
					arrAreaMulti = strAreaMulti.split(",");
					chkCnt = arrAreaMulti.length;
				}

				if(chkCnt > 5) {
					alert("지역은 5개까지 선택 가능합니다.");
					$("#"+dong).attr("checked",false);
					$("#"+dong).parent(".input").removeClass("on");
					return false;
				} else {
					$("#"+dong).attr("checked",true);
					$("#"+dong).parent(".input").addClass("on");
					strAreaMulti += sigudong + ",";
				}
				objA.html("");
				objA.removeClass("blank");
				objA.addClass("value");

				arrAreaMulti = strAreaMulti.split(",");
				for (i=0; i<arrAreaMulti.length-1; i++) {
					arrAreaMulti2 = arrAreaMulti[i].split("||");
					sigudong = arrAreaMulti2[0] + "||" + arrAreaMulti2[1] + "||" + arrAreaMulti2[2];
					gudong = arrAreaMulti2[1] + " " + arrAreaMulti2[2];
					if (arrAreaMulti2[0] == "044") {
						gudong = getSidoName(arrAreaMulti2[0]) + " " + arrAreaMulti2[2];
					}

					objA.append("<span onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnLocalNoneDisplay(this, '"+arrAreaMulti2[2]+"', '"+sigudong+"', '"+gudong+"'); return false;\">"+gudong+ "<button></button></span>");
				}
			} else {
				$("dl.area dd.content > a span").each(function(i) {
					strtmp = $(this).text();
					if ($.trim(strtmp) == $.trim(gudong)) {
						$(this).remove();
						$("#"+dong).attr("checked",false);
						$("#"+dong).parent(".input").removeClass("on");
						strAreaMulti = strAreaMulti.replace(sigudong + ",", "");
					}
				});
				//if($("input:checkbox[name='dong']:checked").length==0) {
				if (strAreaMulti == "") {
					objA.removeClass("value");
					objA.addClass("blank");
					objA.html("지역을 선택하세요 (최대 5개 선택가능)");
				}
			}
			$("#strAreaMulti").val(strAreaMulti);
		},

		fnLocalNoneDisplay : function(obj, dong, sigudong, gudong) {
			var strtmp;
			var objA = $("#localcontent");
			var strAreaMulti = $("#strAreaMulti").val();
			var arrAreaMulti = "";
			var dong = dong.replace(/\./g,'\\\.');		//id로 넘길 때 특수문자(.) 처리

			$("dl.area dd.content > a span").each(function(i) {
				strtmp = $(this).text();
				if ($.trim(strtmp) == $.trim(gudong)) {
					$(this).remove();
					$("#"+dong).attr("checked",false);
					$("#"+dong).parent(".input").removeClass("on");
					strAreaMulti = strAreaMulti.replace(sigudong + ",", "");
				}
			});

			//if($("input:checkbox[name='dong']:checked").length==0) {
			if (strAreaMulti == "") {
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("지역을 선택하세요 (최대 5개 선택가능)");
			}
			$("#strAreaMulti").val(strAreaMulti);
		},

		//지역 (시도 멀티)
		fnLocalSubDisplay2 : function(obj, sido, gugun, dong) {
			var objA = $("#localcontent");
			var strAreaMulti = $("#strAreaMulti").val();
			var arrAreaMulti = "";
			var arrAreaMulti2 = "";
			var i = 0;
			var sigudong = sido + "||" + gugun + "||" + dong;
			var sigudong2 = "";
			var dong = dong.replace(/\./g,'\\\.');		//id로 넘길 때 특수문자(.) 처리

			if (sido == "044") {
				sigudong2 = getSidoName(sido)+" "+dong;
			} else if (gugun == "전체") {
				sigudong2 = getSidoName(sido)+" "+gugun;
			} else {
				sigudong2 = getSidoName(sido)+" "+gugun+" "+dong;
			}

			if ($(obj).is(":checked")) {
				var chkCnt = 0;
				if (strAreaMulti != "") {
					arrAreaMulti = strAreaMulti.split(",");
					if (dong == "전체") {
						for (i=0; i<arrAreaMulti.length; i++) {
							//if (arrAreaMulti[i].indexOf(sido + "||" + gugun) > -1)	{
							if ((arrAreaMulti[i].indexOf(sido + "||" + gugun) > -1) || (sido != "044" && arrAreaMulti[i].indexOf(sido + "||" + "전체") > -1))	{	//시도 전체선택 시 사용
								strAreaMulti = strAreaMulti.replace(arrAreaMulti[i]+",", "");

								$("input.typeCheckbox[name=dong]").each(function () {
									if ($(this).val() != $(obj).val()){
										$(this).attr("checked",false);
										$(this).parent().removeClass("on");
									} else {
										$(this).attr("checked",true);
										$(this).parent().addClass("on");
									}
								});
							}
						}
					} else if (sido != "044" && gugun == "전체") {		//시도 전체선택 시 사용
						for (i=0; i<arrAreaMulti.length; i++) {
							if (arrAreaMulti[i].indexOf(sido) > -1)	{
								strAreaMulti = strAreaMulti.replace(arrAreaMulti[i]+",", "");
								$("input.typeCheckbox[name=dong]").each(function () {
									$(this).attr("checked",false);
									$(this).parent().removeClass("on");
								});
							}
						}
					} else {
						for (i=0; i<arrAreaMulti.length; i++) {
							//if (arrAreaMulti[i] == sido + "||" + gugun + "||" + "전체") {
							if ((arrAreaMulti[i] == sido + "||" + gugun + "||" + "전체") || (sido != "044" && arrAreaMulti[i] == sido + "||" + "전체" + "||")) {	//시도 전체선택 시 사용
								strAreaMulti = strAreaMulti.replace(arrAreaMulti[i]+",", "");
								$("input.typeCheckbox[name=dong]").each(function () {
									if ($(this).val() != $(obj).val()){
										$(this).attr("checked",false);
										$(this).parent().removeClass("on");
									} else {
										$(this).attr("checked",true);
										$(this).parent().addClass("on");
									}
								});
							}
						}
					}
					arrAreaMulti = strAreaMulti.split(",");
					chkCnt = arrAreaMulti.length;
				}

				if(chkCnt > 5) {
					alert("지역은 5개까지 선택 가능합니다.");
					$("#"+dong).attr("checked",false);
					$("#"+dong).parent(".input").removeClass("on");
					return false;
				} else {
					if ((gugun != "전체") || (sido == "044" && gugun == "전체")) {	//시도 전체선택 시 사용
						$("#"+dong).attr("checked",true);
						$("#"+dong).parent(".input").addClass("on");
					}
					strAreaMulti += sigudong + ",";
				}
				objA.html("");
				objA.removeClass("blank");
				objA.addClass("value");

				arrAreaMulti = strAreaMulti.split(",");
				for (i=0; i<arrAreaMulti.length-1; i++) {
					arrAreaMulti2 = arrAreaMulti[i].split("||");
					sigudong = arrAreaMulti2[0] + "||" + arrAreaMulti2[1] + "||" + arrAreaMulti2[2];

					if (arrAreaMulti2[0] == "044") {
						sigudong2 = getSidoName(arrAreaMulti2[0])+" "+arrAreaMulti2[2];
					} else if (arrAreaMulti2[1] == "전체") {	//시도 전체선택 시 사용
						sigudong2 = getSidoName(arrAreaMulti2[0])+" "+arrAreaMulti2[1];
					} else {
						sigudong2 = getSidoName(arrAreaMulti2[0])+" "+arrAreaMulti2[1]+" "+arrAreaMulti2[2];
					}

					objA.append("<span onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnLocalNoneDisplay2(this, '"+arrAreaMulti2[2]+"', '"+sigudong+"', '"+sigudong2+"'); return false;\">"+sigudong2+ "<button></button></span>");
				}
			} else {
				$("dl.area dd.content > a span").each(function(i) {
					strtmp = $(this).text();
					if ($.trim(strtmp) == $.trim(sigudong2)) {
						$(this).remove();
						if (dong != "") {	//시도 전체선택 시 사용
							$("#"+dong).attr("checked",false);
							$("#"+dong).parent(".input").removeClass("on");
						}
						strAreaMulti = strAreaMulti.replace(sigudong + ",", "");
					}
				});
				//if($("input:checkbox[name='dong']:checked").length==0) {
				if (strAreaMulti == "") {
					objA.removeClass("value");
					objA.addClass("blank");
					objA.html("지역을 선택하세요 (최대 5개 선택가능)");
				}
			}
			$("#strAreaMulti").val(strAreaMulti);
		},

		fnLocalNoneDisplay2 : function(obj, dong, sigudong, sigudong2) {
			var strtmp;
			var objA = $("#localcontent");
			var strAreaMulti = $("#strAreaMulti").val();
			var arrAreaMulti = "";
			var dong = dong.replace(/\./g,'\\\.');		//id로 넘길 때 특수문자(.) 처리

			$("dl.area dd.content > a span").each(function(i) {
				strtmp = $(this).text();
				if ($.trim(strtmp) == $.trim(sigudong2)) {
					$(this).remove();
					if (dong != "") {	//시도 전체선택 시 사용
						$("#"+dong).attr("checked",false);
						$("#"+dong).parent(".input").removeClass("on");
					}
					strAreaMulti = strAreaMulti.replace(sigudong + ",", "");
				}
			});

			//if($("input:checkbox[name='dong']:checked").length==0) {
			if (strAreaMulti == "") {
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("지역을 선택하세요 (최대 5개 선택가능)");
			}
			$("#strAreaMulti").val(strAreaMulti);
		},

		fnLocalMultiNoneDisplay : function() {
			var objA = $("#localcontent");

			objA.removeClass("value");
			objA.addClass("blank");
			objA.html("지역을 선택하세요 (최대 5개 선택가능)");
			$("#strAreaMulti").val("");
		},

		// JobKind
		fnsetJobkind : function(jobkindMulti){
			var strJobkind = "";
			var tmpJobkindCD = "";
			var strSelected = "";
			var arrMulti;

			this.jobkindMulti = $.trim(jobkindMulti);

			if (jobkindMulti != "") {
				arrMulti = this.jobkindMulti.split(",");

				tmpJobkindCD = arrMulti[arrMulti.length-1];
				tmpJobkindCD = tmpJobkindCD.substring(0,2);
				tmpJobkindCD = tmpJobkindCD + "000000";
			}
			else {
				tmpJobkindCD = arrJobCodeWide.JOBCD[0]["CD"];
			}

			$('#ulJobkind').html();

			$.each(arrJobCodeWide.JOBCD, function(index, entry) {
				if (tmpJobkindCD == entry["CD"]){
					strSelected = " class=\"on\" ";
				}
				else {
					strSelected = "";
				}

				strJobkind += "<li "+strSelected+"><a href='#' onclick=\"JOBSEARCH.fnsetKindsub('"+ entry["CD"] +"'); return false;\">"+ entry["NM"] +"</a></li>";
			});

			$('#ulJobkind').html(strJobkind);

			// JobKindSub
			this.fnsetKindsub(tmpJobkindCD);
		},

		// JobKindSub
		fnsetKindsub : function(jobkind){
			var strKindsub = "";
			var obj = jobkind;
			var i = 0;
			var strCheck = "";
			var strCss = "";

			$("#ulJobkindsub").html();

			$.each(arrJobCodeMid.JOBCD, function(index, entry) {
				if (obj == entry["MCD"]) {
					if (JOBSEARCH.jobkindMulti.indexOf(entry["CD"]) > -1){
						strCheck = "checked";
						strCss = " on";
					}
					else {
						strCheck = "";
						strCss = "";
					}

					strKindsub +="<li><span class='input "+strCss+"'>"
								+"	<input type='checkbox' id='jobkindsub"+i+"' value='"+ entry["CD"] +"' "+strCheck+"  onclick=\"JOBSEARCH.fnKindSubDisplay(this);\" />"
								+"	<label for='jobkindsub"+i+"'> " + entry["NM"]
								+	(entry["CD"] == "06010000" ? "<img src=\"http://image.alba.kr/icon/adult.gif\" alt=\"19\" />" : "")
								+"	</label></span></li>";
					i++;
				}
			});

			$("#ulJobkindsub").html(strKindsub);
		},

		//대학교
		fnUniSubDisplay : function(obj, uniid, uninm) {
			var objA = $("#univcontent");
			if ($(obj).is(":checked")) {
				var chkCnt = 0;
				chkCnt = $("input:checkbox[name='unicd']:checked").length;
				if (chkCnt == 1) {
					objA.html("");
				}
				if(chkCnt > 5) {
					alert("대학교는 5개까지 선택 가능합니다.")
					$("#"+uniid).attr("checked",false);
					$("#"+uniid).parent(".input").removeClass("on");
					return false;
				}

				objA.removeClass("blank");
				objA.addClass("value");
				objA.append("<span onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnUniNoneDisplay(this, '"+uniid+"', '"+uninm+"'); return false;\">"+uninm+ "<button></button></span>");
			} else {
				$("dl.univ dd.content > a span").each(function(i) {
					strtmp = $(this).text();
					if ($.trim(strtmp) == $.trim(uninm)) {
						$(this).remove();
					}
				});
				if($("input:checkbox[name='unicd']:checked").length==0) {
					objA.removeClass("value");
					objA.addClass("blank");
					objA.html("대학교를 선택하세요 (최대 5개 선택가능)");
				}
			}
		},

		fnUniNoneDisplay : function(obj, uniid, uninm) {
			var strtmp;
			var objA = $("#univcontent");

			$("dl.univ dd.content > a span").each(function(i) {
				strtmp = $(this).text();
				if ($.trim(strtmp) == $.trim(uninm)) {
					$(this).remove();
				}
			});
			$("#"+uniid).attr("checked",false);
			$("#"+uniid).parent(".input").removeClass("on");
			if($("input:checkbox[name='unicd']:checked").length==0) {
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("대학교를 선택하세요 (최대 5개 선택가능)");
			}
		},

		fnUniMultiNoneDisplay : function() {
			var objA = $("#univcontent");

			objA.removeClass("value");
			objA.addClass("blank");
			objA.html("대학교를 선택하세요 (최대 5개 선택가능)");
		},

		//지하철
		fnSubwaySubDisplay : function(strName, strLineCode){
			var objA = $("#subwaycontent");
			var strSubwayInfoClass = "icon_"+strLineCode;
			var strStationnm = strName;
			if (strStationnm.substring(strStationnm.length-1, strStationnm.length) != "역") {
				strStationnm = strStationnm + "역";
			}
			if (arrstationcd.length == 1) {
				objA.html("");
			}
			objA.removeClass("blank");
			objA.addClass("value");
			objA.append("<span class='subwayIconWrap' onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnSubwayNoneDisplay('"+getSubwayLineNM(strLineCode)+strStationnm+"'); return false;\"><em class='"+strSubwayInfoClass+"'>"+getSubwayLineNM(strLineCode)+"</em>"+strStationnm+ "<button></button></span>");
		},

		fnSubwayMultiSubDisplay : function(){
			var objA = $("#subwaycontent");
			var strSubwayInfoClass = "";
			var strStationnm = "";

			if (arrschnm.length > 0) {
				for (var i=0; i<arrschnm.length ; i++) {
					if (i == 0) {
						objA.html("");
					}
					strStationnm = arrschnm[i];
					if (strStationnm.substring(strStationnm.length-1, strStationnm.length) != "역") {
						strStationnm = strStationnm + "역";
					}
					strSubwayInfoClass = "icon_"+arrstationlinecd[i];
					objA.removeClass("blank");
					objA.addClass("value");
					objA.append("<span class='subwayIconWrap' onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnSubwayNoneDisplay('"+getSubwayLineNM(arrstationlinecd[i])+strStationnm+"'); return false;\"><em class='"+strSubwayInfoClass+"'>"+getSubwayLineNM(arrstationlinecd[i])+"</em>"+strStationnm+ "<button></button></span>");
				}
			}
		},

		fnSubwayNoneDisplay : function(strName){
			var strtmp;
			var objA = $("#subwaycontent");
			var arrstrname  = $("#schName").val().split("|");
			var strstationcd = "";
			var strstrschnm = "";
			var strstationlinecd = "";
			var strposx = "";
			var strposy = "";
			var strStationnm = "";

			$("dl.subway dd.content > a span").each(function(i) {
				strtmp = $(this).text();
				strtmp = String(strtmp);

				if ($.trim(strtmp) == $.trim(strName)) {
					$(this).remove();
					arrstationcd.splice(i,1);
					arrschnm.splice(i,1);
					arrstationlinecd.splice(i,1);
					arrposx.splice(i,1);
					arrposy.splice(i,1);
					if (arrstrname.length == 1) {
						$("#streetstationcd").val("");
						$("#schName").val("");
						$("#stationLineCode").val("");
						$("#posX").val("");
						$("#posY").val("");
						$("#stationChecked0").hide();
						objA.removeClass("value");
						objA.addClass("blank");
						objA.html("지하철을 선택하세요 (최대 5개 선택가능)");

					}else {
						for (var j=0; j<arrstationcd.length; j++) {
							if (j==0) {
								strstationcd = arrstationcd[j];
								strstrschnm = arrschnm[j];
								strstationlinecd = arrstationlinecd[j];
								strposx = arrposx[j];
								strposy = arrposy[j];
							} else {
								strstationcd = strstationcd + "|" + arrstationcd[j];
								strstrschnm = strstrschnm + "|" + arrschnm[j];
								strstationlinecd = strstationlinecd + "|" + arrstationlinecd[j];
								strposx = strposx + "|" + arrposx[j];
								strposy = strposy + "|" + arrposy[j];
							}

							$("#streetstationcd").val(strstationcd);
							$("#schName").val(strstrschnm);
							$("#stationLineCode").val(strstationlinecd);
							$("#posX").val(strposx);
							$("#posY").val(strposy);

							strStationnm = getSubwayLineNM(arrstationlinecd[j]) + arrschnm[j];
							if (strStationnm.substring(strStationnm.length-1, strStationnm.length) != "역") {
								strStationnm = strStationnm + "역";
							}
							$("#stationChecked"+j).css("left", arrposx[j] +"px");
							$("#stationChecked"+j).css("top", arrposy[j]+"px");
							$("#hidStationChecked"+j).val(strStationnm);
							$("#stationChecked"+j).show();

							for (var p=arrstationcd.length; p<5; p++)	{
								$("#stationChecked"+eval(p)).hide();
							}
						}
					}
					/*
					if (arrstrname.length == 1) {
						$("#streetstationcd").val("");
						$("#schName").val("");
						$("#stationLineCode").val("");
						arrstationcd.splice(i,1);
						arrschnm.splice(i,1);
						arrstationlinecd.splice(i,1);
						alert($("#schName").val());
					} else {
						$("#streetstationcd").val().replace(strCode+"|","");
						if (i == arrstrname.length-1) {
							$("#schName").val($("#schName").val().replace("|"+strName,""));
						} else {
							$("#schName").val($("#schName").val().replace(strName+"|",""));
						}
						$("#stationLineCode").val().replace(strLineCd+"|","");
					}
					$("#stationChecked"+posNo).empty();
					$("#stationChecked"+posNo).hide();
					*/
					return false;
				}
			});
		},

		fnSubwayMultiNoneDisplay : function(){
			var objA = $("#subwaycontent");

			$("#streetstationcd").val("");
			$("#schName").val("");
			$("#stationLineCode").val("");
			$("#posX").val("");
			$("#posY").val("");
			arrstationcd.length = 0;	//배열 초기화
			arrschnm.length = 0;
			arrstationlinecd.length = 0;
			arrposx.length = 0;
			arrposy.length = 0;
			for (var i=0; i<5; i++) {
				$("#stationChecked"+i).hide();
			}
			objA.removeClass("value");
			objA.addClass("blank");
			objA.html("지하철을 선택하세요 (최대 5개 선택가능)");
			return false;
		},

		// JobKindSub Name Display
		fnKindSubDisplay : function(objthis){
			var objA = $("dl.kind dd.content > a");
			var arrMulti;
			var chkDupli;
			var i,j
			var tmpJobkindNM;

			for (i = 0; i < arrJobCodeMid.JOBCD.length; i++) {
				if (arrJobCodeMid.JOBCD[i]["CD"] == $.trim($(objthis).val())) {
					tmpJobkindNM = arrJobCodeMid.JOBCD[i]["NM"];
					break;
				}
			}

			if (tmpJobkindNM == "전체") {
				for (i = 0; i < arrJobCodeWide.JOBCD.length; i++) {
					if (arrJobCodeWide.JOBCD[i]["CD"] == $.trim($(objthis).val())) {
						tmpJobkindNM = arrJobCodeWide.JOBCD[i]["NM"]+ "전체";
						break;
					}
				}
			}

			if ($(objthis).is(":checked")) {

				chkDupli = 0;

				if (this.jobkindMulti != "" && this.jobkindMulti.indexOf($(objthis).val()) > -1) {
					chkDupli++;
				}

				if (chkDupli > 0) {
					objthis.checked = false;
					return false;
				}

				$(objthis).parent().addClass("on");

				if ($.trim(this.jobkindMulti) == ""){
					objA.html("");
					this.jobkindMulti += $(objthis).val();
				}
				else {
					this.jobkindMulti += $.trim(","+$(objthis).val());
				}

				this.fnKindSubRankDisplay($(objthis).val());

				arrMulti = this.jobkindMulti.split(",");
				if (arrMulti.length > 5){
					alert("최대 5까지 선택 가능합니다.");
					objthis.checked = false;
					$(objthis).parent().removeClass("on");
					this.fnKindSubNoneDisplay($(objthis).val());
					return false;
				}
				else {
					objA.removeClass("blank");
					objA.addClass("value");
					objA.append("<span>"+tmpJobkindNM+ "<button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnKindSubNoneDisplay('"+$(objthis).val()+"'); return false;\"></button></span>");
				}
			}
			else {
				$(objthis).parent().removeClass("on");
				this.fnKindSubNoneDisplay($(objthis).val());
			}
		},

		fnKindSubNoneDisplay : function (jobkindcd) {
			var objA = $("dl.kind dd.content > a");
			var i;
			var tmpJobkindNM;
			var strtmp;
			var arrMulti;
			var tmpIndex;
			var tmpCnt;

			arrMulti = this.jobkindMulti.split(",");

			for (i=0; i<arrMulti.length; i++) {
				if ( $.trim(arrMulti[i]) == $.trim(jobkindcd) ) {
					tmpIndex = i;
				}
			}

			tmpCnt = arrMulti.length - 1;

			if (this.jobkindMulti.indexOf(",") > -1) {
				if (tmpIndex == tmpCnt) {
					strtmp = $.trim(","+arrMulti[tmpIndex]);
				}
				else {
					strtmp = $.trim(arrMulti[tmpIndex]+",");
				}
			}
			else {
				strtmp = $.trim(arrMulti[tmpIndex]);
			}

			this.jobkindMulti = this.jobkindMulti.replace(strtmp, "");

			for (i = 0; i < arrJobCodeMid.JOBCD.length; i++) {
				if (arrJobCodeMid.JOBCD[i]["CD"] == $.trim(jobkindcd)) {
					tmpJobkindNM = arrJobCodeMid.JOBCD[i]["NM"];
					break;
				}
			}

			if (tmpJobkindNM == "전체") {
				for (i = 0; i < arrJobCodeWide.JOBCD.length; i++) {
					if (arrJobCodeWide.JOBCD[i]["CD"] == $.trim(jobkindcd)) {
						tmpJobkindNM = arrJobCodeWide.JOBCD[i]["NM"]+ "전체";
						break;
					}
				}
			}

			$("dl.kind dd.content > a span").each(function(i) {
				strtmp = $(this).text();
				strtmp = String(strtmp);

				if ($.trim(strtmp) == $.trim(tmpJobkindNM)) {
					$(this).remove();
				}
			});


			if ($.trim(this.jobkindMulti) == "") {
				this.jobkindMulti = $.trim(this.jobkindMulti);
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("업&middot;직종을 선택하세요 (최대 5개 선택가능)");
			}

			$('input[id^=jobkindsub]').each(function(i){
				if ($.trim($(this).val()) == $.trim(jobkindcd)) {
					$(this).attr("checked", false);
					$(this).parent().removeClass("on");
				}
			});
		},

		fnKindSubRankDisplay : function(jobkindcd) {
			var arrMulti = this.jobkindMulti.split(",");
			var i;
			var tmpJobkindNM = "";
			var tmpJobkindCDpart = "";

			for (i = 0; i < arrJobCodeMid.JOBCD.length; i++) {
				if (arrJobCodeMid.JOBCD[i]["CD"] == $.trim(jobkindcd)) {
					tmpJobkindNM = $.trim(arrJobCodeMid.JOBCD[i]["NM"]);
					break;
				}
			}

			if (tmpJobkindNM == "전체") {
				for (i = 0; i < arrMulti.length; i++) {
					if ($.trim(arrMulti[i]).substring(0,2) == $.trim(jobkindcd).substring(0,2) && $.trim(arrMulti[i]) != $.trim(jobkindcd)){
						this.fnKindSubNoneDisplay($.trim(arrMulti[i]));
					}
				}
			}
			else {
				tmpJobkindCDpart = $.trim(jobkindcd).substring(0,2) + "000000";
				for (i = 0; i < arrMulti.length; i++) {
					if ($.trim(arrMulti[i]) == $.trim(tmpJobkindCDpart)){
						this.fnKindSubNoneDisplay($.trim(arrMulti[i]));
					}
				}
			}

		},

		fnshowKind : function() {
			var arrSubKind;
			var strKindsubDisplay = "";
			var objA = $("dl.kind dd.content > a");
			var tmpJobkindCD;
			var tmpJobkindNM;
			var i,j,k;

			if (this.jobkindMulti != "") {
				arrSubKind = this.jobkindMulti.split(",");

				for (i = 0; i < arrSubKind.length; i++) {

					for (j = 0; j < arrJobCodeMid.JOBCD.length; j++) {
						if ($.trim(arrSubKind[i]) == $.trim(arrJobCodeMid.JOBCD[j]["CD"])){
							tmpJobkindNM = arrJobCodeMid.JOBCD[j]["NM"]

							if (arrJobCodeMid.JOBCD[j]["NM"] == "전체") {

								for (k = 0; k < arrJobCodeWide.JOBCD.length; k++) {
									if (arrJobCodeWide.JOBCD[k]["CD"] == $.trim(arrSubKind[i])) {
										tmpJobkindNM = arrJobCodeWide.JOBCD[k]["NM"]+ "전체";
									}
								}

							}
							strKindsubDisplay += "<span>"+tmpJobkindNM+"<button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnKindSubNoneDisplay('"+arrJobCodeMid.JOBCD[j]["CD"]+"'); return false;\"></button></span>";
						}
					}
				}

				objA.removeClass("blank");
				objA.addClass("value");
				objA.html(strKindsubDisplay);
			}
		},

		// career(경력)
		fnsetCareer : function(obj){
			var strOption = "";
			var strSelected = "";
			$.each(arrSearchOption.CAREERCD, function(index, entry) {
				if (entry["CD"] == obj){ strSelected = "selected"; } else { strSelected = ""; }
				if (entry["CD"] != "S99"){
					strOption += "<option value='"+ entry["CD"] +"' "+ strSelected +">"+ entry["NM"] +"</option>";
				}
			});

			$('#careercd').html(strOption);
		},

		// lastschoolcd(학력사항)
		fnsetLastSchoolcd : function(obj){
			var strRadio = "";
			var strSelected = "";
			$.each(arrSearchOption.LASTSCHOOLCD, function(index, entry) {
				if (entry["CD"] == obj){ strSelected = " selected"; } else { strSelected = ""; }
				if (entry["CD"] != "E05"){
					strRadio += "<option value='"+ entry["CD"] +"' "+ strSelected +">"+ entry["NM"] +"</option>";
				}
			});

			$('#lastschoolcd').html(strRadio);
		},

		//급여
		fnsetPaycd : function(obj, paystart){
			var strOption = "";
			var strSelected = "";
			var strDisabled = "disabled";
			$.each(arrSearchOption.PAYCD, function(index, entry) {
				if (entry["CD"] != "I08" && entry["CD"] != "") {
					if (entry["CD"] == obj){ strSelected = "checked"; strDisabled = "";} else { strSelected = "";}
					strOption += "<li><span class='input'><input type='radio' id='pay"+index+"' name='paycd' value='"+ entry["CD"] +"' "+ strSelected +" onclick=\"JOBSEARCH.fnChangePaycd(this);\" /><label for='pay"+index+"'>"+entry["NM"]+"</label></span></li>"
				}
			});

			strOption += "<li class='price'><input type='text' name='paystart' id='paystart' maxlength='10' size='6' title='최저 급여' onkeyup='JOBSEARCH.fnNumeric(this);' value='"+paystart+"' "+strDisabled+" style='ime-mode:disabled' />원 이상</li>"

			$('#ulPaycd').html(strOption);
		},

		fnChangePaycd : function(obj){
			var obj = $("#paycd").val();

			if (obj == "" || obj == "I08"){
				$('#paystart').val("");
				$('#paystart').attr("disabled","true");
			}
			else{
				$('#paystart').removeAttr("disabled");
			}
		},

		//복리후생
		fnDisplayWal : function(objthis) {
			var obj = [];
			var strHtml ="";
			var objA = $("dl.welfare dd.content > a");
			var blShow = false;

			$('input[id^=welfare]:checked').each(function(){
				obj.push(this.value);
				blShow = true;
				strHtml += "<span>"+$(this).next().text()+"<button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnNoneDisplayWal('"+this.value+"', '"+$(this).next().text()+"'); return false;\"></button></span>";
			});

			if (blShow) {
				objA.removeClass("blank");
				objA.addClass("value");
				objA.html(strHtml);
			}
			else {
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("복리후생을 선택하세요");
			}
		},

		fnNoneDisplayWal : function(val, nm) {
			var objA = $("dl.welfare dd.content > a");

			$("dl.welfare dd.content > a span").each(function() {
				if ($.trim($(this).text()) == $.trim(nm)) {
					$(this).remove();
				}
			});

			$('input[id^=welfare]').each(function(i){
				if ($.trim($(this).val()) == $.trim(val)) {
					$(this).attr("checked", false);
					$(this).parent().removeClass("on");
				}
			});

			if ($('input[id^=welfare]:checked').length == 0) {
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("복리후생을 선택하세요");
			}
		},

		//우대조건
		fnDisplaySpecial : function(objthis) {
			var obj = [];
			var strHtml ="";
			var objA = $("dl.prefer dd.content > a");
			var blShow = false;

			$('input[id^=special]:checked').each(function(){
				obj.push(this.value);
				blShow = true;
				strHtml += "<span>"+$(this).next().text()+"<button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnNoneDisplaySpecial('"+this.value+"', '"+$(this).next().text()+"'); return false;\"></button></span>";
			});

			if (blShow) {
				objA.removeClass("blank");
				objA.addClass("value");
				objA.html(strHtml);
			}
			else {
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("우대조건을 선택하세요");
			}
		},

		fnNoneDisplaySpecial : function(val, nm) {
			var objA = $("dl.prefer dd.content > a");

			$("dl.prefer dd.content > a span").each(function() {
				if ($.trim($(this).text()) == $.trim(nm)) {
					$(this).remove();
				}
			});

			$('input[id^=special]').each(function(i){
				if ($.trim($(this).val()) == $.trim(val)) {
					$(this).attr("checked", false);
					$(this).parent().removeClass("on");
				}
			});

			if ($('input[id^=special]:checked').length == 0) {
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("우대조건을 선택하세요");
			}
		},

		//기타조건
		fnDisplayEtc : function(objthis) {
			var obj = [];
			var strHtml ="";
			var objA = $("dl.etc dd.content > a");
			var blShow = false;

			$('input[id^=etccd]:checked').each(function(){
				obj.push(this.value);
				blShow = true;
				strHtml += "<span>"+$(this).next().text()+"<button onclick=\"JOBSEARCH.fnShowData(this, event); JOBSEARCH.fnNoneDisplayEtc('"+this.value+"', '"+$(this).next().text()+"'); return false;\"></button></span>";
			});

			if (blShow) {
				objA.removeClass("blank");
				objA.addClass("value");
				objA.html(strHtml);
			}
			else {
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("기타조건을 선택하세요");
			}
		},

		fnNoneDisplayEtc : function(val, nm) {
			var objA = $("dl.etc dd.content > a");

			$("dl.etc dd.content > a span").each(function() {
				if ($.trim($(this).text()) == $.trim(nm)) {
					$(this).remove();
				}
			});

			$('input[id^=etccd]').each(function(i){
				if ($.trim($(this).val()) == $.trim(val)) {
					$(this).attr("checked", false);
					$(this).parent().removeClass("on");
				}
			});

			if ($('input[id^=etccd]:checked').length == 0) {
				objA.removeClass("value");
				objA.addClass("blank");
				objA.html("기타조건을 선택하세요");
			}
		},

		fnNumeric : function(obj) {
			var strRegNumeric = /[^0-9]/;
			if (strRegNumeric.test(obj.value)){
				alert("숫자만 입력하실 수 있습니다.");
				obj.value = "";
				return false;
			}
		},

		fnShowData : function(obj, event) {
			$(obj).parents(".content").next(".data").show();

			// IE 6~9 버전에서 stopPropagation 메소드 오류 수정
			if (/msie [6-9]./.test(navigator.userAgent.toLowerCase())) {
				event.cancelBubble = true;
			} else {
				event.stopPropagation();
			}
			return false;
		},

		//전체 초기화
		fnInit : function() {
			var chkUrl = document.location.href;

			if (chkUrl.toLowerCase().indexOf("/job/area/subwaylist.asp") > -1) {
				JOBSEARCH.fnSubwayMultiNoneDisplay();	//지하철 초기화
			}
			if (chkUrl.toLowerCase().indexOf("/job/area/colledgelist.asp") > -1) {
				JOBSEARCH.fnUniMultiNoneDisplay();	//대학교 초기화
			}
			//단기알바 초기화
			if (chkUrl.toLowerCase().indexOf("/job/period/short.asp") > -1) {
				var shortTab = $("#shortTab").val();
				var shortCategory = $("#shortCategory").val();

				if (shortTab == "TIME") {	//시간별 단기알바일 경우
					if (shortCategory == "1") {
						$("#workstarthhmi").val("0000");
						$("#workendhhmi").val("3050");
						$("#tmpstartbar").val("0");
						$("#tmpendbar").val("1850");
						$("#tmpminvalue").val("0");
						$("#tmpmaxvalue").val("1850");
					} else if (shortCategory == "2") {
						$("#workstarthhmi").val("0700");
						$("#workendhhmi").val("1250");
						$("#tmpstartbar").val("420");
						$("#tmpendbar").val("770");
						$("#tmpminvalue").val("420");
						$("#tmpmaxvalue").val("770");
					} else if (shortCategory == "3") {
						$("#workstarthhmi").val("1300");
						$("#workendhhmi").val("1850");
						$("#tmpstartbar").val("780");
						$("#tmpendbar").val("1130");
						$("#tmpminvalue").val("780");
						$("#tmpmaxvalue").val("1130");
					} else if (shortCategory == "4") {
						$("#workstarthhmi").val("1900");
						$("#workendhhmi").val("2450");
						$("#tmpstartbar").val("1160");
						$("#tmpendbar").val("1490");
						$("#tmpminvalue").val("1160");
						$("#tmpmaxvalue").val("1490");
					} else if (shortCategory == "5") {
						$("#workstarthhmi").val("2400");
						$("#workendhhmi").val("3050");
						$("#tmpstartbar").val("1440");
						$("#tmpendbar").val("1850");
						$("#tmpminvalue").val("1440");
						$("#tmpmaxvalue").val("1850");
					} else if (shortCategory == "6") {
						$("#workstarthhmi").val("1600");
						$("#workendhhmi").val("2250");
						$("#tmpstartbar").val("960");
						$("#tmpendbar").val("1370");
						$("#tmpminvalue").val("960");
						$("#tmpmaxvalue").val("1370");
					} else if (shortCategory == "7") {
						$("#workstarthhmi").val("0900");
						$("#workendhhmi").val("2050");
						$("#tmpstartbar").val("540");
						$("#tmpendbar").val("1250");
						$("#tmpminvalue").val("540");
						$("#tmpmaxvalue").val("1250");
					}
					$(".timeSet-area-rangeBar").slider({
						range: true,
						min: Number($("#tmpminvalue").val()),		//0,
						max: Number($("#tmpmaxvalue").val()),		//1850,
						values: [ Number($("#tmpstartbar").val()), Number($("#tmpendbar").val()) ],	//[ 540, 1020 ],
						step: 10,
						slide: function( event, ui ) {
							slideTime(ui.values[ 0 ], ui.values[ 1 ]);
						}
					});
					slideTime(0, 0);
				} else if (shortTab == "PERIOD") {	//기간별 단기알바일 경우
					if (shortCategory != "5") {
						$("#workstartyyyymmdd").val("");
						$("#workendyyyymmdd").val("");
					}
				}
			}

			$("dl.area dd.content > a").removeClass("value");
			$("dl.area dd.content > a").addClass("blank");
			$("dl.area dd.content > a").html("지역을 선택하세요 (최대 5개 선택가능)");
			JOBSEARCH.areaMulti = "";
			$("#strAreaMulti").val("");

			$("dl.kind dd.content > a").removeClass("value");
			$("dl.kind dd.content > a").addClass("blank");
			$("dl.kind dd.content > a").html("업&middot;직종을 선택하세요 (최대 5개 선택가능)");
			JOBSEARCH.jobkindMulti = "";

			$("div.work div.subSelect").hide();
			$(".date .clearBtn").hide();

			$(".gender .clearBtn").removeClass("on");

			$("#paystart").val("");
			$("#paystart").attr("disabled", "disabled");

			$(".pay .clearBtn").removeClass("on");

			$("dl.welfare dd.content > a").removeClass("value");
			$("dl.welfare dd.content > a").addClass("blank");
			$("dl.welfare dd.content > a").html("복리후생을 선택하세요");

			$("dl.prefer dd.content > a").removeClass("value");
			$("dl.prefer dd.content > a").addClass("blank");
			$("dl.prefer dd.content > a").html("우대조건을 선택하세요");

			$("dl.etc dd.content > a").removeClass("value");
			$("dl.etc dd.content > a").addClass("blank");
			$("dl.etc dd.content > a").html("기타조건을 선택하세요");

			$(":radio").attr("checked",false);
			$(":checkbox").attr("checked",false);

			$(":radio").parent().removeClass("on");
			$(":checkbox").parent().removeClass("on");

			$("#careercd option[value='']").attr("selected",true);
			$("#lastschoolcd option[value='']").attr("selected",true);
			$("#agelimit option[value='']").attr("selected",true);
			$("#searchterm option[value='']").attr("selected",true);
		},

		//개별 초기화
		fnEachInit : function(gbn) {

			switch (gbn){
				case 3 :
					$(".date :input").attr("checked", false);
					$(".date :input").parent().removeClass("on");

					$("div.work div.subSelect").hide();
					$(".date .clearBtn").hide();
					break;
				case 8 :
					$(".gender :input").attr("checked", false);
					$(".gender :input").parent().removeClass("on");

					$(".gender .clearBtn").removeClass("on");
					break;
				case 10 :
					$(".pay :input").attr("checked", false);
					$(".pay :input").parent().removeClass("on");

					$("#paystart").val("");
					$("#paystart").attr("disabled", "disabled");

					$(".pay .clearBtn").removeClass("on");
					break;
			}

		}
	};

	function fnTopsearch(){
		var strAreacd = "";
		var strWorkaddr1 = "";
		var strWorkaddr2 = "";
		var strWeekday = "";
		var obj = [];
		var obj1 = [];
		var i;
		var arrMulti;
		var arrMulti2;
		var tmpurl;
		var blJobkind = true;
		var blArea = true;
		var tmp_areacd = new Array(5);
		var tmp_workaddr1 = "";
		var blWorkaddr1 = true;

		tmpurl = $(location).attr("pathname");
		tmpurl = tmpurl.toLowerCase();

		if (blJobkind) {
			// 직종 2차 분류
			$('#hidJobKindMulti').val(JOBSEARCH.jobkindMulti);
		}

		$('input.typeCheckbox[id^=weekdays]:checked').each(function(){obj1.push(this.value)});
			$.each(obj1,function(index, item){
			strWeekday +=item + ',';
		});

		if (JOBSEARCH.areaMulti != ""){
			if (JOBSEARCH.areaMulti.indexOf(",") > -1){
				arrMulti = JOBSEARCH.areaMulti.split(",");

				for (i=0; i<arrMulti.length; i++){
					arrMulti2 = arrMulti[i].split("||");
					tmp_areacd[i] = arrMulti2[0];

					if (i > 0) {
						tmp_workaddr1 += "||";
					}

					tmp_workaddr1 += $.trim(arrMulti2[1]);
				}

				for (i=1; i<arrMulti.length; i++){
					if (tmp_areacd[i-1] != tmp_areacd[i]){
						blWorkaddr1 = false;
					}
				}

				arrMulti2 = arrMulti[0].split("||");
				strAreacd = arrMulti2[0];
				strWorkaddr2 = arrMulti2[2];

				if (blWorkaddr1){
					strWorkaddr1 = tmp_workaddr1;
				}
				else {
					strWorkaddr1 = arrMulti2[1];
				}
			}
			else if (JOBSEARCH.areaMulti.indexOf("||") > -1) {
				arrMulti2 = JOBSEARCH.areaMulti.split("||");
				strAreacd = arrMulti2[0];
				strWorkaddr1 = arrMulti2[1];
				strWorkaddr2 = arrMulti2[2];
			}
			else {
				JOBSEARCH.areaMulti = "";
			}
		}

		if (tmpurl == "/job/map/main.asp" || tmpurl == "/job/local/mainlocal.asp" || tmpurl == "/job/local/subwaylist.asp" || tmpurl == "/job/local/colledgelist.asp" || tmpurl == "/recruit/local/mainlocal.asp") {
			blArea = false;
		}
		
		if (blArea) {
			if ($("input[name=selGugun]:checked").length > 0 && JOBSEARCH.areaMulti == "") {
				alert("동을 선택해 주세요.");
				return false;
			}

			$("#areacd").val(strAreacd);
			$("#workaddr1").val(strWorkaddr1);
			$("#workaddr2").val(strWorkaddr2);

			$("#strAreaMulti").val(JOBSEARCH.areaMulti);
		}

		strWeekday = strWeekday.substring(0, strWeekday.length-1);
		$('#weekdays').val(strWeekday);

		//날짜별 단기알바 시작일자 없을 시 alert
		if (typeof($("#workstartyyyymmdd").val()) != "undefined") {
			if($.trim($("#workendyyyymmdd").val()) != "" && $.trim($("#workstartyyyymmdd").val()) == ""){	//종료일만 있을 경우 체크
				alert("시작일을 선택하세요");
				return false;
			}
		}
		//날짜별 단기알바 종료일자 없을 시 alert
		if (typeof($("#workendyyyymmdd").val()) != "undefined") {
			if($.trim($("#workstartyyyymmdd").val()) != "" && $.trim($("#workendyyyymmdd").val()) == ""){	//시작일만 있을 경우 체크
				alert("종료일을 선택하세요");
				return false;
			}
		}

		if ($("#workweekcdweek").is(":checked")) {
			if ($(".date .subSelect:eq(0) input[name='workweekcd']:checked").length == 0) {
				alert("근무일수를 선택해 주세요.");
				$("#workweekcdweek").focus();
				return false;
			}
		}

		if ($("#workweekcd7").is(":checked")) {
			if ($(".date .subSelect:eq(1) input[name='weekdays']:checked").length == 0) {
				alert("근무요일을 선택해 주세요.");
				$("#workweekcd7").focus();
				return false;
			}
		}

		$("#page").val(1);
		$("#hidSearchyn").val("Y");

		$('#formSrchPublic').submit();
	}

	// Workperiodcd
	function fnsetWorkperiodcd(obj){
		var strOption = "";
		var strSelected = "";
		$.each(arrSearchOption.WORKPERIODCD, function(index, entry) {
			if (entry["CD"] == obj){ strSelected = "selected"; } else { strSelected = ""; }
			strOption += "<option value='"+ entry["CD"] +"' "+ strSelected +">"+ entry["NM"] +"</option>";
		});

		$('#workperiodcd').html(strOption);
	}


	// Worktime
	function fnsetWorktime(obj){
		var strOption = "";
		var strSelected = "";
		$.each(arrSearchOption.WORKTIME, function(index, entry) {
			if (entry["CD"] == obj){ strSelected = "selected"; } else { strSelected = ""; }
			strOption += "<option value='"+ entry["CD"] +"' "+ strSelected +">"+ entry["NM"] +"</option>";
		});

		$('#worktime').html(strOption);
	}

	// Workweekcd
	function fnsetWorkweekcd(obj){
		var strOption = "";
		var strSelected = "";
		$.each(arrSearchOption.WORKWEEKCD, function(index, entry) {
			if (entry["CD"] == obj){ strSelected = "selected"; } else { strSelected = ""; }
			strOption += "<option value='"+ entry["CD"] +"' "+ strSelected +">"+ entry["NM"] +"</option>";
		});

		$('#workweekcd').html(strOption);

		fnsetWeekDay();
	}

	// Week Day
	function fnsetWeekDay(){
		if ($('#workweekcd option:selected').val() == "D07") {

			$('#idWeekdays').show();
			/* ie6 */
			if ($.browser.msie && $.browser.version.substring(0, 1) === "6"){
				$('.selectLayer').bgiframe();
			}
		} else { $('#idWeekdays').hide(); }
	}

	// weekdays close 체크
	function fnoweekdaysClose(){
		if ($('input.typeCheckbox[id^=weekdays]:checked').length == 0){
			$('#workweekcd').val("");
		}
		$('#idWeekdays').hide();
	}

	function getSubwayLineNM(linecd) {
		var subwayLinenm = "";
		switch (linecd) {
			case "101"	:	subwayLinenm = "1"; break;
			case "102"	:	subwayLinenm = "2"; break;
			case "103"	:	subwayLinenm = "3"; break;
			case "104"	:	subwayLinenm = "4"; break;
			case "105"	:	subwayLinenm = "5"; break;
			case "106"	:	subwayLinenm = "6"; break;
			case "107"	:	subwayLinenm = "7"; break;
			case "108"	:	subwayLinenm = "8"; break;
			case "109"	:	subwayLinenm = "인"; break;
			case "110"	:	subwayLinenm = "분"; break;
			case "111"	:	subwayLinenm = "중"; break;
			case "112"	:	subwayLinenm = "공"; break;
			case "113"	:	subwayLinenm = "9"; break;
			case "115"	:	subwayLinenm = "경"; break;
			case "116"	:	subwayLinenm = "신"; break;
			case "117"	:	subwayLinenm = "수"; break;
			case "118"	:	subwayLinenm = "의"; break;
			case "119"	:	subwayLinenm = "에"; break;
			case "120"	:	subwayLinenm = "인"; break;
			case "121"	:	subwayLinenm = "경"; break;
			case "122"	:	subwayLinenm = "우"; break;
			case "123"	:	subwayLinenm = "서"; break;
			case "201"	:	subwayLinenm = "1"; break;
			case "202"	:	subwayLinenm = "2"; break;
			case "203"	:	subwayLinenm = "3"; break;
			case "204"	:	subwayLinenm = "4"; break;
			case "205"	:	subwayLinenm = "부"; break;
			case "206"	:	subwayLinenm = "동"; break;
			case "301"	:	subwayLinenm = "1"; break;
			case "302"	:	subwayLinenm = "2"; break;
			case "303"	:	subwayLinenm = "3"; break;
			case "401"	:	subwayLinenm = "1"; break;
			case "501"	:	subwayLinenm = "1"; break;
			default 	:	subwayLinenm = ""; break;
		}
		return subwayLinenm;
	}