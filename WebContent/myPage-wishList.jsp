<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!--         <div class="header__top"> -->
<!--             <div class="container"> -->
<!--                 <div class="row"> -->
<!--                     <div class="col-lg-7"> -->
<!--                         <ul class="header__top__widget"> -->
<!--                             <li><i class="fa fa-clock-o"></i> Week day: 08:00 am to 18:00 pm</li> -->
<!--                             <li><i class="fa fa-envelope-o"></i> Info.colorlib@gmail.com</li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                     <div class="col-lg-5"> -->
<!--                         <div class="header__top__right"> -->
<!--                             <div class="header__top__phone"> -->
<!--                                 <i class="fa fa-phone"></i> -->
<!--                                 <span>(+12) 345 678 910</span> -->
<!--                             </div> -->
<!--                             <div class="header__top__social"> -->
<!--                                 <a href="#"><i class="fa fa-facebook"></i></a> -->
<!--                                 <a href="#"><i class="fa fa-twitter"></i></a> -->
<!--                                 <a href="#"><i class="fa fa-google"></i></a> -->
<!--                                 <a href="#"><i class="fa fa-instagram"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.html"><img src="resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="header__nav">
                        <nav class="header__menu">
                            <ul>
                                <li class="active"><a href="./index.html">Home</a></li>
                                <li><a href="Controller_kgj/listBuyBoard.kgj">구매 게시판</a></li>
                                <li><a href="./blog.html">구매 등록</a></li>
                                <li><a href="kjj/registerFormAction.kjj">판매 등록</a>
<!--                                     <ul class="dropdown"> -->
<!--                                         <li><a href="./about.html">About Us</a></li> -->
<!--                                         <li><a href="./car-details.html">Car Details</a></li> -->
<!--                                         <li><a href="./blog-details.html">Blog Details</a></li> -->
<!--                                     </ul> -->
                                </li>
                                <li><a href="Mypage/mypageMainAction.cyg">마이페이지</a></li>
<!--                                 <li><a href="./contact.html">Contact</a></li> -->
                            </ul>
                        </nav>
                        <div class="header__nav__widget">
<!--                             <div class="header__nav__widget__btn"> -->
<!--                                 <a href="#"><i class="fa fa-cart-plus"></i></a> -->
<!--                                 <a href="#" class="search-switch"><i class="fa fa-search"></i></a> -->
<!--                             </div> -->
                            <a href="controller_jsh/loginFormAction.sh" class="primary-btn">로그인/회원가입</a>
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
						<h2>관심리스트</h2>
						<span>Wish List</span>
					</div>
				</div>
			</div>
		</div>
	
	 <!-- Car Section Begin -->    
        <div class="container">
            <div class="row">
                <div class="col-lg-12">                  
                </div>
                <div class="col-lg-12">
                    <div class="car__filter__option" style="height: 74px; background-color: white;">                    
                        <div class="row">
                             <div class="col-lg-8 col-md-6">
                                <a href="#" class="primary-btn">선택삭제</a>&emsp;
                                <a href="#" class="primary-btn">전체삭제</a>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="car__filter__option__item car__filter__option__item--right">
                                    <a href="#" class="primary-btn">판매자와 대화하기</a>
                                </div>
                            </div>                           
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-4">
                            <div class="car__item">
                                <div class="car__item__pic__slider owl-carousel">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-1.jpg" alt="">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-8.jpg" alt="">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-6.jpg" alt="">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-3.jpg" alt="">
                                </div>
                                <div class="car__item__text">
                                    <div class="car__item__text__inner">
                                        <div class="label-date">판매자id</div>
                                        <h5><a href="#">포르쉐</a></h5>
                                        <ul>
                                            <li><span>카테고리</span></li>
                                            <li><span>키워드1</span></li>
                                            <li><span>키워드2</span></li>
                                        </ul>
                                    </div>
                                    <div class="car__item__price">
                                        <span class="car-option sale" style="background-color: #d2d2d2;"><input type="checkbox"></span>
                                        <h6>500,000,000</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="car__item">
                                <div class="car__item__pic__slider owl-carousel">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-2.jpg" alt="">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-8.jpg" alt="">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-6.jpg" alt="">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-4.jpg" alt="">
                                </div>
                                <div class="car__item__text">
                                    <div class="car__item__text__inner">
                                        <div class="label-date">판매자id</div>
                                        <h5><a href="#">도요타</a></h5>
                                        <ul>
                                            <li><span>카테고리</span></li>
                                            <li><span>키워드1</span></li>
                                            <li><span>키워드2</span></li>
                                        </ul>
                                    </div>
                                    <div class="car__item__price">
                                        <span class="car-option sale" style="background-color: #d2d2d2;"><input type="checkbox"></span>
                                        <h6>120,000,000</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="car__item">
                                <div class="car__item__pic__slider owl-carousel">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-3.jpg" alt="">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-8.jpg" alt="">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-6.jpg" alt="">
                                    <img src="/Architecture-kosta202/resources/img/cars/car-5.jpg" alt="">
                                </div>
                                <div class="car__item__text">
                                    <div class="car__item__text__inner">
                                        <div class="label-date">판매자id</div>
                                        <h5><a href="#">BMW</a></h5>
                                        <ul>
                                            <li><span>카테고리</span></li>
                                            <li><span>키워드1</span></li>
                                            <li><span>키워드2</span></li>
                                        </ul>
                                    </div>
                                    <div class="car__item__price">
                                        <span class="car-option sale" style="background-color: #d2d2d2;"><input type="checkbox"></span>
                                        <h6>200,000,000</h6>
                                    </div>
                                </div>
                            </div>
                        </div>                       
                        
                    </div>
                    <div class="pagination__option">
                        <a href="#" class="active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><span class="arrow_carrot-2right"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Car Section End -->
	
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