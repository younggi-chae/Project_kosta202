<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap"
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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"> <!-- 스위치  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
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

	<section class="services spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>알림</h2>
						<span>Notice</span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="testimonial__item">											
						<div><h3>설정</h3></div><br><br>
						<div class="custom-control custom-switch">
   							 <input type="checkbox" class="custom-control-input" id="customSwitch1">
   							 <label class="custom-control-label" for="customSwitch1">SMS</label>
						</div><br>
						<div class="custom-control custom-switch">
   							 <input type="checkbox" class="custom-control-input" id="customSwitch2">
   							 <label class="custom-control-label" for="customSwitch2">이메일</label>
						</div><br>
						<div class="custom-control custom-switch">
   							 <input type="checkbox" class="custom-control-input" id="customSwitch3">
   							 <label class="custom-control-label" for="customSwitch3">메시지</label>
						</div><br>
						<div class="custom-control custom-switch">
   							 <input type="checkbox" class="custom-control-input" id="customSwitch4">
   							 <label class="custom-control-label" for="customSwitch4">방해금지 시간 설정</label>
						</div><br>						
						<div style="float: left">
						<select>							
						<optgroup label="ampm">
							<option>오전</option>							
							<option>오후</option>																		
						</optgroup>&emsp;
						</select>	
						</div>
						<div style="float: left">
						<select>							
						<optgroup label="before" style="max-height: 65px;">
							<option>00:00</option>							
							<option>01:00</option>
							<option>02:00</option>
							<option>03:00</option>
							<option>04:00</option>
							<option>05:00</option>
							<option>06:00</option>
							<option>07:00</option>
							<option>08:00</option>
							<option>09:00</option>
							<option>10:00</option>
							<option>11:00</option>														
						</optgroup>
						</select>	
						</div>
						<div style="float: left">부터</div>
						<div style="float: left">
						<select>				
						<optgroup label="after">
							<option>00:00</option>							
							<option>01:00</option>
							<option>02:00</option>
							<option>03:00</option>
							<option>04:00</option>
							<option>05:00</option>
							<option>06:00</option>
							<option>07:00</option>
							<option>08:00</option>
							<option>09:00</option>
							<option>10:00</option>
							<option>11:00</option>
						</optgroup>														
						</select>	
						</div>
						까지										
					</div>						
				</div>
			</div>								
		</div>
	</section>   
	
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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>	    
</body>
</html>