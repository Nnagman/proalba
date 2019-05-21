<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
      
	  <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Simple Table</h4>
                  <p class="card-category"> Here is a subtitle for this table</p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                  <table id="example" class="mdl-data-table" style="width:100%">
        <thead>
      <tr>
        <th class="th-sm">날짜 </th>
        <th class="th-sm">출근시간</th>
        <th class="th-sm">퇴근 시간 </th>
   
      </tr>
    </thead>
  <tbody>
  <c:forEach var="row" items="${map.list}">
	<tr>
		<td>${row.sa_date}</td><td>${row.sa_start}</td><td>${row.work_end_time }</td>
</tr>
</c:forEach>

  </tbody>
     
    </table>
                  </div>
                </div>
              </div>
            </div>
            
        </div>
        </div>
    

</html>