$(document).ready(function() {
	// 정렬 영역
	window.WNSearchJs = {
		fnListSort        : function(sortType, sortValue) {
			
			switch (sortType) {
				case "sortOrder"  : $("#hidSort").val(sortValue);
									break;
				case "sortCnt"    : $("#hidSortCnt").val(sortValue);
									break;
				case "sortView"   : $("#hidListView").val(sortValue);
									break;
			}
			$("#page").val("1");
			$("#formSrchPublic").submit();
		},

		fnAjaxListSort        : function(sortType, sortValue) {
			switch (sortType) {
				case "sortOrder"  : $("#hidSort").val(sortValue);
									break;
				case "sortCnt"    : $("#hidSortCnt").val(sortValue);
									break;
				case "sortView"   : $("#hidListView").val(sortValue);
									break;
			}
			getNormalCoordinateList(1);
		},

		fnAjaxPaging        : function(page) {
			getNormalCoordinateList(page);
		},

		fnAjaxIsBar         : function(isBar) {
			var strMsg;
			if($("#hidSortFilter").val() == "N") {
				strMsg= "채용정보 리스트에서 Bar직종 공고를 포함 하시겠습니까?";				
				if (confirm(strMsg)) {
					$("#hidSortFilter").val("Y");
					SetCookie('hidSortFilter', 'Y', 7);
					getNormalCoordinateList(1);
				} else {return false;}
			} else {
				strMsg= "채용정보 리스트에서 Bar직종 공고를 제외 하시겠습니까?";				
				if (confirm(strMsg)) {
					$("#hidSortFilter").val("N");
					SetCookie('hidSortFilter', 'N', 7);
					getNormalCoordinateList(1);
				} else {return false;}
			}
		}, 

		fnIsBar         : function(isBar) {
			var strMsg;
			if($("#hidSortFilter").val() == "N") {
				strMsg = "채용정보 리스트에 Bar직종 공고를 포함하시겠습니까?";
				if (confirm(strMsg)) {
					$("#page").val("1");
					$("#hidSortFilter").val("Y");
					SetCookie('hidSortFilter', 'Y', 7);
					$("#formSrchPublic").submit();
				} else {return false;}
			} else {
				strMsg= "채용정보 리스트에서 Bar직종 공고를 제외 하시겠습니까?";	
				if (confirm(strMsg)) {
					$("#page").val("1");
					$("#hidSortFilter").val("N");
					SetCookie('hidSortFilter', 'N', 7);
					$("#formSrchPublic").submit();
				} else {return false;}
			}
		} 

		
		
	};

	// 로그인 체크
	function loginChkConfirm(usertype) {
		if (usertype != "P") {
			if (usertype == "") {
				if(confirm("개인회원으로 로그인 후 이용 가능한 서비스입니다.\n지금 로그인 하시겠습니까?")) {
					document.location.href = "/auth/LoginPerson.asp?gourl=<%=Server.URLEncode(GLB_RETURNURL)%>";
				} else {
					return false;
				}
			} else {
				document.location.href = "/auth/LoginPerson.asp?gourl=<%=Server.URLEncode(GLB_RETURNURL)%>";
			}
		} else {
			return true;
		}
	}


	
});