<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<meta name="description" content="HVAC Template">
<meta name="keywords" content="HVAC, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/nice-select.css" type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/magnific-popup.css" type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/jquery-ui.min.css" type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/Architecture-kosta202/resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/Architecture-kosta202/resources/css/style_cyg.css"
	type="text/css">

<title>MyPage</title>
<style>
body {
	padding-top: 70px;
	padding-bottom: 30px;
}

#align {
	text-align: center;
}
</style>
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
			<a href="./index.html"><img
				src="/Architecture-kosta202/resources/img/logo.png" alt=""></a>
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
						<a href="./index.html"><img
							src="/Architecture-kosta202/resources/img/logo.png" alt=""></a>
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

	<!-- Header Section End -->
	<section class="services spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>구매등록 확인</h2>
						<span>Purchase Registration</span>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12"></div>
				<div class="col-lg-12">
					<div class="car__filter__option"
						style="height: 74px; background-color: white;">
						<div class="row">
							<div class="col-lg-8 col-md-6"></div>
							<div class="col-lg-4 col-md-6">
								<div
									class="car__filter__option__item car__filter__option__item--right">
									<!-- 검색 -->
									<div class="car__search">
										<form action="buyListAction.cyg" method="post">
											<select name="area" id="searchType">
												<option value="title">제목</option>
												<option value="keyword1">키워드</option>
											</select>
											<input type="text" name="searchKey" size="10" placeholder="검색...">
											<button type="submit">
												<i class="fa fa-search"></i>
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<table class="table table-striped table-sm">
								<colgroup>
									<col style="width: 10%;" />
									<col style="width: auto%;" />
									<col style="width: 10%;" />
									<col style="width: 10%;" />
									<col style="width: 10%;" />
									<col style="width: 10%;" />
								</colgroup>
								<thead>
									<tr>
										<th>No</th>
										<th id="align">제목</th>
										<th>키워드1</th>
										<th>키워드2</th>
										<th>키워드3</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${empty listModel.list }">
											<tr>
												<td colspan="5" align="center">데이터가 없습니다.</td>
											</tr>

										</c:when>
										<c:when test="${!empty listModel.list}">
											<c:forEach var="buy" items="${listModel.list }">
												<tr>
													<td>${buy.buyNo }</td>
													<td>${buy.title }</td>
													<td>${buy.keyword1 }</td>
													<td>${buy.keyword2 }</td>
													<td>${buy.keyword3 }</td>
												</tr>
											</c:forEach>
										</c:when>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 페이징 처리 -->
					<div class="pagination__option">
						<c:if test="${listModel.startPage > 5 }">
							<a href="buyListAction.cyg?pageNum=${listModel.startPage -1 }"><span
								class="arrow_carrot-2left"></span></a>
						</c:if>

						<c:forEach var="pageNo" begin="${listModel.startPage }"
							end="${listModel.endPage }">
							<c:choose>
								<c:when test="${listModel.requestPage == pageNo }">
									<a class="active" href="buyListAction.cyg?pageNum=${pageNo }">${pageNo }</a>		
								</c:when>
								<c:otherwise>
									<a href="buyListAction.cyg?pageNum=${pageNo }">${pageNo }</a>
								</c:otherwise>
							</c:choose>							
						</c:forEach>

						<c:if test="${listModel.endPage < listModel.totalPageCount }">
							<a href="buyListAction.cyg?pageNum=${listModel.endPage +1 }"><span
								class="arrow_carrot-2right"></span></a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer Section Begin -->
	<footer class="footer set-bg"
		data-setbg="/Architecture-kosta202/resources/img/footer-bg.jpg">
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

	<!-- Js Plugins -->
	<script src="/Architecture-kosta202/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/bootstrap.min.js"></script>
	<script src="/Architecture-kosta202/resources/jquery.nice-select.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/jquery-ui.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/mixitup.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/jquery.slicknav.js"></script>
	<script src="/Architecture-kosta202/resources/js/owl.carousel.min.js"></script>
	<script src="/Architecture-kosta202/resources/js/main.js"></script>
</body>
</html>