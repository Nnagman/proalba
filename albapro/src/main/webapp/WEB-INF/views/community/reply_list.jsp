<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
	.replyName {
	
	display : inline-block;
}
</style>

	<c:forEach var="row" items="${list}">
<div class="media mb-4">

          <div class="media-body">
            <div class="replyName">  
            	<h4>${row.id}</h4>
            </div>
 			<div class="replyName">
            	<h6>  <fmt:formatDate value="${row.r_date}" pattern="yyyy-MM-dd a HH:mm:ss" /> </h6>		
 			</div>
 			<br>
          ${row.r_content}
          </div>          
</div>
     </c:forEach>