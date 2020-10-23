<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="HVAC Template">
    <meta name="keywords" content="HVAC, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HVAC | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style_kjj.css" type="text/css">
    
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
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
</script>
<script type="text/javascript">
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
	
	function imgClick() {
	}
	
// 	function bigClassifierSelect(input) {
// 		if (input.value == "의류") {
// 			var str = "<option value=" + '상의' + ">상의</option><option value=" + '하의' + ">하의</option><option value=" + '악세사리' + ">악세사리</option>";
// 			document.getElementById("mediumClassifier").innerHTML = str;
// 		} else if (input.value == "가전") {
// 			var str =  "<option value=" + '냉장고' + ">냉장고</option><option value=" + '에어컨' + ">에어컨</option><option value=" + '세탁기' + ">세탁기</option>";
// 			document.getElementById("mediumClassifier").innerHTML = str;
// 		}
// 	}
</script>
</head>

<body>
    <!-- Page Preloder -->
<!--     <div id="preloder"> -->
<!--         <div class="loader"></div> -->
<!--     </div> -->

    <!-- Offcanvas Menu Begin -->
<!--     <div class="offcanvas-menu-overlay"></div> -->
<!--     <div class="offcanvas-menu-wrapper"> -->
<!--         <div class="offcanvas__widget"> -->
<!--             <a href="#"><i class="fa fa-cart-plus"></i></a> -->
<!--             <a href="#" class="search-switch"><i class="fa fa-search"></i></a> -->
<!--             <a href="#" class="primary-btn">Add Car</a> -->
<!--         </div> -->
<!--         <div class="offcanvas__logo"> -->
<!--             <a href="./index.html"><img src="img/logo.png" alt=""></a> -->
<!--         </div> -->
<!--         <nav class="offcanvas__menu mobile-menu"> -->
<!--             <ul> -->
<!--                 <li class="active"><a href="./index.html">Home</a></li> -->
<!--                 <li><a href="./car.html">Cars</a></li> -->
<!--                 <li><a href="./blog.html">Blog</a></li> -->
<!--                 <li><a href="#">Pages</a> -->
<!--                     <ul class="dropdown"> -->
<!--                         <li><a href="./about.html">About Us</a></li> -->
<!--                         <li><a href="./car-details.html">Car Details</a></li> -->
<!--                         <li><a href="./blog-details.html">Blog Details</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
<!--                 <li><a href="./about.html">About</a></li> -->
<!--                 <li><a href="./contact.html">Contact</a></li> -->
<!--             </ul> -->
<!--         </nav> -->
<!--         <div id="mobile-menu-wrap"></div> -->
<!--         <ul class="offcanvas__widget__add"> -->
<!--             <li><i class="fa fa-clock-o"></i> Week day: 08:00 am to 18:00 pm</li> -->
<!--             <li><i class="fa fa-envelope-o"></i> Info.colorlib@gmail.com</li> -->
<!--         </ul> -->
<!--         <div class="offcanvas__phone__num"> -->
<!--             <i class="fa fa-phone"></i> -->
<!--             <span>(+12) 345 678 910</span> -->
<!--         </div> -->
<!--         <div class="offcanvas__social"> -->
<!--             <a href="#"><i class="fa fa-facebook"></i></a> -->
<!--             <a href="#"><i class="fa fa-twitter"></i></a> -->
<!--             <a href="#"><i class="fa fa-google"></i></a> -->
<!--             <a href="#"><i class="fa fa-instagram"></i></a> -->
<!--         </div> -->
<!--     </div> -->
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

    <!-- Breadcrumb End -->
    <div class="breadcrumb-option set-bg" data-setbg="resources/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>판매 등록</h2>
<!--                         <div class="breadcrumb__links"> -->
<!--                             <a href="./index.html"><i class="fa fa-home"></i> Home</a> -->
<!--                             <span>Contact Us</span> -->
<!--                         </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Begin -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-6">
                    <div class="about__pic">
						<img id="regImg" src="resources/img/upload_image_kjj.png" alt="" onclick="imgClick()">
					</div>
                </div>
            <div class="col-lg-5 col-md-6">
               <div class="hero__tab__form">
                  <form action="kjj/registerSellAction.kjj" enctype="multipart/form-data" method="post">
                     <div class="select-list">
                        <div class="register-row">
                           <p style="font-size: 20px">제품명</p>
                           <input type="text" name="ItemName" placeholder="필수 입력 사항" style="width: 94%">
                        </div>
                        <div class="select-list-item">
                           <p style="font-size: 20px">가격</p>
                           <input type="text" name="Price" placeholder="필수 입력 사항" style="width: 94%">
                        </div>
                        <div class="select-list-item">
                           <p style="font-size: 20px">제품 상태</p>
                           <select name="ItemCondition">
                              <option value="상">상</option>
                              <option value="중">중</option>
                              <option value="하">하</option>
                           </select>
                        </div>
                        <div class="register-row">
									<p style="font-size: 20px; margin-bottom: 15px;">거래 방법</p>
									<div>
									<input type="radio" name="Type" value="택배거래" checked="checked" style="float: left; width:10%; height: 23px;">
									<p style="float: left;">택배거래</p>
									<input type="radio" name="Type" value="직거래" style="float: left; width:10%; height: 23px; margin-left: 20px;">
									<p style="float: left;">직거래</p>
									<input type="radio" name="Type" value="택배거래/직거래" style="float: left; width:10%; height: 23px; margin-left: 20px;">
									<p style="float: left;">택배거래/직거래</p>
									</div>
								</div>
                        <div class="register-row">
                           <p style="font-size: 20px">거래 지역</p>
									<input type="text" name="Region" id="sample4_jibunAddress" placeholder="필수 입력 사항" style="float: left;"> 
									<input type="button" onclick="sample4_execDaumPostcode()" value="지역 찾기" style="float: left;">
                        </div>
                        <div class="select-list-item">
                           <p style="font-size: 20px">대분류</p>
                           <select id="Big_Classifier" name="BigClassifier">
                              <option value="의류">의류</option>
                              <option value="가전">가전</option>
                           </select>
                        </div>
                        <div class="select-list-item">
                           <p style="font-size: 20px">중분류</p>
                           <select name="MediumClassifier" id="mediumClassifier">
                              <option value="상의">상의</option>
                              <option value="하의">하의</option>
                              <option value="악세사리">악세사리</option>
                              <option value="냉장고">냉장고</option>
                              <option value="에어컨">에어컨</option>
                              <option value="세탁기">세탁기</option>
                           </select>
                        </div>
                        <div class="register-row">
                           <p>키워드1</p>
                           <input type="text" name="Keyword1" style="width: 94%">
                        </div>
                        <div class="register-row">
                           <p>키워드2</p>
                           <input type="text" name="Keyword2" style="width: 94%">
                        </div>
                        <div class="register-row">
                           <p>키워드3</p>
                           <input type="text" name="Keyword3" style="width: 94%">
                        </div>
                        <input type="file" id="fileUploadButton" name="fileName" size=40 onchange="uploadImg(this)" style="display: none;">
                     </div>
                     <button type="submit" class="site-btn">판매 등록</button>
                  </form>
               </div>
            </div>
         </div>
        </div>
    </section>
    <!-- Contact Section End -->

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
<!--             <div class="row"> -->
<!--                 <div class="col-lg-4 col-md-4"> -->
<!--                     <div class="footer__about"> -->
<!--                         <div class="footer__logo"> -->
<!--                             <a href="#"><img src="img/footer-logo.png" alt=""></a> -->
<!--                         </div> -->
<!--                         <p>Any questions? Let us know in store at 625 Gloria Union, California, United Stated or call us -->
<!--                             on (+1) 96 123 8888</p> -->
<!--                         <div class="footer__social"> -->
<!--                             <a href="#" class="facebook"><i class="fa fa-facebook"></i></a> -->
<!--                             <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> -->
<!--                             <a href="#" class="google"><i class="fa fa-google"></i></a> -->
<!--                             <a href="#" class="skype"><i class="fa fa-skype"></i></a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-lg-2 offset-lg-1 col-md-3"> -->
<!--                     <div class="footer__widget"> -->
<!--                         <h5>Infomation</h5> -->
<!--                         <ul> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Purchase</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Payemnt</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Shipping</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Return</a></li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-lg-2 col-md-3"> -->
<!--                     <div class="footer__widget"> -->
<!--                         <h5>Infomation</h5> -->
<!--                         <ul> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Hatchback</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Sedan</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> SUV</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Crossover</a></li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-lg-3 col-md-6"> -->
<!--                     <div class="footer__brand"> -->
<!--                         <h5>Top Brand</h5> -->
<!--                         <ul> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Abarth</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Acura</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Alfa Romeo</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Audi</a></li> -->
<!--                         </ul> -->
<!--                         <ul> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> BMW</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Chevrolet</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Ferrari</a></li> -->
<!--                             <li><a href="#"><i class="fa fa-angle-right"></i> Honda</a></li> -->
<!--                         </ul> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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