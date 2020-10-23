<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="img/png" href="img/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/fonts_jsh/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/fonts_jsh/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="/Architecture-kosta202/resources/vendor_jsh/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/vendor_jsh/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/vendor_jsh/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/vendor_jsh/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/vendor_jsh/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="/Architecture-kosta202/resources/css/util_jsh.css">
<link rel="stylesheet" type="text/css" href="/Architecture-kosta202/resources/css/main_jsh.css">


<link rel="stylesheet" href="/Architecture-kosta202/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/Architecture-kosta202/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/Architecture-kosta202/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/Architecture-kosta202/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/Architecture-kosta202/resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/Architecture-kosta202/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/Architecture-kosta202/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/Architecture-kosta202/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/Architecture-kosta202/resources/css/style_jsh.css" type="text/css">

</head>
<body>


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
						<h2>로그인</h2>
						<span>Sign in</span>
					</div>
				</div>
			</div>

			<div class="limiter">

				<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55" style="float: left;clear:both">
					<span class="login100-form-title p-b-32"> ㅇㅇ에 오신 것을 환영합니다<br>
					<br>
					<br>
					</span>

					<form class="login100-form validate-form flex-sb flex-w"
						action="loginAction.sh" method="post">


						<span class="txt1 p-b-11"> Username </span>
						<div class="wrap-input100 validate-input m-b-36"
							data-validate="아이디를 입력하세요">
							<input class="input100" type="text" name="username"> <span
								class="focus-input100"></span>
						</div>

						<span class="txt1 p-b-11"> Password </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="비밀번호를 입력하세요">
							<span class="btn-show-pass"> <i class="fa fa-eye"></i>
							</span> <input class="input100" type="password" name="pass"> <span
								class="focus-input100"></span>
						</div>

						<div class="flex-sb-m w-full p-b-48">
							<div class="contact100-form-checkbox">
								<input class="input-checkbox100" id="ckb1" type="checkbox"
									name="remember-me"> <label class="label-checkbox100"
									for="ckb1"> Remember me </label>
							</div>

							<div>
								<a href="#" class="txt3"> Forgot Password? </a>
							</div>
						</div>

						<div class="container-login100-form-btn">
							<input type="submit" class="login100-form-btn" style="margin:auto" value="로그인">

						</div>

					</form>
					
					
					
					
				</div>
				<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55" style="float: left; text-align: center">
				
				<span class="login100-form-title p-b-32" style="text-align:center">아직 회원이 아니신가요?</span>
				<br><br><br><br><br><br><br>
				<p>어떤 일이든, 그에 꼭 맞는 숨은 고수를 소개 받으세요.</p>
<br><br><br><br><br><br><br><br>
				
				<div class="container-login100-form-btn">
				<a href="signupFormAction.sh" class="login100-form-btn" style="margin:auto">가입하고 서비스 요청하기
							
</a>
					
				</div>
			
			</div>




		</div>

	</section>


	<section class="services spad"
		style="padding =top: 300px; padding-bottom: 500px">






	</section>

	<div id="dropDownSelect1"></div>


 
    <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="img/footer-bg.jpg">
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



	<script src="/Architecture-kosta202/resources/vendor_jsh/jquery/jquery-3.2.1.min.js"></script>
	<script src="/Architecture-kosta202/resources/vendor_jsh/animsition/js/animsition.min.js"></script>
	<script src="/Architecture-kosta202/resources/vendor_jsh/bootstrap/js/popper.js"></script>
	<script src="/Architecture-kosta202/resources/vendor_jsh/bootstrap/js/bootstrap.min.js"></script>
	<script src="/Architecture-kosta202/resources/vendor_jsh/select2/select2.min.js"></script>
	<script src="/Architecture-kosta202/resources/vendor_jsh/daterangepicker/moment.min.js"></script>
	<script src="/Architecture-kosta202/resources/vendor_jsh/daterangepicker/daterangepicker.js"></script>
	<script src="/Architecture-kosta202/resources/vendor_jsh/countdowntime/countdowntime.js"></script>
	<script src="/Architecture-kosta202/resources/js/main.js"></script>


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