<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
<span>
	<h5>이력서 등록 관리</h5>
	<a href="${path }/pservice/wresume">새 이력서 작성</a>
	<a href="${path }/pservice/maresume">이력서 관리</a>

	<h5>지원 관리</h5>
	<a href="${path }/pservice/wcontract">전자 근로계약서</a>
	<a href="${path }/pservice/ecertifi">취업활동 증명서</a>

	<h5>근태 기록</h5>
	<a href="${path }/pservice/workmanage">근태 기록 관리/조회</a>

	<h5>급여 관리</h5>
	<a href="${path }/pservice/inqsalary/">급여 조회</a>

	<h5>경력 관리</h5>
	<a href="${path }/pservice/inqcareer">경력 조회</a>
</span>

<%@ include file = "../include/footer.jsp" %>