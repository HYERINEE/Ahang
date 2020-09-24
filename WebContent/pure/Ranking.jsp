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

<style>
.pricing-card {
	background: #ddd;
	padding: 5rem 3rem;
	text-align: center;
}
</style>


<link href="./Category.css" rel="stylesheet">
</head>

<body>

	<%
		BabyMemberDAO dao = new BabyMemberDAO();
	ArrayList<Total_modelVO> list = dao.CaCream();
	request.setAttribute("list", list);
	ArrayList<Total_modelVO> list1 = dao.CaLotion();
	request.setAttribute("list1", list1);
	ArrayList<Total_modelVO> list2 = dao.CaOil();
	request.setAttribute("list2", list2);
	ArrayList<Total_modelVO> list3 = dao.CaWash();
	request.setAttribute("list3", list3);
	ArrayList<Total_modelVO> list4 = dao.CaAllOrderby();
	request.setAttribute("list4", list4);

	String num = request.getParameter("num");
	Total_modelVO vo = dao.CaAll(num);

	String num2 = request.getParameter("num2");
	Total_modelVO vo2 = dao.CaRank(num2);
	%>


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
					<a class="navbar-brand" href="./AhangHome.html" title=""> <img
						src="./assets/images/mashuptemplate.svg" class="navbar-logo-img"
						alt="">
					</a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse-uarr">
					<ul class="nav navbar-nav navbar-right">
						<li align="center"><a href="./AhangHome.html" title=""
							class="active"> Home </a></li>
						<li><a href="./AhangAbout.html" title=""> 기업소개 </a></li>
						<li><a href="./Category.jsp" title=""> 카테고리 </a></li>
						<li><a href="./Ranking.jsp" title=""> 안전등급별 제품 </a></li>
						<li><a href="./AhangType.html" title=""> 피부타입별 제품 </a></li>
						<li>
							<p>
								<a href="#"
									onclick="window.open('LoginHJ.html','_blank','width=550 height=600 top=200 left=650')"
									class="btn btn-primary navbar-btn" title=""> Login </a>
							</p>
						</li>

					</ul>
				</div>
			</div>
		</nav>
	</header>



	<!-- 안내글 -->
	<div class="section-container">
		<div class="col-xs-12" style="background-color: white;">
			<div class="text-center"></div>
			<div class="col-md-8 col-md-offset-2" style="padding-right: 5px">
				<p align="center">
					아기안전본부는 EWG등급만으로는 부족하기에 국내외 10가지의 화학물질 유해성 데이터를 통해 성분의 유해성을 판단합니다.<br>
					공신력 있는 기관에서 제시한 자료와 실질적으로 제품의 유해성으로 연결될 수 있는 데이터만 보여드리기위해 노력합니다
				</p>
			</div>
		</div>

		<div class="container"
			style="margin-top: 19px; background-color: rgb(240, 249, 247); padding-top: 24px; padding-left: 15px;">
			<div class="row section-container-spacer"></div>

			<!-- 로션 -->

			<div class="row">
				<div class="col-md-4" style="width: 23%;">
					<a href="CaLotion.jsp" style="list-style: none;">
						<div class="pricing-card pricing-primary">
							<h3>로션</h3>
							<h6 class="price">
								<span>TOP</span>3

							</h6>
					</a>
				</div>


			</div>


			<!-- 제품순위목록 -->
			<!-- 1번째 -->

			<div class="row">
				<c:forEach var="vo" items="${list1}" begin="0" end="2" step="1">
					<div class="col-md-4">
						<div class="pricing-card pricing-primary"
							style="padding: 0px; background-color: white; height: 400px; width: 250;">
							<div class="lotion_rank1" href="./AhangHome.html" title="">
								<a href="ProductDetail.jsp?num=${vo.num}"> <img
									src="${vo.filecontent}${vo.filename}" class="lotion_rank1-img"
									alt="" style="height: 300px; width: 250px;">
								</a>
							</div>
							<span
								style="margin: 0px 0px 5px; font-family: sans-serif; font-size: 17px; color: rgb(143, 143, 143);">
								${vo.brand_id}</span><br> <span style="font-size: 17px;">${vo.model_id}</span>
							</h6>
							<div class="rank1_bar bar1"
								style="margin: 0px auto; width: 234.6px; height: 3px; border-top: 0.5px solid rgb(141, 158, 186);"></div>
							<div class="star">
								<img src="./assets/images/star.svg"> <img
									src="./assets/images/star.svg"> <img
									src="./assets/images/star.svg"> <img
									src="./assets/images/star.svg"> <img
									src="./assets/images/star.svg">
							</div>
						</div>
						<div class="rank_feature1" align="center">
							<ul class="features" style="margin-bottom: 20px;">
							</ul>
							<a href="AhangProduct.html" class="btn btn-primary" title=""
								style="margin-left: 0px;">둘러보기</a>
						</div>

					</div>

				</c:forEach>

			</div>


			<!-- 여기서부터 복사하기 -->
			<div class="container"
				style="margin-top: 19px; background-color: rgb(240, 249, 247); padding-top: 24px; padding-left: 15px;">
				<div class="row section-container-spacer"></div>

				<!-- 오일 -->

				<div class="row">
					<div class="col-md-4" style="width: 23%;">
						<a href="CaLotion.jsp" style="list-style: none;">
							<div class="pricing-card pricing-info">
								<h3>오일</h3>
								<h6 class="price">
									<span>TOP</span>3

								</h6>
						</a>
					</div>


				</div>


				<!-- 제품순위목록 -->
				<!-- 2번째 -->

				<div class="row">
					<c:forEach var="vo" items="${list2}" begin="0" end="2" step="1">
						<div class="col-md-4">
							<div class="pricing-card pricing-primary"
								style="padding: 0px; background-color: white; height: 400px; width: 250;">
								<div class="lotion_rank1" href="./AhangHome.html" title="">
									<a href="ProductDetail.jsp?num=${vo.num}"> <img
										src="${vo.filecontent}${vo.filename}" class="lotion_rank1-img"
										alt="" style="height: 300px; width: 250px;">
									</a>
								</div>
								<span
									style="margin: 0px 0px 5px; font-family: sans-serif; font-size: 17px; color: rgb(143, 143, 143);">
									${vo.brand_id}</span><br> <span style="font-size: 17px;">${vo.model_id}</span>
								</h6>
								<div class="rank1_bar bar1"
									style="margin: 0px auto; width: 234.6px; height: 3px; border-top: 0.5px solid rgb(141, 158, 186);"></div>
								<div class="star">
									<img src="./assets/images/star.svg"> <img
										src="./assets/images/star.svg"> <img
										src="./assets/images/star.svg"> <img
										src="./assets/images/star.svg"> <img
										src="./assets/images/star.svg">
								</div>
							</div>
							<div class="rank_feature1" align="center">
								<ul class="features" style="margin-bottom: 20px;">
								</ul>
								<a href="AhangProduct.html" class="btn btn-primary" title=""
									style="margin-left: 0px;">둘러보기</a>
							</div>

						</div>

					</c:forEach>

				</div>

				<!-- 여기서부터 복사하기 -->
				<div class="container"
					style="margin-top: 19px; background-color: rgb(240, 249, 247); padding-top: 24px; padding-left: 15px;">
					<div class="row section-container-spacer"></div>

					<!-- 워시 -->

					<div class="row">
						<div class="col-md-4" style="width: 23%;">
							<a href="CaLotion.jsp" style="list-style: none;">
								<div class="pricing-card pricing-secondary">
									<h3>워시</h3>
									<h6 class="price">
										<span>TOP</span>3

									</h6>
							</a>
						</div>


					</div>


					<!-- 제품순위목록 -->
					<!-- 3번째 -->

					<div class="row">
						<c:forEach var="vo" items="${list3}" begin="0" end="2" step="1">
							<div class="col-md-4">
								<div class="pricing-card pricing-primary"
									style="padding: 0px; background-color: white; height: 400px; width: 250;">
									<div class="lotion_rank1" href="./AhangHome.html" title="">
										<a href="ProductDetail.jsp?num=${vo.num}"> <img
											src="${vo.filecontent}${vo.filename}"
											class="lotion_rank1-img" alt=""
											style="height: 300px; width: 250px;">
										</a>
									</div>
									<span
										style="margin: 0px 0px 5px; font-family: sans-serif; font-size: 17px; color: rgb(143, 143, 143);">
										${vo.brand_id}</span><br> <span style="font-size: 17px;">${vo.model_id}</span>
									</h6>
									<div class="rank1_bar bar1"
										style="margin: 0px auto; width: 234.6px; height: 3px; border-top: 0.5px solid rgb(141, 158, 186);"></div>
									<div class="star">
										<img src="./assets/images/star.svg"> <img
											src="./assets/images/star.svg"> <img
											src="./assets/images/star.svg"> <img
											src="./assets/images/star.svg"> <img
											src="./assets/images/star.svg">
									</div>
								</div>
								<div class="rank_feature1" align="center">
									<ul class="features" style="margin-bottom: 20px;">
									</ul>
									<a href="AhangProduct.html" class="btn btn-primary" title=""
										style="margin-left: 0px;">둘러보기</a>
								</div>

							</div>

						</c:forEach>

					</div>

					<!-- 여기서부터 복사하기 -->
					<div class="container"
						style="margin-top: 19px; background-color: rgb(240, 249, 247); padding-top: 24px; padding-left: 15px;">
						<div class="row section-container-spacer"></div>

						<!-- 크림 -->

						<div class="row">
							<div class="col-md-4" style="width: 23%;">
								<a href="CaLotion.jsp" style="list-style: none;">
									<div class="pricing-card pricing-info">
										<h3>크림</h3>
										<h6 class="price">
											<span>TOP</span>3

										</h6>
								</a>
							</div>


						</div>


						<!-- 제품순위목록 -->
						<!-- 3번째 -->

						<div class="row">
							<c:forEach var="vo" items="${list}" begin="0" end="2" step="1">
								<div class="col-md-4">
									<div class="pricing-card pricing-primary"
										style="padding: 0px; background-color: white; height: 400px; width: 250;">
										<div class="lotion_rank1" href="./AhangHome.html" title="">
											<a href="ProductDetail.jsp?num=${vo.num}"> <img
												src="${vo.filecontent}${vo.filename}"
												class="lotion_rank1-img" alt=""
												style="height: 300px; width: 250px;">
											</a>
										</div>
										<span
											style="margin: 0px 0px 5px; font-family: sans-serif; font-size: 17px; color: rgb(143, 143, 143);">
											${vo.brand_id}</span><br> <span style="font-size: 17px;">${vo.model_id}</span>
										</h6>
										<div class="rank1_bar bar1"
											style="margin: 0px auto; width: 234.6px; height: 3px; border-top: 0.5px solid rgb(141, 158, 186);"></div>
										<div class="star">
											<img src="./assets/images/star.svg"> <img
												src="./assets/images/star.svg"> <img
												src="./assets/images/star.svg"> <img
												src="./assets/images/star.svg"> <img
												src="./assets/images/star.svg">
										</div>
									</div>
									<div class="rank_feature1" align="center">
										<ul class="features" style="margin-bottom: 20px;">
										</ul>
										<a href="AhangProduct.html" class="btn btn-primary" title=""
											style="margin-left: 0px;">둘러보기</a>
									</div>

								</div>

							</c:forEach>

						</div>






						<!-- 화이트박스 -->
						<div class="text-center">
							<h2 style="color: white;">Vivamus laoreet</h2>
							<p style="color: white;">
								Auctor augue mauris augue neque. Posuere lorem ipsum dolor sit
								amet consectetur adipiscing.<br> Porta non pulvinar neque
								laoreet. Viverra ipsum nunc aliquet bibendum.
							</p>


							<p class="controlls">
								<input type="button" value="이전으로 " class="prev"> <input
									type="button" value="다음으로 " class="next">
							</p>
							<div class="row">


								<div class="row section-container-spacer">
									<div class="col-xs-12">
										<div class="text-center" style="margin-top: 300px;">


											<h1>원하시는 상품이 없나요?</h1>
										</div>
										<div class="col-md-8 col-md-offset-2"
											style="padding-right: 5px; margin-bottom: 100px;">
											<h4 align="center">
												귀하의 제품을 알려주세요 , 데이터 취합 후 빠른 시일에 제품이 추가가 됩니다!<br> <br>
												피부 타입별 민감도 분석 후 제품별 안정등급의 순위를 정해<br> <br> 피부에 안전한
												성분이 함유되어 있는 제품의 정보를 제공해드립니다.
											</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>


				<footer>
					<div class="section-container footer-container">
						<div class="container">
							<div class="row">
								<div id="slide_menu">
									<div class="col-md-4">
										<h4>About us</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit. Nunc sit amet consectetur dolor</p>
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
												href="http://www.mashup-template.com/"
												class="link-like-text"
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
													<button type="button"
														class="btn btn-primary btn-newsletter ">OK</button>
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
					document.addEventListener("DOMContentLoaded", function(
							event) {
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
</body>

</html>