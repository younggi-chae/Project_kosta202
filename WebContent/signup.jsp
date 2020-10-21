<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
	href="/Architecture-kosta202/resources/vendor_jsh/animsition/css_jsh/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources//Architecture-kosta202/resources/vendor_jsh/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="/Architecture-kosta202/resources//Architecture-kosta202/resources/vendor_jsh/daterangepicker/daterangepicker.css">
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



<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<script type="text/javascript">


//sessionStorage.setItem("phoneData", document.getElementById('phoneNo').value ); // 저장

var phoneNo =  $('#phoneNo').val();
sessionStorage.setItem("phoneData", phoneNo);

</script>


<script>





	function popup() {
		//const phoneNo = document.getElementById('phoneNo').value;

		var url = "/Architecture-kosta202/phone.jsp";
		var name = "certification";
		var option = "width=500, height=500";
		window.open(url, name, option);

	}

	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
</script>





</head>
<body>
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
					style="margin: auto">
					<span class="login100-form-title p-b-32"> ㅇㅇ에 오신 것을 환영합니다<br>
						<br> <br>
					</span>

					<form class="login100-form validate-form flex-sb flex-w"
						method="post" action="signupAction.sh">


						<span class="txt1 p-b-11"> 이름 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="이름을 입력하세요">


							<input class="input100" type="text" name="name"
								placeholder="실명을 입력하세요"> <span class="focus-input100"></span>
						</div>

						<span class="txt1 p-b-11"> 아이디 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="아이디를 입력하세요">


							<input class="input100" type="text" name="id"
								placeholder="아이디를 입력하세요"> <span class="focus-input100"></span>
						</div>

						<span class="txt1 p-b-11"> 비밀번호 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="비밀번호를 입력하세요">
							<span class="btn-show-pass"> <i class="fa fa-eye"></i>
							</span> <input class="input100" placeholder="영문자와 숫자를 포함하여 8자리 이상"
								type="password" name="password"> <span
								class="focus-input100"></span>
						</div>

						<span class="txt1 p-b-11"> 이메일 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="이메일을 입력하세요">


							<input class="input100" type="text" placeholder="이메일을 입력하세요"
								name="email"> <span class="focus-input100"></span>
						</div>

						<span class="txt1 p-b-11"> 성별 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="성별을 체크하세요">
							<label><input type="radio" name="sex" value="m">남자</label>
							<label><input type="radio" name="sex" value="w">여자</label> 
							
							<span class="focus-input100"></span>
						</div>


						<span class="txt1 p-b-11"> 전화번호 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="전화번호를 입력하세요">

							<input style="width: 61%; float: left" class="input100"
								placeholder="010-1111-1111" name="phoneNo" id="phoneNo" value="123333">
								
								-
								
								
								<input type="button" onclick="popup()" class="login100-form-btn"
								value="번호확인"> <a href="javascript:popup()"
								target="_blank"></a>

							</button>
						</div>

						<span class="txt1 p-b-11"> 인증번호 입력 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="인증번호를 입력하세요">

							<input style="width: 61%; float: left" class="input100"
								type="password" name="pass"> <input type="button"
								onclick="phone()" class="login100-form-btn" value="인증확인">
							</button>

						</div>


						<span class="txt1 p-b-11"> 우편번호 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="Password is required"
							style="height: 45px; font-family: Raleway-Medium; font-size: 1">

							<input type="text" id="sample4_postcode" placeholder="우편번호">
							<input type="button" onclick="sample4_execDaumPostcode()"
								value="우편번호 찾기">

						</div>

						<div class="wrap-input100 validate-input m-b-12"
							data-validate="Password is required"
							style="height: 45px; font-family: Raleway-Medium">

							<input type="text" id="sample4_roadAddress" name="address"
								placeholder="도로명주소"> <input type="text"
								id="sample4_jibunAddress" name="address" placeholder="지번주소">

						</div>

						<span class="txt1 p-b-11"> 상세주소 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="Password is required"
							style="height: 45px; font-family: Raleway-Medium">

							<input type="text" id="sample4_detailAddress" placeholder="상세주소">

						</div>




						<span class="txt1 p-b-11"> 계좌번호 </span>
						<div class="wrap-input100 validate-input m-b-12"
							data-validate="Password is required">

							<input class="input100" placeholder="계좌번호를 입력하세요" type="text"
								name="account"> <span class="focus-input100"></span>
						</div>


						<div class="flex-sb-m w-full p-b-48">
							<div class="contact100-form-checkbox"></div>

							<div>
								<a href="#" class="txt3"> </a>
							</div>
						</div>

						<div class="container-login100-form-btn">
							<input type="submit" class="login100-form-btn" value="회원가입 하기">


						</div>

					</form>
				</div>
			</div>
		</div>

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
							<div class="option__item">
								<i class="fa fa-phone"></i> (+12) 345 678 910
							</div>
							<div class="option__item email">
								<i class="fa fa-envelope-o"></i> Colorlib@gmail.com
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer__copyright__text">
				<p>
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
				</p>
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

	<script src="Architecture-kosta202/resources/vendor_jsh/jquery/jquery-3.2.1.min.js"></script>
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