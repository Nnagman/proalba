<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

  <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>  
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
    html,
    body,
    header,
    .carousel {
      height: 60vh;
    }

    @media (max-width: 740px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
       
        
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {
      .navbar:not(.top-nav-collapse) {
        background: #929FBA !important;
      }
    }

      
      .d-block{
      width: 500px  !important;
      height:400px;
      margin-top:200px;
       margin-left:50px !important;
     
  
      }
      header{
      background-image: url("${path}/resources/images/배경2.jpg");
      background-size: 100% 100%;
      
      }
      .carousel{
      width:600px !important;
      left:20% !important;
      }
      
     

 .mr-auto, .mx-auto{
    margin-right:0px !important;
    }
    .navbar{
    width:100%;
    }


.navbar-toggler{
margin-left:500px !important;
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

							<c:if
								test='${fn:substring(login.m_code,0,1) == "c" && login.m_code != null}'>
								<%@ include file="cmenu.jsp"%>
							</c:if>
						</ul>

          <!-- Right -->

          <ul class="navbar-nav nav-flex-icons">
             <li class="nav-item loginicon">
              <c:if test='${login.m_code==null}'>
              <a href="${path}/login" class="nav-link border border-light rounded loginicon">
                <i class="fab fa-github mr-2"></i>sign in 
              </a>
              </c:if>
            </li>

            
               <li class="nav-item loginicon2">
              <%-- <a class="nav-link border1 border-light rounded loginicon2"
               href="${path}/logout"> --%>
               
                <c:if test='${login.m_code!=null}'>
               	 <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" 
              	  data-placement="bottom" data-html="true" 
               	  data-content="<div><h6><span>${login.name}</span>님</h6></div><hr/>
                  <p>Phone : ${login.phone}</p><hr/>
              	  <p>E-mail : ${login.email}</p><hr />
                <div class='popoverFoot'>
                	<span class='modifyLink'><a href='${path}/MyinfoModify'>정보 수정</a></span>
                	<a href='${path}/logout'>로그아웃</a>
                </div>">
                                ${login.id}
				</button>

					
				</c:if>
               
              </a>
            </li> 
        
            
          </ul>
              	
        </div>

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
   </div>
    </header>

    <!--/.Carousel Wrapper-->
    <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
  <script type="text/javascript" src="resources/js/popper.min.js"></script>
      <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="resources/js/mdb.min.js"></script>
  
  
<script>
$(function () {
	  $('[data-toggle="popover"]').popover({
		  html:true
	  });
	});
</script>
    
	</body>
</html>
