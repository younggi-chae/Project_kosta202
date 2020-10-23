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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//주소찾기 함수
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {               
                var roadAddr = data.roadAddress; 
                var extraRoadAddr = '';               
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }                
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }                
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
               
                var indexOfDong = data.jibunAddress.indexOf('동');                
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress.substring(0,indexOfDong + 1);
            
                if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    var indexOfDong = expJibunAddr.indexOf('동');                    
                    document.getElementById("sample4_jibunAddress").value = expJibunAddr.substring(0,indexOfDong + 1);                            
            	}
            }
        }).open();
    }
   //프로필 사진 변경
   function uploadImg(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				console.log(e.target.result);
				document.getElementById("regImg").src = e.target.result;
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
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
				<div class="col-lg-12 col-md-6 col-sm-6">
					<div class="services__item">										
			<form action="memberUpdateAction.cyg" method="post" enctype="multipart/form-data">
							<div class="col-lg-12">
				<div class="section-title">	
					<div class="testimonial__item__author__text">			
						<h4>KOSTA 회원님</h4>									
					</div><br>					
						<div>						
							<c:if test="${member.picture != null }">
							<c:set var="head"
								value="${fn:substring(member.picture, 
													0, fn:length(member.picture)-4) }"></c:set>
							<c:set var="pattern"
								value="${fn:substring(member.picture, 
							fn:length(head) +1, fn:length(member.picture)) }"></c:set>
	
							<c:choose>
								<c:when test="${pattern == 'jpg' || pattern == 'gif' || pattern == 'png' }">
									<img id="regImg" src="/Architecture-kosta202/resources/img/upload_cyg/${head }_small.${pattern}" style="width: 140px; height: 140px;">
								</c:when>
								<c:otherwise>
									<img src="/Architecture-kosta202/resources/img/upload_cyg/noImg.jpg">
								</c:otherwise>
							</c:choose>
						</c:if>						
						<%-- <c:choose>
							<c:when test="${!empty member.picture }">								
								<img src="/Architecture-kosta202/resources/img/upload_cyg/${member.picture }">
							</c:when>
							<c:otherwise>
								<c:out value="NO IMAGE"></c:out>
							</c:otherwise>
						</c:choose>				 --%>			
				 	</div><br>				  
				  <div align="center">
					<input type="file" id="file" name="picture" onchange="uploadImg(this)" style="display: none;" />
					<input type="button" value="프로필 사진 변경" onclick="document.getElementById('file').click();" />
				 </div>				
				</div>				
			</div>			
				<input type="hidden" name="id" value="${member.id }">
				<p>이름</p><div><input type="text" name="name" value="${member.name }" placeholder="이름 변경.."></div><br>
				<p>비밀번호</p><div><input type="password" name="password" value="${member.password }" placeholder="비밀번호 변경.."></div><br>		
				<p>이메일</p><div><input type="text" name="email" value="${member.email }" placeholder="이메일 변경.."></div><br>
				<p>전화번호</p><div><input type="text" name="phoneno" value="${member.phoneNo }" placeholder="전화번호 변경.."></div><br>				
				<p>주소</p><div><input type="text" name="address" id="sample4_jibunAddress"  value="${member.address }" placeholder="주소 변경.."></div>
						  <div> <input type="button" onclick="sample4_execDaumPostcode()" value="지역 찾기"></div><br>				
				<p>한줄소개</p><div><input type="text" name="introduction" value="${member.introduction }" placeholder="한줄소개 변경.."></div><br>				
				<input type="submit" value="정보수정">			
			</form>									
		</div>
	</div>			
</div>
		</div>
		<div align="center" id="delete">
			<a href="memberDeleteAction.cyg" class="primary-btn">회원탈퇴</a>
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
	<script type="text/javascript">
		$('#delete').click(function() {
			confirm("정말 회원탈퇴를 하시겠습니까??")
		});
	</script>
	<!-- <script type="text/javascript">
		$('#check').click(function() {
			var pwd1 = $("#check1").val();
			var pwd2 = $("#check2").val();

			if (pwd1 != '' && pwd2 == '') {
				null;
			} else if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					alert("정보가 수정되었습니다.")
				} else {
					alert("비밀번호 불일치합니다.")
				}
			}
		});
	</script> -->
</body>
</html>