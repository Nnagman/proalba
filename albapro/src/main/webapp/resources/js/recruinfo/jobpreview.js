	var PreobjType = "";
	var Preobjadid = "";

	var JobPreview = {
		PREVIEW : function(objType, adid, productcd){
			if(PreobjType != "" && PreobjType + Preobjadid != objType + adid){
				PreviewiFrame.Change(PreobjType, Preobjadid);
			}
			PreviewiFrame.LayerView(objType, adid, productcd);
			PreviewiFrame.ObjValChk(objType, adid);
		},

		PREVIEWTYPE2 : function(objType, adid, productcd){
			if(PreobjType != "" && PreobjType + Preobjadid != objType + adid){
				;
			}
			PreviewiFrame.LayerViewType2(objType, adid, productcd);
			PreviewiFrame.ObjValChk(objType, adid);
		}
	};

	/* Iframe control */
	var PreviewiFrame = {
		ObjValChk : function (objType, adid){
			PreobjType = objType;
			Preobjadid = adid;
		},
		LayerView : function (objType, adid, productcd) {
			/*if(PreviewiFrame.ObjectChk(objType+adid)){
				$("#"+objType+"Td"+adid).removeClass("viewchk");
				$("#"+objType+"Td"+adid).parent().parent().parent().find("tr").removeClass("on");

				if(PreviewiFrame._GetElementId(objType+adid).style.display == ""){
					PreviewiFrame._GetElementId(objType+adid).style.display = "none";
				}
				else{
					PreviewiFrame._GetElementId(objType+adid).style.display = "";
					$("#"+objType+"Td"+adid).addClass("viewchk");
					$("#"+objType+"Td"+adid).parents("tr").addClass("on");

					PreviewiFrame.IframeSrc(objType+adid, adid, productcd);
				}
			}
			else{
				alert("스크립트 오류가 있습니다. 새로고침 후 다시 시도해 주세요.");
			}*/

			if(PreviewiFrame.ObjectChk(objType+adid)){
				if(PreviewiFrame._GetElementId(objType+adid).style.display == ""){
					PreviewiFrame._GetElementId(objType+adid).style.display = "none";
					$("#"+objType+"Td"+adid).removeClass("viewchk");
					$("#"+objType+"Td"+adid).parents().removeClass("on");
				} 
				else{
					PreviewiFrame._GetElementId(objType+adid).style.display = "";
					PreviewiFrame.IframeSrc(objType+adid, adid, productcd);
					$("#"+objType+"Td"+adid).addClass("viewchk");
					$(".goodsList tr").removeClass("on");
					$("#"+objType+"Td"+adid).parents("tr").addClass("on");
				}
			} 
			else{
				alert("스크립트 오류가 있습니다. 새로고침 후 다시 시도해 주세요.");
			}
		},
		LayerViewType2 : function (objType, adid, productcd) {
			if(PreviewiFrame.ObjectChk(objType+adid)){
				$("#"+objType+"Td"+adid).removeClass("viewchk");

				if(PreviewiFrame._GetElementId(objType+adid).style.display == ""){
					PreviewiFrame._GetElementId(objType+adid).style.display = "none";
				}
				else{
					PreviewiFrame._GetElementId(objType+adid).style.display = "";
					$("#"+objType+"Td"+adid).addClass("viewchk");
					$("#"+objType+"Td"+adid).parents("tr").addClass("on");

					PreviewiFrame.IframeSrc(objType+adid, adid, productcd);
				}
			}
			else{
				alert("스크립트 오류가 있습니다. 새로고침 후 다시 시도해 주세요.");
			}
		},
		IframeSrc : function(objType, adid, productcd){
			if(PreviewiFrame.ObjectChk(objType)){
				PreviewiFrame._GetElementId(objType).getElementsByTagName("IFRAME")[0].src = "/job/PreView.asp?adid=" + adid +"&productcd="+productcd;
			}
		},
		ObjectChk : function(objType){
			try{
				var target = PreviewiFrame._GetElementId(objType);
				if(target == null){
					return false;
				}
				if(typeof(target) == "object"){
					return true;
				}
				else{
					return false;
				}
			}
			catch(e){
				return false;
			}
		},
		Change : function(objType, adid){
			PreviewiFrame._GetElementId(objType+adid).style.display = "none";
			$("#"+objType+"Td"+adid).removeClass("viewchk");
		},
		Exit : function(){
			PreviewiFrame.Change(PreobjType,Preobjadid);
		},
		_GetElementId : function(val){
		return document.getElementById(val);
		}
	};

	/* 공고 요약보기 Box 상품 2011-01-26 yjkong */
	var curViewRcType = "";
	var curViewJidx = "";

	function viewSummary(rcType, adid, e) {
		var viewchk = "N";
		var nowViewRcType = curViewRcType;
		var nowViewJidx = curViewJidx;

		if (curViewRcType != "" && curViewJidx != "") {
			closeSummary(curViewRcType,curViewJidx);
		}

		if ($("#SummaryView_"+rcType +"_" + adid) !=  null) {
			if ("#SummaryView_"+eval(rcType)+"_" + eval(adid) == "#SummaryView_"+eval(nowViewRcType)+"_" + eval(nowViewJidx)){
				$("#SummaryView_"+rcType +"_" + adid).removeClass("viewchk");
				viewchk = "Y";
			}
			else{
				$("#SummaryView_"+rcType +"_" + adid).addClass("viewchk");
			}
		}
		else { // 예외처리
			viewchk = "Y";
		}

		if (viewchk == "N") {
			curViewRcType = rcType;
			curViewJidx = adid;

			var mainWidth = $("#Global, #GlobalGnbBiz").width();
			var mainLeft = $("#Global, #GlobalGnbBiz").offset().left;
			var eventLeft = $("#SummaryView_"+rcType +"_" + adid).offset().left;
			var eventTop =$("#SummaryView_"+rcType +"_" + adid).offset().top;
			var btnGap = 15; /*$("SummaryView" + adid).offsetTop;*/
			var layerWidth = 585; /* 요약보기레이어 가로사이즈 */
			var layerLeft = eventLeft + 10; // - mainLeft;

			$.ajax({
				type: "GET",
				url: "/job/PreviewBox.asp?rcType="+rcType+"&adid="+adid+"&date="+Date(),
				data: "",
				success: function (data) {
					$("#SummaryContainer").html(data);
					if ((layerLeft + layerWidth) < mainWidth) {
						$("#SummaryContainer").css("left", layerLeft + "px");
						$("#SummaryContainer").css("top", (eventTop + btnGap) + "px");
					} else if ((layerLeft - layerWidth) < 0) {
						$("#SummaryContainer").css("left", parseInt((mainWidth - layerWidth) / 2) + "px");
						$("#SummaryContainer").css("top", (eventTop + btnGap) + "px");
					} else if ((layerLeft + layerWidth) > mainWidth) {
						$("#SummaryContainer").css("left", (layerLeft - layerWidth) + "px");
						$("#SummaryContainer").css("top", (eventTop + btnGap) + "px");
					}
					$("#SummaryContainer").show();
				},
				error: function() {alert("ERROR");}
			});
		}
	}
	
	//박스상품 요약보기 예외처리 (슈퍼POWER)
	function viewSummary2(rcType, adid, e, prcd, position) {
		var viewchk = "N";
		var nowViewRcType = curViewRcType;
		var nowViewJidx = curViewJidx;

		if (curViewRcType != "" && curViewJidx != "") {
			closeSummary(curViewRcType,curViewJidx);
		}

		if ($("#SummaryView_"+rcType +"_" + adid) !=  null) {
			if ("#SummaryView_"+eval(rcType)+"_" + eval(adid) == "#SummaryView_"+eval(nowViewRcType)+"_" + eval(nowViewJidx)){
				$("#SummaryView_"+rcType +"_" + adid).removeClass("viewchk");
				viewchk = "Y";
			}
			else{
				$("#SummaryView_"+rcType +"_" + adid).addClass("viewchk");
			}
		}
		else { // 예외처리
			viewchk = "Y";
		}

		if (viewchk == "N") {
			curViewRcType = rcType;
			curViewJidx = adid;

			var mainWidth = $("#Global, #GlobalGnbBiz").width();
			var mainLeft = $("#Global, #GlobalGnbBiz").offset().left;
			var eventLeft = $("#SummaryView_"+rcType +"_" + adid).offset().left;
			var eventTop =$("#SummaryView_"+rcType +"_" + adid).offset().top;
			var layerWidth = 585; /* 요약보기레이어 가로사이즈 */
			if (prcd == "66") {
				var btnGap = -147; /*$("SummaryView" + adid).offsetTop;*/
				var layerLeft = eventLeft + 192; // - mainLeft;
			} else {
				var btnGap = 15; /*$("SummaryView" + adid).offsetTop;*/
				var layerLeft = eventLeft + 10; // - mainLeft;
			}

			$.ajax({
				type: "GET",
				url: "/job/PreviewBox.asp?rcType="+rcType+"&adid="+adid+"&date="+Date(),
				data: "",
				success: function (data) {
					$("#SummaryContainer").html(data);
					//alert(position);
					if (position < 2) {
						$("#SummaryContainer").css("left", layerLeft + "px");
						$("#SummaryContainer").css("top", (eventTop + btnGap) + "px");
					} else if (position == 2) {
						$("#SummaryContainer").css("left", parseInt((mainWidth - layerWidth) / 2) + "px");
						$("#SummaryContainer").css("top", (eventTop + btnGap) + "px");
					} else {
						if (prcd == "66") {
							$("#SummaryContainer").css("left", (layerLeft - layerWidth) -170 + "px");
						} else {
							$("#SummaryContainer").css("left", (layerLeft - layerWidth) + "px");
						}
						$("#SummaryContainer").css("top", (eventTop + btnGap) + "px");
					}
					$("#SummaryContainer").show();
				},
				error: function() {alert("ERROR");}
			});
		}
	}

	function closeSummary(rcType, adid) {
		curViewRcType = "";
		curViewJidx = "";
		if ($("#SummaryView_"+rcType+"_" + adid) != null) $("#SummaryView_"+rcType+"_" + adid).removeClass("viewchk");
		$("#SummaryContainer").hide();
	}

	//박스상품 로고강조 효과 자동화 작업 20141013
	var logo_ani;
	function logo_blink(img_obj) {
		logo_ani = setInterval(function() {
			$(img_obj).fadeOut(200).fadeIn(400);
			/* 추후 로고옵션 개수 추가시 진행예정 - 로고가 가운데 정렬이 아닌 경우 css도 수정 필요
			$(img_obj).animate({
				width: "0"
			}, 200, "linear", function() {
				$(this).animate({
					width: "75px"
				}, 200);
			});
			*/
		}, 1500);
	}