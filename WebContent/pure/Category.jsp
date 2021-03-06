<%@page import="baby.model.Total_modelVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="baby.model.BabyMemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width,initial-scale=1" name="viewport">
<meta content="description" name="description">
<meta name="google" content="notranslate" />
<meta content="Mashup templates have been developped by Orson.io team"
	name="author">

<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">

<link href="./assets/apple-touch-icon.png" rel="apple-touch-icon">
<link href="./assets/favicon.ico" rel="icon">



<title>Title page</title>
<link rel="stylesheet" href="swiper.css" />


<link href="./Category.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function() {
		var teg = $("#btn")
		$("#btn").click(function() {
			teg.stop().animate({
				height : '400px'
			}, 300);

		});
		$("#movie").click(function() {
			teg.stop().animate({
				height : '30px'
			}, 300);
		});

	});
</script>
</head>

<body>

	<%
		BabyMemberDAO dao = new BabyMemberDAO();
	ArrayList<Total_modelVO> list = dao.CaLotion();
	request.setAttribute("list", list);
	%>

	<!-- Add your content of header -->
	<header>
		<nav class="navbar  navbar-fixed-top navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle uarr collapsed"
						data-toggle="collapse" data-target="#navbar-collapse-uarr">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="./AhangHome_loginBx.html" title="">
						<img src="./assets/images/mashuptemplate.svg"
						class="navbar-logo-img" alt="">
					</a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse-uarr">
					<ul class="nav navbar-nav navbar-right">
						<li align="center"><a href="./AhangHome_loginBx.html"
							title="" class="active"> Home </a></li>
						<li><a href="./AhangAbout.html" title=""> 기업소개 </a></li>
						<li><a href="./Category.jsp" title=""> 카테고리 </a></li>
						<li><a href="./Ranking.jsp" title=""> 안전등급별 제품 </a></li>
						<li><a href="./AhangSearch.jsp" title=""> 추천제품 </a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>





	<div class="section-container">
		<div class="container">
			<div class="row section-container-spacer">
				<div class="col-xs-12">
					<div class="col-md-8 col-md-offset-2" style="padding-right: 5px">
						<div class="text-center" align="right">
							<div align="right"
								style="height: 50px; width: 500px; background: #ffffff;">
								<input type="text" placeholder="검색어입력">
								<button align="right">검색</button>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<a href="CaLotion.jsp" style="list-style: none;">
						<div class="pricing-card pricing-primary">
							<h3>로션</h3>
							<h6 class="price">
								162<span>개</span>

							</h6>
					</a>
				</div>


			</div>
			<div class="col-md-4">
				<a href="CaOil.jsp" style="list-style: none;">
					<div class="pricing-card pricing-info">
						<h3>오일</h3>
						<h6 class="price">
							162<span>개</span>
						</h6>
				</a>

			</div>

		</div>
		<div class="col-md-4">
			<a href="CaCream.jsp" style="list-style: none;">
				<div class="pricing-card pricing-info">
					<h3>크림</h3>
					<h6 class="price">
						162<span>개</span>
					</h6>
			</a>
		</div>

	</div>
	<div class="col-md-4">
		<a href="CaWash.jsp" style="list-style: none;">
			<div class="pricing-card pricing-secondary">
				<h3>워시</h3>
				<h6 class="price">
					162<span>개</span>
				</h6>
		</a>
	</div>



	</div>

	</div>

	<!-- 화이트박스 -->
	<div class="text-center">
		<h2 style="color: white;">Vivamus laoreet</h2>





		<div class="text-center">
			<h1 style="margin-top: 200px;">이런 상품은 어떤가요?</h1>
		</div>
		<div class="col-md-8 col-md-offset-2" style="padding-right: 5px">
			<p class="text-center">민감한 우리 아이 피부 무슨 제품을 써야 하는지 고민하는 당신을 위해 준비해
				봤습니다.</p>

		</div>


		<div class="swiper-container" style="margin-top: 200px;">


			<!-- Additional required wrapper -->

			<div class="swiper-wrapper">



				<!-- Slides -->
				<div class="swiper-slide">
					<div class="pricing-card pricing-secondary">
						<h3>상품분류3</h3>
						<h6 class="price">
							<span>상품이름</span>
						</h6>
					</div>
					<div class="pricing-features" st>
						<ul class="features">
							<li>상품설명</li>
							<li>상품성분</li>
						</ul>
						<a href="contact.html" class="btn btn-primary" title="">둘러보기</a>
					</div>

				</div>


				<div class="swiper-slide">
					<div class="pricing-card pricing-secondary">
						<h3>상품분류4</h3>
						<h6 class="price">
							<span>상품이름</span>
						</h6>
					</div>
					<div class="pricing-features" st>
						<ul class="features">
							<li>상품설명</li>
							<li>상품성분</li>
						</ul>
						<a href="contact.html" class="btn btn-primary" title="">둘러보기</a>
					</div>
				</div>

				<div class="swiper-slide">
					<div class="pricing-card pricing-secondary">
						<h3>상품분류5</h3>
						<h6 class="price">
							<span>상품이름</span>
						</h6>
					</div>
					<div class="pricing-features" st>
						<ul class="features">
							<li>상품설명</li>
							<li>상품성분</li>
						</ul>
						<a href="contact.html" class="btn btn-primary" title="">둘러보기</a>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="pricing-card pricing-secondary">
						<h3>상품분류6</h3>
						<h6 class="price">
							<span>상품이름</span>
						</h6>
					</div>
					<div class="pricing-features" st>
						<ul class="features">
							<li>상품설명</li>
							<li>상품성분</li>
						</ul>
						<a href="contact.html" class="btn btn-primary" title="">둘러보기</a>
					</div>
				</div>


			</div>
			<div class="swiper-pagination"></div>

			<!-- If we need navigation buttons -->
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>




		</div>












		<p class="controlls"></p>
		<div class="row">


			<div class="row section-container-spacer">
				<div class="col-xs-12">
					<div class="text-center" style="margin-top: 300px;">


						<h1>원하시는 상품이 없나요?</h1>
					</div>
					<div class="col-md-8 col-md-offset-2" style="padding-right: 5px">
						<p>귀하의 제품을 알려주세요 , 데이터 취합 후 빠른 시일에 제품이 추가가 됩니다! 피부 타입별 민감도 분석
							후 해로운
						<p style="text-align: center;">성분을 배제하고 또한 유리한 성분을 조합하여 유사한
							성분을 함유 되어 있는 제품 정보를 제공해드립니다.</p>

					</div>
				</div>
			</div>


		</div>

		<div class="row" style="margin-top: 200px;">


			<div class="col-md-4">
				<div class="pricing-card pricing-secondary"
					style="width: 1100px; height: 1100px;">
					<h1 style="color: white;">알려주세요!</h1>
					<h6 class="price">
						<span>제품 이름</span>
						<div class="form-group">
							<div class="input-group"
								style="width: 700px; left: 200px; position: absolute;">
								<input type="text" class="form-control footer-input-text">
								<div class="input-group-btn">
									<button type="button" class="btn btn-primary btn-newsletter ">OK</button>
								</div>
							</div>
						</div>

						<span>제조 회사</span>
						<div class="form-group"
							style="width: 700px; left: 200px; position: absolute;">
							<div class="input-group">
								<input type="text" class="form-control footer-input-text">
								<div class="input-group-btn">
									<button type="button" class="btn btn-primary btn-newsletter ">OK</button>
								</div>
							</div>
						</div>

					</h6>
					<img src="choice.png"
						style="position: absolute; position: absolute; height: 700px; width: 700px; right: -300; top: 500px; left: 300\;left: 300px; left: 210px; height: 700px; width: 700px;" />
				</div>



			</div>


		</div>

	</div>





	<!-- -------------------------------
   
   
   
      <div id="carouselExampleIndicators" class="carousel slide"
         data-ride="carousel">

         <div class="carousel-inner" r="listbox">
            <div class="item active">
               <li class="img-responsive" alt="First slide">
                  <div class="pricing-card pricing-secondary">
                     <h3>상품분류4</h3>
                     <h6 class="price">
                        <span>상품이름</span>
                     </h6>
                  </div>
                  <div class="pricing-features" st>
                     <ul class="features">
                        <li>상품설명</li>
                        <li>상품성분</li>
                     </ul>
                     <a href="contact.html" class="btn btn-primary" title="">둘러보기</a>
                  </div>
               </li>
            </div>
            
            <div class="item">
            <li class="img-responsive" alt="Second slide">
                  <div class="pricing-card pricing-secondary">
                     <h3>상품분류5</h3>
                     <h6 class="price">
                        <span>상품이름</span>
                     </h6>
                  </div>
                  <div class="pricing-features" st>
                     <ul class="features">
                        <li>상품설명</li>
                        <li>상품성분</li>
                     </ul>
                     <a href="contact.html" class="btn btn-primary" title="">둘러보기</a>
                  </div>
               </li>
            </div>
            <div class="item">
            <li class="img-responsive" alt="Third slide">
                  <div class="pricing-card pricing-secondary">
                     <h3>상품분류6</h3>
                     <h6 class="price">
                        <span>상품이름</span>
                     </h6>
                  </div>
                  <div class="pricing-features" st>
                     <ul class="features">
                        <li>상품설명</li>
                        <li>상품성분</li>
                     </ul>
                     <a href="contact.html" class="btn btn-primary" title="">둘러보기</a>
                  </div>
               </li>
            </div>
         </div>
         <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0"
               class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
         </ol>
      </div>
      
      
      --------------------------------------------->











	<script src="swiper.min.js"></script>
	<script>
		var mySwiper = new Swiper('.swiper-container', {

			autoplay : {
				delay : 4000,
			},
			// Optional parameters
			direction : 'horizontal',
			loop : true,

			// If we need pagination
			pagination : {
				el : '.swiper-pagination',
			},

			// Navigation arrows
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

			// And if we need scrollbar
			scrollbar : {
				el : '.swiper-scrollbar',
			},
		})
	</script>







	</div>
	<footer>
		<div class="section-container footer-container">
			<div class="container">
				<div class="row">
					<div id="slide_menu">
						<div class="col-md-4">
							<h4>About us</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nunc sit amet consectetur dolor</p>
						</div>

						<div class="col-md-4">
							<h4>Do you like ? Share this !</h4>
							<p>
								<a href="https://facebook.com/"
									class="social-round-icon white-round-icon fa-icon" title="">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</a> <a href="https://twitter.com/"
									class="social-round-icon white-round-icon fa-icon" title="">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</a> <a href="https://www.linkedin.com/"
									class="social-round-icon white-round-icon fa-icon" title="">
									<i class="fa fa-linkedin" aria-hidden="true"></i>
								</a>
							</p>
							<p>
								<small>© Untitled | Website created with <a
									href="http://www.mashup-template.com/" class="link-like-text"
									title="Create website with free html template">Mashup
										Template</a>/<a href="http://www.unsplash.com/"
									class="link-like-text" title="Beautiful Free Images">Unsplash</a></small>
							</p>
						</div>

						<div class="col-md-4">
							<h4>Subscribe to newsletter</h4>

							<div class="form-group">
								<div class="input-group">
									<input type="text" class="form-control footer-input-text">
									<div class="input-group-btn">
										<button type="button" class="btn btn-primary btn-newsletter ">OK</button>
									</div>
								</div>
							</div>


						</div>
						</ul>
					</div>
				</div>
			</div>
	</footer>

	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			navActivePage();
		});
	</script>

	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID 

<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
  ga('create', 'UA-XXXXX-X', 'auto');
  ga('send', 'pageview');
</script>

-->

	<script type="text/javascript" src="./main.41beeca9.js"></script>
	<script src="./js/AhangCategory1.js"></script>
</body>

</html>