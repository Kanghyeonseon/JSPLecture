<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- link.jsp -->
<%@include file="../INCLUDES/link.jsp" %>
</head>
<body>

<div id=wrapper>
	<div id=topmenu>
	<%@include file ="../INCLUDES/header.jsp" %>	
	<%@include file="../INCLUDES/navi.jsp" %>
	</div>
	
	<div id="main-container">
      <!-- banner slider -->
      <div id="banner-slider" class="swiper">
        <ul class="swiper-wrapper">
          <li class="swiper-slide"><a href="#"><img src="img/banner1.jpg"></a></li>
          <li class="swiper-slide"><a href="#"><img src="img/banner2.jpg"></a></li>
          <li class="swiper-slide"><a href="#"><img src="img/banner3.jpg"></a></li>
          <li class="swiper-slide"><a href="#"><img src="img/banner4.jpg"></a></li>
        </ul>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
        <div class="swiper-scrollbar"></div>
      </div>
      <!-- tab -->
      <div id="tab">tab</div>
      <!-- card -->
      <div id="cards">card</div>
      <!--item slider -->
      <div id="item-slider">item</div>
    </div>
    
    <%@include file="../INCLUDES/footer.jsp" %>
</div>
</body>
</html>