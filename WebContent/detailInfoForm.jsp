<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>부가정보</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="img/png" href="img/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/fonts_jsh/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/fonts_jsh/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/vendor_jsh/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/vendor_jsh/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/vendor_jsh/animsition/css_jsh/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources//Architecture-kosta202/resources/vendor_jsh/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources//Architecture-kosta202/resources/vendor_jsh/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/css/util_jsh.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources/css/main_jsh.css">


<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/style_jsh.css"
	type="text/css">


<script type="text/javascript">

function imgUpload2(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			console.log(e.target.result);
			document.getElementById("user_img").src = e.target.result;
		}

		reader.readAsDataURL(input.files[0]);
	}
}

function imgClick() {
	document.getElementById("imgUpload").click();

}



</script>
</head>
<body onload="">
	<!-- Header Section Begin -->
	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col-lg-2">
					<div class="header__logo">
						<a href="./index.html"><img src="img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-10">
					<div class="header__nav">
						<nav class="header__menu">
							<ul>
								<li class="active"><a href="./index.html">Home</a></li>
								<li><a href="./car.html">구매 게시판</a></li>
								<li><a href="./blog.html">구매 등록</a></li>
								<li><a href="#">판매 등록</a></li>
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
						<h2>회원가입</h2>
						<span>Sign up</span>
					</div>
				</div>
			</div>

			<div class="limiter">

				<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55" 
					style="text-align=center; width: 600px">
					<span class="login100-form-title p-b-32"> 부가정보를 등록하고,<br>다른 회원들에게 자신을 소개하세요<br>
						<br> <br>
					</span>
					
<p align="center" style="font-size: 20px; font-family: ">${member.name}님을 소개해주세요!</p>

			
<pre>
	
		</pre>
				
						<img id="user_img" src="/Architecture-kosta202/resources/img_jsh/user_man.png" style="width:150px; height:150px; border-radius: 70%; overflow: hidden" alt="" onclick="imgClick()">

						
		<form method ="post" enctype="multipart/form-data" class="login100-form validate-form flex-sb flex-w" action="detailInfoAction.sh">
	
		
		 <input type="hidden" name="id" value="${member.id}">
		 
		 <input type = "file" name="fname" id="imgUpload"  onchange="imgUpload2(this)" style="display: none;">

	
		<span class="focus-input100"></span>
			
				
		<div class="wrap-input100 validate-input m-b-12" style="margin-top: 35px">




		<input class="input100"  placeholder="한줄소개를 입력하세요" type="text" name="introduction"> 
		</div>
		<span class="focus-input100"></span>
		


		<div class="container-login100-form-btn" style="margin-top: 50px">
	
		<input type="submit" class="login100-form-btn"  value="부가정보 등록">
		
		
		</div>
		<div style="margin: 0 auto"><br>
<a href="mainAction.sh" >다음에 등록할래요</a>
		</div></form>
				</div>
			</div>
		</div>

	</section>
	
	
	
	
	<div id="dropDownSelect1"></div>





    <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="resources/img/footer-bg.jpg">
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
           <div class="row"> 
                <div class="col-lg-4 col-md-4">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p>Any questions? Let us know in store at 625 Gloria Union, California, United Stated or call us
                            on (+1) 96 123 8888</p>
                        <div class="footer__social">
                            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="google"><i class="fa fa-google"></i></a>
                            <a href="#" class="skype"><i class="fa fa-skype"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3">
                    <div class="footer__widget">
                        <h5>Infomation</h5>
                        <ul>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Purchase</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Payemnt</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Shipping</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Return</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3">
                    <div class="footer__widget">
                        <h5>Infomation</h5>
                        <ul>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Hatchback</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Sedan</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> SUV</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Crossover</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer__brand">
                        <h5>Top Brand</h5>
                        <ul>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Abarth</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Acura</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Alfa Romeo</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Audi</a></li>
                        </ul>
                        <ul>
                            <li><a href="#"><i class="fa fa-angle-right"></i> BMW</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Chevrolet</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Ferrari</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i> Honda</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            <div class="footer__copyright__text">
                <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
            </div>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.nice-select.min.js"></script>
    <script src="resources/js/jquery-ui.min.js"></script>
    <script src="resources/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/js/mixitup.min.js"></script>
    <script src="resources/js/jquery.slicknav.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/main.js"></script>
</body>
</html>