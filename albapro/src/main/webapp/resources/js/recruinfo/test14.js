/**
 * Paging
 *
 * @param intCurrentPage    현재페이지
 * @param intTotalRowNum    총 개수
 * @param intRowCntPerPage  한페이지당 보여줄 리스트 개수
 * @param intPageBlockSize  페이지블럭
 * @param strSchOption      기타 검색조건 (aaa=aaa&bbb=bbb...)
 */
function getPaging(intCurrentPage, intTotalRowNum, intRowCntPerPage, intPageBlockSize, strSchOption) {
    var strReturn           = "";
    var strReplace          = "";
    var intVirtualStartPage = 0;
    var intVirtualEndPage   = 0;
    var intVirtualPrevPage  = 0;
    var intVirtualNextPage  = 0;
    var intFinalPage        = parseInt(intTotalRowNum/intRowCntPerPage);
    var intRest             = intTotalRowNum%intRowCntPerPage;

    if (intRest==0) { }
    else { intFinalPage = intFinalPage+1; }

    if (intCurrentPage>intPageBlockSize) {
        intVirtualStartPage = parseInt(((intCurrentPage-1)/intPageBlockSize))*intPageBlockSize+1;
        intVirtualPrevPage  = intVirtualStartPage-1;
    }
    else { intVirtualStartPage = 1; }

    intVirtualEndPage = intVirtualStartPage + intPageBlockSize - 1;
    if (intVirtualEndPage>=intFinalPage) { intVirtualEndPage = intFinalPage; }
    else { intVirtualNextPage = intVirtualEndPage+1; }

    strReturn = "<div class=\"paging\">\n";

    if (intVirtualPrevPage>0) {
        strReturn += "<a href=\"?page=" + intVirtualPrevPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"prev\">&lt;</a>";
    }

/*
    if (parseInt(intCurrentPage)>1) {
        strReturn += "<A HREF='?page="+(parseInt(intCurrentPage)-1)+"&"+strSchOption+"' class=\"prev\">이전</A>\n";
    }
*/

    strReturn += "<span class=\"page\">";

    for (var i=intVirtualStartPage; i<intVirtualEndPage+1; i++) {
        strReturn += (i==intCurrentPage) ? "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"page now\">"+i+"</a>" : "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption+"' class=\"page\">"+i+"</a>";
//			if (i>intVirtualStartPage) strReturn += " <span style='color:#dddddd; font:11px dotum;'>|</span> ";
//			strReturn += "<A HREF='?page="+i+"&"+strSchOption+"'>"+strReplace+"</A>\n";
    }

    strReturn += "</span>";

/*
    if (parseInt(intCurrentPage) < intFinalPage) {
        strReturn += "<A HREF='?page=" + (parseInt(intCurrentPage)+1) + "&"+strSchOption+"' class=\"next\">다음</A>\n";
    }
*/

    if (intVirtualNextPage>0) {
        strReturn += "<a href=\"?page=" + intVirtualNextPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"next\">&gt;</a>\n";
    }

    strReturn += "<span class=\"location\">[<strong>"+intCurrentPage+"</strong>/"+intFinalPage+"]</span>";

    strReturn += "</div>";
    document.write(strReturn);
}


/**
* Paging
*
* @param intCurrentPage    현재페이지
* @param intTotalRowNum    총 개수
* @param intRowCntPerPage  한페이지당 보여줄 리스트 개수
* @param intPageBlockSize  페이지블럭
* @param strSchOption      기타 검색조건 (aaa=aaa&bbb=bbb...)
*/
function getPagingAjax(intCurrentPage, intTotalRowNum, intRowCntPerPage, intPageBlockSize, strSchOption) {
    //alert('getPaging');
    var strReturn           = "";
    var strReplace          = "";
    var intVirtualStartPage = 0;
    var intVirtualEndPage   = 0;
    var intVirtualPrevPage  = 0;
    var intVirtualNextPage  = 0;
    var intFinalPage        = parseInt(intTotalRowNum/intRowCntPerPage);
    var intRest             = intTotalRowNum%intRowCntPerPage;

    if (intRest==0) { }
    else { intFinalPage = intFinalPage+1; }

    if (intCurrentPage>intPageBlockSize) {
        intVirtualStartPage = parseInt(((intCurrentPage-1)/intPageBlockSize))*intPageBlockSize+1;
        intVirtualPrevPage  = intVirtualStartPage-1;
    }
    else { intVirtualStartPage = 1; }

    intVirtualEndPage = intVirtualStartPage + intPageBlockSize - 1;
    if (intVirtualEndPage>=intFinalPage) { intVirtualEndPage = intFinalPage; }
    else { intVirtualNextPage = intVirtualEndPage+1; }

    strReturn = "<div class=\"paging\">\n";

    if (intVirtualPrevPage>0) {
        strReturn += "<a href=\"?page=" + intVirtualPrevPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"prev\">&lt;</a>";
    }

/*
    if (parseInt(intCurrentPage)>1) {
        strReturn += "<A HREF='?page="+(parseInt(intCurrentPage)-1)+"&"+strSchOption+"' class=\"prev\">이전</A>\n";
    }
*/

    strReturn += "<span class=\"page\">";

    for (var i=intVirtualStartPage; i<intVirtualEndPage+1; i++) {
        strReturn += (i==intCurrentPage) ? "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"page now\">"+i+"</a>" : "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption+"' class=\"page\">"+i+"</a>";
//			if (i>intVirtualStartPage) strReturn += " <span style='color:#dddddd; font:11px dotum;'>|</span> ";
//			strReturn += "<A HREF='?page="+i+"&"+strSchOption+"'>"+strReplace+"</A>\n";
    }

    strReturn += "</span>";

/*
    if (parseInt(intCurrentPage) < intFinalPage) {
        strReturn += "<A HREF='?page=" + (parseInt(intCurrentPage)+1) + "&"+strSchOption+"' class=\"next\">다음</A>\n";
    }
*/

    if (intVirtualNextPage>0) {
        strReturn += "<a href=\"?page=" + intVirtualNextPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"next\">&gt;</a>\n";
    }

    strReturn += "<span class=\"location\">[<strong>"+intCurrentPage+"</strong>/"+intFinalPage+"]</span>";

    strReturn += "</div>";
    return strReturn;
}


/**
* Paging
*
* @param intCurrentPage    현재페이지
* @param intTotalRowNum    총 개수
* @param intRowCntPerPage  한페이지당 보여줄 리스트 개수
* @param intPageBlockSize  페이지블럭
* @param strSchOption      기타 검색조건 (aaa=aaa&bbb=bbb...)
*/
function getPagingMapAjax(intCurrentPage, intTotalRowNum, intRowCntPerPage, intPageBlockSize, strSchOption, cntOption) {
    var strReturn           = "";
    var strReplace          = "";
    var intVirtualStartPage = 0;
    var intVirtualEndPage   = 0;
    var intVirtualPrevPage  = 0;
    var intVirtualNextPage  = 0;
    var intFinalPage        = parseInt(intTotalRowNum/intRowCntPerPage);
    var intRest             = intTotalRowNum%intRowCntPerPage;
    var currentPageRowCnt
    if (intRest==0) { }
    else { intFinalPage = intFinalPage+1; }

    if (intCurrentPage>intPageBlockSize) {
        intVirtualStartPage = parseInt(((intCurrentPage-1)/intPageBlockSize))*intPageBlockSize+1;
        intVirtualPrevPage  = intVirtualStartPage-1;
    }
    else { intVirtualStartPage = 1; }

    intVirtualEndPage = intVirtualStartPage + intPageBlockSize - 1;
    if (intVirtualEndPage>=intFinalPage) { intVirtualEndPage = intFinalPage; }
    else { intVirtualNextPage = intVirtualEndPage+1; }

    strReturn = "<div class=\"pagenation\">\n";

    strReturn += "<span class=\"page\">";
    for (var i=intVirtualStartPage; i<intVirtualEndPage+1; i++) {
        strReturn += (i==intCurrentPage) ? "<a href='#' onclick='getNormalCoordinateList("+i+");return false;' class=\"on\">"+i+"</a>" : "<a href='#' onclick='getNormalCoordinateList("+i+");return false;' >"+i+"</a>";
    }
    strReturn += "</span>";

    strReturn += "<span class=\"total\" onclick=\"$(this).toggleClass('on');\"><span class=\"totalBtn\">";
    strReturn += "<span class=\"state\">"+intFinalPage+"개중 "+intVirtualStartPage+"-"+intVirtualEndPage+"</span><a href='' onclick='getNormalCoordinateList(1);return false;' class=\"first\">맨 처음으로</a><a href='' onclick='getNormalCoordinateList("+intFinalPage+");return false;' class=\"last\">맨 끝으로</a>";
    strReturn += "</span></span>";

    if (intVirtualPrevPage>0 || intVirtualNextPage>0) {
        strReturn += "<span class=\"pageBtn\">";

            if (intVirtualPrevPage>0) {
                strReturn += "<a href='' onclick='getNormalCoordinateList("+intVirtualPrevPage+");return false;' class=\"prev\">&lt;</a>";
            }

            if (intVirtualNextPage>0) {
                strReturn += "<a href='' onclick='getNormalCoordinateList("+intVirtualNextPage+");return false;' class=\"next\">&gt;</a>\n";
            }

        strReturn += "</span>";
    }

    strReturn += "</div>";
    return strReturn;
}

/**
* Paging
*
* @param intCurrentPage    현재페이지
* @param intTotalRowNum    총 개수
* @param intRowCntPerPage  한페이지당 보여줄 리스트 개수
* @param intPageBlockSize  페이지블럭
* @param strSchOption      기타 검색조건 (aaa=aaa&bbb=bbb...)
*/
function getPagingMapAjax2(intCurrentPage, intTotalRowNum, intRowCntPerPage, intPageBlockSize, strSchOption, cntOption) {
    var strReturn           = "";
    var strReplace          = "";
    var intVirtualStartPage = 0;
    var intVirtualEndPage   = 0;
    var intVirtualPrevPage  = 0;
    var intVirtualNextPage  = 0;
    var intFinalPage        = parseInt(intTotalRowNum/intRowCntPerPage);
    var intRest             = intTotalRowNum%intRowCntPerPage;

    if (intRest==0) { }
    else { intFinalPage = intFinalPage+1; }

    if (intCurrentPage>intPageBlockSize) {
        intVirtualStartPage = parseInt(((intCurrentPage-1)/intPageBlockSize))*intPageBlockSize+1;
        intVirtualPrevPage  = intVirtualStartPage-1;
    }
    else { intVirtualStartPage = 1; }

    intVirtualEndPage = intVirtualStartPage + intPageBlockSize - 1;
    if (intVirtualEndPage>=intFinalPage) { intVirtualEndPage = intFinalPage; }
    else { intVirtualNextPage = intVirtualEndPage+1; }

    strReturn = "<div class=\"paging\">\n";

    if (intVirtualPrevPage>0) {
        strReturn += "<a href='#' onclick='getNormalCoordinateList("+ intVirtualPrevPage +");return false;' class=\"prev\">&lt;</a>";
    }

    strReturn += "<span class=\"page\">";

    for (var i=intVirtualStartPage; i<intVirtualEndPage+1; i++) {
        strReturn += (i==intCurrentPage) ? "<a href='#' onclick='getNormalCoordinateList("+i+");return false;' class=\"page now\">"+i+"</a>" : "<a href='#' onclick='getNormalCoordinateList("+i+");return false;' class=\"page\">"+i+"</a>";
    }

    strReturn += "</span>";


    if (intVirtualNextPage>0) {
        strReturn += "<a href='#' onclick='getNormalCoordinateList("+ intVirtualNextPage +");return false;' class=\"next\">&gt;</a>\n";
    }

    strReturn += "<span class=\"location\">[<strong>"+intCurrentPage+"</strong>/"+intFinalPage+"]</span>";

    strReturn += "</div>";
    return strReturn;
}

/**
* Paging (채용정보 개편하면서 추가 2015-04-20)
*
* @param intCurrentPage    현재페이지
* @param intTotalRowNum    총 개수
* @param intRowCntPerPage  한페이지당 보여줄 리스트 개수
* @param intPageBlockSize  페이지블럭
* @param strSchOption      기타 검색조건 (aaa=aaa&bbb=bbb...)
*/
function getPagingJob(intCurrentPage, intTotalRowNum, intRowCntPerPage, intPageBlockSize, strSchOption) {
    var strReturn           = "";
    var strReplace          = "";
    var intVirtualStartPage = 0;
    var intVirtualEndPage   = 0;
    var intVirtualPrevPage  = 0;
    var intVirtualNextPage  = 0;
    var intFinalPage        = parseInt(intTotalRowNum/intRowCntPerPage);
    var intRest             = intTotalRowNum%intRowCntPerPage;
    var strPagingCss		= "";
    var intRandom			= Math.floor(Math.random()*4)+1;
    
    if (intTotalRowNum == 0) return false; //내용이 없을 경우 페이징 비노출

    if (intRest==0) { }
    else { intFinalPage = intFinalPage+1; }

    if (intCurrentPage>intPageBlockSize) {
        intVirtualStartPage = parseInt(((intCurrentPage-1)/intPageBlockSize))*intPageBlockSize+1;
        intVirtualPrevPage  = intVirtualStartPage-1;
    }
    else { intVirtualStartPage = 1; }

    intVirtualEndPage = intVirtualStartPage + intPageBlockSize - 1;
    if (intVirtualEndPage>=intFinalPage) { intVirtualEndPage = intFinalPage; }
    else { intVirtualNextPage = intVirtualEndPage+1; }

    if (intFinalPage < 200) {
        strPagingCss = "twoBtn";
    }
    else {
        strPagingCss = "oneBtn";
    }

    if (intCurrentPage != intFinalPage) { //마지막페이지의경우 다음페이지 독려 이미지 비노출 처리.
        strReturn += "<div class='pagenation img img" + intRandom +"'>\n";
    } else {
        strReturn += "<div class='pagenation'>\n"; 
    }

    strReturn += "<span class=\"page\">";
    for (var i=intVirtualStartPage; i<intVirtualEndPage+1; i++) {
        strReturn += (i==intCurrentPage) ? "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"on\">"+i+"</a>" : "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption+"'>"+i+"</a>";
    }
    strReturn += "</span>";

    strReturn += "<span class=\"total\" onclick=\"$(this).toggleClass('"+strPagingCss+"');\"><span class=\"totalBtn\">";
    strReturn += "<span class=\"state\">"+intFinalPage+"개중 "+intVirtualStartPage+"-"+intVirtualEndPage+"</span><a href='?page=1&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"first\">맨 처음으로</a>";
    
    if (intFinalPage < 200) {
        strReturn += "<a href='?page="+intFinalPage+"&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"last\">맨 끝으로</a>";
    }

    strReturn += "</span></span>";

    if (intVirtualPrevPage>0 || intVirtualNextPage>0) {
        strReturn += "<span class=\"pageBtn\">";

            if (intVirtualPrevPage>0) {
                strReturn += "<a href=\"?page=" + intVirtualPrevPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"prev\">&lt;</a>";
            }

            if (intVirtualNextPage>0) {
                strReturn += "<a href=\"?page=" + intVirtualNextPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"next\">&gt;</a>\n";
            }

        strReturn += "</span>";
    }

    strReturn += "</div>";
    document.write(strReturn);
}


/**
임시 페이징 소스 확인 필요
*/
function getPagingJob2(intCurrentPage, intTotalRowNum, intRowCntPerPage, intPageBlockSize, strSchOption) {
    var strReturn           = "";
    var strReplace          = "";
    var intVirtualStartPage = 0;
    var intVirtualEndPage   = 0;
    var intVirtualPrevPage  = 0;
    var intVirtualNextPage  = 0;
    var intFinalPage        = parseInt(intTotalRowNum/intRowCntPerPage);
    var intRest             = intTotalRowNum%intRowCntPerPage;
    var strPagingCss		= "";
    
    if (intTotalRowNum == 0) return false; //내용이 없을 경우 페이징 비노출

    if (intRest==0) { }
    else { intFinalPage = intFinalPage+1; }

    if (intCurrentPage>intPageBlockSize) {
        intVirtualStartPage = parseInt(((intCurrentPage-1)/intPageBlockSize))*intPageBlockSize+1;
        intVirtualPrevPage  = intVirtualStartPage-1;
    }
    else { intVirtualStartPage = 1; }

    intVirtualEndPage = intVirtualStartPage + intPageBlockSize - 1;
    if (intVirtualEndPage>=intFinalPage) { intVirtualEndPage = intFinalPage; }
    else { intVirtualNextPage = intVirtualEndPage+1; }

    if (intFinalPage < 200) {
        strPagingCss = "twoBtn";
    }
    else {
        strPagingCss = "oneBtn";
    }

    strReturn += "<div class='pagenation'>\n"; 

    strReturn += "<span class=\"page\">";
    for (var i=intVirtualStartPage; i<intVirtualEndPage+1; i++) {
        strReturn += (i==intCurrentPage) ? "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"on\">"+i+"</a>" : "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption+"'>"+i+"</a>";
    }
    strReturn += "</span>";

    strReturn += "<span class=\"total\" onclick=\"$(this).toggleClass('"+strPagingCss+"');\"><span class=\"totalBtn\">";
    strReturn += "<span class=\"state\">"+intFinalPage+"개중 "+intVirtualStartPage+"-"+intVirtualEndPage+"</span><a href='?page=1&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"first\">맨 처음으로</a>";
    
    if (intFinalPage < 200) {
        strReturn += "<a href='?page="+intFinalPage+"&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"last\">맨 끝으로</a>";
    }

    strReturn += "</span></span>";

    if (intVirtualPrevPage>0 || intVirtualNextPage>0) {
        strReturn += "<span class=\"pageBtn\">";

            if (intVirtualPrevPage>0) {
                strReturn += "<a href=\"?page=" + intVirtualPrevPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"prev\">&lt;</a>";
            }

            if (intVirtualNextPage>0) {
                strReturn += "<a href=\"?page=" + intVirtualNextPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"next\">&gt;</a>\n";
            }

        strReturn += "</span>";
    }

    strReturn += "</div>";
    document.write(strReturn);
}

//공고수정 > 공고일괄수정리스트 (ajax용)
function getPagingJobMultiUpdAjax(intCurrentPage, intTotalRowNum, intRowCntPerPage, intPageBlockSize, strSchOption) {
var strReturn = "";
var strReplace = "";
var intVirtualStartPage = 0;
var intVirtualEndPage = 0;
var intVirtualPrevPage = 0;
var intVirtualNextPage = 0;
var intFinalPage = parseInt(intTotalRowNum/intRowCntPerPage, 10);
var intRest = intTotalRowNum%intRowCntPerPage;
var strPagingCss = "";

if (intTotalRowNum == 0) return false; //내용이 없을 경우 페이징 비노출

if (intRest==0) { }
else { intFinalPage = intFinalPage+1; }

if (intCurrentPage>intPageBlockSize) {
    intVirtualStartPage = parseInt(((intCurrentPage-1)/intPageBlockSize), 10)*intPageBlockSize+1;
    intVirtualPrevPage  = intVirtualStartPage-1;
}
else { intVirtualStartPage = 1; }

intVirtualEndPage = intVirtualStartPage + intPageBlockSize - 1;
if (intVirtualEndPage>=intFinalPage) { intVirtualEndPage = intFinalPage; }
else { intVirtualNextPage = intVirtualEndPage+1; }

if (intFinalPage < 200) {
    strPagingCss = "twoBtn";
} else {
    strPagingCss = "oneBtn";
}

strReturn += "<div class='pagenation'>\n"; 

strReturn += "<span class=\"page\">";
for (var i=intVirtualStartPage; i<intVirtualEndPage+1; i++) {
    strReturn += (i==intCurrentPage) ? "<a href='#' class=\"on\" onclick='getJobMultiUpdList("+i+", \"page\");return false;'>"+i+"</a>" : "<a href='#' onclick='getJobMultiUpdList("+i+", \"page\");return false;'>"+i+"</a>";
}
strReturn += "</span>";

strReturn += "<span class=\"total\" onclick=\"$(this).toggleClass('"+strPagingCss+"');\"><span class=\"totalBtn\">";
strReturn += "<span class=\"state\">"+intFinalPage+"개중 "+intVirtualStartPage+"-"+intVirtualEndPage+"</span><a href='#' class=\"first\" onclick='getJobMultiUpdList(1, \"page\");return false;'>맨 처음으로</a>";

if (intFinalPage < 200) {
    strReturn += "<a href='#' class=\"last\" onclick='getJobMultiUpdList("+intFinalPage+", \"page\");return false;'>맨 끝으로</a>";
}

strReturn += "</span></span>";

if (intVirtualPrevPage>0 || intVirtualNextPage>0) {
    strReturn += "<span class=\"pageBtn\">";

    if (intVirtualPrevPage>0) {
        strReturn += "<a href='#' class=\"prev\" onclick='getJobMultiUpdList("+intVirtualPrevPage+", \"page\");return false;'>&lt;</a>";
    }

    if (intVirtualNextPage>0) {
        strReturn += "<a href='#' class=\"next\" onclick='getJobMultiUpdList("+intVirtualNextPage+", \"page\");return false;'>&gt;</a>\n";
    }

    strReturn += "</span>";
}

strReturn += "</div>";
return strReturn;
}


/**
* Paging
*
* @param intCurrentPage    현재페이지
* @param intTotalRowNum    총 개수
* @param intRowCntPerPage  한페이지당 보여줄 리스트 개수
* @param intPageBlockSize  페이지블럭
* @param strSchOption      기타 검색조건 (aaa=aaa&bbb=bbb...)
*/
function getPagingGlobalAlba(intCurrentPage, intTotalRowNum, intRowCntPerPage, intPageBlockSize, strSchOption) {
    var strReturn           = "";
    var strReplace          = "";
    var intVirtualStartPage = 0;
    var intVirtualEndPage   = 0;
    var intVirtualPrevPage  = 0;
    var intVirtualNextPage  = 0;
    var intFinalPage        = parseInt(intTotalRowNum/intRowCntPerPage);
    var intRest             = intTotalRowNum%intRowCntPerPage;

    if (intRest==0) { }
    else { intFinalPage = intFinalPage+1; }

    if (intCurrentPage>intPageBlockSize) {
        intVirtualStartPage = parseInt(((intCurrentPage-1)/intPageBlockSize))*intPageBlockSize+1;
        intVirtualPrevPage  = intVirtualStartPage-1;
    }
    else { intVirtualStartPage = 1; }

    intVirtualEndPage = intVirtualStartPage + intPageBlockSize - 1;
    if (intVirtualEndPage>=intFinalPage) { intVirtualEndPage = intFinalPage; }
    else { intVirtualNextPage = intVirtualEndPage+1; }

    strReturn = "<div class=\"paging-wrapper\">\n";
    strReturn += "<span class=\"paging__align\">\n";

    if (intVirtualPrevPage>0) {
        strReturn += "<a href=\"?page=" + intVirtualPrevPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"paging__skip paging__skip--prev\"><span class=\"global-community__icon global-community__icon--prev\"></span></a>";
    }
    else {
        strReturn += "<a href='javascript:void(0);' class=\"paging__skip paging__skip--prev disabled\"><span class=\"global-community__icon global-community__icon--prev\"></span></a>";
    }

    
    for (var i=intVirtualStartPage; i<intVirtualEndPage+1; i++) {
        strReturn += (i==intCurrentPage) ? "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"paging__number on\">"+i+"</a>" : "<a href='?page=" + i +"&pagesize="+ intRowCntPerPage + strSchOption + "' class=\"paging__number\">"+i+"</a>";
    }
    

    if (intVirtualNextPage>0) {
        strReturn += "<a href=\"?page=" + intVirtualNextPage +"&pagesize="+ intRowCntPerPage + strSchOption + "\" class=\"paging__skip paging__skip--next\"><span class=\"global-community__icon global-community__icon--next\"></span></a>"
    }
    else {
        strReturn += "<a href='javascript:void(0);' class=\"paging__skip paging__skip--next disabled\"><span class=\"global-community__icon global-community__icon--next\"></span></a>"
    }


    strReturn += "</span>\n";
    strReturn += "</div>\n";

    document.write(strReturn);
}