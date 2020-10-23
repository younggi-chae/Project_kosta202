<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<meta name="description" content="HVAC Template">
<meta name="keywords" content="HVAC, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>MyPage</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/style_cyg.css" type="text/css">
</head>

<body>	
	
	<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__widget">
            <a href="#" class="primary-btn">로그인/회원가입</a>
        </div>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="/Architecture-kosta202/resources/img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
    <!-- Offcanvas Menu End -->
    <!-- Header Section Begin -->
<body>   

       <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.html"><img src="/Architecture-kosta202/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="header__nav">
                        <nav class="header__menu">
                            <ul>
                                <li class="active"><a href="./index.html">Home</a></li>
                                <li><a href="./car.html">구매 게시판</a></li>
                                <li><a href="./blog.html">구매 등록</a></li>
                                <li><a href="#">판매 등록</a>
                                </li>
                                <li><a href="./about.html">마이페이지</a></li>
                            </ul>
                        </nav>
                        <div class="header__nav__widget">
                            <a href="#" class="primary-btn">로그인/회원가입</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="canvas__open">
                <span class="fa fa-bars"></span>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
	
	<!-- Services Section Begin -->
	<section class="services spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>마이 페이지</h2>
						<span>My Page</span>
					</div>
				</div>
			</div>		
			<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
		<div class="testimonial__item">
			<div class="testimonial__item__author">
				<div class="testimonial__item__author__pic">
					<c:if test="${member.picture != null }">
							<c:set var="head"
								value="${fn:substring(member.picture, 
													0, fn:length(member.picture)-4) }"></c:set>
							<c:set var="pattern"
								value="${fn:substring(member.picture, 
							fn:length(head) +1, fn:length(member.picture)) }"></c:set>	
							<c:choose>
								<c:when test="${pattern == 'jpg' || pattern == 'gif' || pattern == 'png' }">
									<img src="/Architecture-kosta202/resources/img/upload_cyg/${head }_small.${pattern}" style="width: 80px; height: 80px;">
								</c:when>
								<c:when test="${empty member.picture }">
									<img src="/Architecture-kosta202/resources/img/upload_cyg/noImg.jpg" style="width: 80px; height: 80px;">
								</c:when>
							</c:choose>
						</c:if>						
				</div>
				<div class="testimonial__item__author__text">
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i>
					</div>
				
					<h5>						
						${member.id } 고객님&emsp; <span><a href="memberDetailAction.cyg?id=${member.id }">정보 수정</a></span>								
					</h5>															
					<span>${member.email }</span>					
				</div>
			</div>			
		</div>
	</div>
	</div>
	<br><br><br>		
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="/Architecture-kosta202/resources/img/services/services-1.png" alt="">
						<h5>거래내역 확인</h5>
						<a href="dealListAction.cyg"><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="/Architecture-kosta202/resources/img/services/services-2.png" alt="">
						<h5>구매등록 확인</h5>
						<a href="buyListAction.cyg"><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="/Architecture-kosta202/resources/img/services/services-3.png" alt="">
						<h5>견적서 확인</h5>
						<a href="sellListAction.cyg"><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>				
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="/Architecture-kosta202/resources/img/services/services-4.png" alt="">
						<h5>견적서 관심리스트</h5>
						<a href="myPage-wishList.html"><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
					
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="/Architecture-kosta202/resources/img/services/services-1.png" alt="">
						<h5>나의 평점 및 리뷰</h5>
						<a href="#"><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="services__item">
						<img src="/Architecture-kosta202/resources/img/services/services-2.png" alt="">
						<h5>알림 설정</h5>
						<a href="myPage-notice.html"><i class="fa fa-long-arrow-right"></i></a>
					</div>
					</div>
				</div>
			</div>	
	</section>	
	<!-- Services Section End -->
	
	
	
	 <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="/Architecture-kosta202/resources/img/footer-bg.jpg">
        <div class="container">
            <div>
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="footer__contact__title">
                            <h2>고객 센터</h2>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="footer__contact__option">
                            <div class="option__item"><i class="fa fa-phone"></i> (+12) 345 678 910</div>
                            <div class="option__item email"><i class="fa fa-envelope-o"></i> Colorlib@gmail.com</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer__copyright__text">
                <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
            </div>          
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

	<!-- Js Plugins -->
	<script src="/Architecture-kosta202/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/bootstrap.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/jquery.nice-select.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/jquery-ui.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/mixitup.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/jquery.slicknav.js"></script>
	<script src="/Architecture-kosta202/resources/js/owl.carousel.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/main.js"></script>

</body>
</html>