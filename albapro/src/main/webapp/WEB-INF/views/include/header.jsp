<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
<!--  <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"> -->
	<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
<!--<script src="resources/js/jquery.js"></script> -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/header.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link rel="stylesheet" href="${path}/resources/css/bootstrap.css" />
	<link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css" />
	<link href="${path}/resources/css/mdb.min.css" rel="stylesheet">
    <link href="${path}/resources/css/style.css" rel="stylesheet">

</head>

 <style type="text/css">
  
      header{
      background-image: url("${path}/resources/images/배경2.jpg");
      background-size: 100% 100%;
      
      }
  
  </style> 

<body>
	
  

	
		
		<header>
		<div class="mask flex-center rgba-black-strong navbar-dark"> 
    <!-- Navbar -->
    
     
    
    
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
    
    
    
      <div class="containermo">
		<div  class=" header-logo">
		<a href= "${path}">
		
      <img src="${path}/resources/images/weblogo.png" class=" header-logo"  /> 
      </a>
      </div>
        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse sizemo" id="navbarSupportedContent">


			 
          <!-- Left -->
          <ul class="navbar-nav mr-auto">

							<c:if
								test='${fn:substring(login.m_code,0,1) == "p"|| login.m_code == null}'>
								<%@ include file="menu.jsp"%>
							</c:if>

							<c:if test='${fn:substring(login.m_code,0,1) == "c" && login.m_code != null}'>
								<%@ include file="cmenu.jsp"%>
							</c:if>
							<c:if
								test='${fn:substring(login.m_code,0,1) == "a" && login.m_code != null}'>
								<%@ include file="amenu.jsp" %>
							</c:if>
						</ul>

          <!-- Right -->

        

            
               
        
            
          </div>
              	

      </div>
      
           <div class="navbar-nav nav-flex-icons loginicon">
             <div class="nav-item ">
              <c:if test='${login.m_code==null}'>
              <a href="${path}/login" class="nav-link border border-light rounded ">
                <i class="fab fa-github mr-2"></i>sign in 
              </a>
              </c:if>
            </div>
        </div>
      
   
        
        <div class="nav-item loginicon2">
         
               
                <c:if test='${login.m_code!=null}'>
               	 <button type="button" class="btn btn-secondary " data-container="body" data-toggle="popover"  data-placement="bottom" data-html="true" 
               	  data-content=
               	   "
               	   	<c:if test='${fn:substring(login.m_code,0,1) == "c" && login.m_code != null}'>
               	   		<div><h6><span>${login.id}</span>님</h6></div><hr/>
               	   	</c:if>
               	   	<c:if test='${fn:substring(login.m_code,0,1) == "p" && login.m_code != null}'>
               	   		<div><h6><span>${login.name}</span>님</h6></div><hr/>
               	   	</c:if>
                  	<p>Phone : ${login.phone}</p><hr/>
                  	<c:if test='${fn:substring(login.m_code,0,1) == "p" && login.m_code != null}'>
              	  	<p>E-mail : ${login.email}</p><hr />
              	  	</c:if>
                	<div class='popoverFoot'>
                		<span class='modifyLink'><a href='${path}/MyinfoModify'>정보 수정</a></span>
                		<a href='${path}/logout'>로그아웃</a>
                	</div>
                	"
                >
                                ${login.id}
				</button>

					
				</c:if>
               
          
            </div> 
        
        
    </nav>
      
          
     <div class="he-title">
   		<h1>알바도 프로답게</h1>
   		
   		<p>웹과 모바일 기반으로 쉽고 간편하게</p>
   		<p>블록체인 기술로 신빙성있는 근로계약 하세요.</p>
   </div>
     
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">

  <div class="carousel-inner">
  

    <div class="carousel-item active">
      <img class="d-block w-100" src= "${path}/resources/images/전자서명.png">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${path}/resources/images/노트북.png">
    </div>
    
  </div>
   <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!--/.Carousel Wrapper-->
	<script type="text/javascript" src="${path}/resources/js/jquery-3.4.0.min.js"></script> 
	<script type="text/javascript" src="${path}/resources/js/popper.min.js"></script>
	<script type="text/javascript" src="${path}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${path}/resources/js/mdb.min.js"></script>
   </div>
    </header>
  
  
<script>
$(function () {
	  $('[data-toggle="popover"]').popover({
		  html:true
	  });
	});
</script>
    
	</body>
</html>
