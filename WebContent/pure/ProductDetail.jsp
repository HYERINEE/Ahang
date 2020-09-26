<%@page import="baby.model.Total_modelVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="baby.model.BabyMemberDAO"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

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

<link href="./Product100.css" rel="stylesheet">


<style type="text/css">
	.review_textarea{
		line-height: 15px;
		display: inline;
		
	}

</style>





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

	<% String sr = vo.getIngredient();
		sr = sr.trim();
		String[] ingre = sr.split("\\+");
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
					<a class="navbar-brand" href="./AhangHome_loginBx.html" title=""> <img
						src="./assets/images/mashuptemplate.svg" class="navbar-logo-img"
						alt="">
					</a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse-uarr">
					<ul class="nav navbar-nav navbar-right">
						<li align="center"><a href="./AhangHome_loginBx.html" title=""
							class="active"> Home </a></li>
						<li><a href="./AhangAbout.html" title=""> 기업소개 </a></li>
						<li><a href="./Category.jsp" title=""> 카테고리 </a></li>
						<li><a href="./Ranking.jsp" title=""> 안전등급별 제품 </a></li>
						<li><a href="./AhangSearch.jsp" title=""> 추천제품 </a></li>
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
		<div class="container"
			style="margin-top: 19px; padding-top: 24px; padding-left: 15px;">
			<div class="row section-container-spacer">
				<div class="col-xs-12" style="background-color: white;">
					<div class="text-center">
						<h1>안전합니다!</h1>
					</div>
					<div class="col-md-8 col-md-offset-2" style="padding-right: 5px">
						<p>각 제품의 성분들을 하나도 빠짐없이 취합하여 분석합니다. 피부 타입별 민감도 분석 후 해로운 성분을
							배제하고</p>
						<p class="text-center">또한 유리한 성분을 조합하여 유사한 성분을 함유 되어 있는 제품 정보를
							제공해드립니다.</p>
					</div>
				</div>
			</div>


			<!-- 사진란 -->
			<div class="row">
				<div class="col-md-4">
					<div class="pricing-card pricing-primary"
						style="padding-top: 70px; background-color: white; height: 450px; width: 250; box-shadow: rgb(232, 232, 232);">
						<div class="oil_rank1" href="./AhangHome.html" title="">
							<a href="product.html?num=1"> <img
								src="<%=vo.getFilecontent()%><%=vo.getFilename()%>"
								class="oil_rank1-img" alt=""
								style="height: 300px; width: 250px;">
							</a>
						</div>
						<span
							style="margin: 0px 0px 5px; font-family: sans-serif; font-size: 17px; color: rgb(143, 143, 143);">
							<%=vo.getBrand_id()%></span><br> <span style="font-size: 20px;"><%=vo.getModel_id()%></span>
						</h6>
						<div class="rank1_bar bar1"
							style="margin: 0px auto; width: 280px; height: 5px; border-top: 0.5px solid rgb(141, 158, 186);"></div>
						<div class="rank_score" style="font-size: 20px; align: center;">
							아기안전본부내 안전성분 순위<br> <%=vo.getRank()%>위
						</div>
					</div>
				</div>

			<!--vo.getIngredient() -->
				<textarea
					style="width: 454px; height: 209px; margin-right: 70px; margin-left: 50px; padding-top: 30px; padding-left: 10px; border-left-width: 1px; border-right-width: 1px;"
					rows="5" class="review_textarea">
	<% for(String i:ingre){%>
	<%=i %>
	<% } %>
				</textarea>

				<!-- 리뷰작성란 -->
				<div class="wrap"
					style="width: 500px; height: 540px; margin-right: 0px; margin-left: 400px; padding-top: 30px;">
					<div style="margin-bottom: 5px; font-size: 35px; margin-top: 30px;">후기</div>
					<form name="reviewform" class="reviewform" method="post"
						action="/save">
						<input type="hidden" name="rate" id="rate" value="0" />
						<p class="title_star">별점과 리뷰를 남겨주세요.</p>
						<div class="review_rating">
							<div class="warning_msg">별점을 선택해 주세요.</div>
							<div class="rating">
								<!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
								<input type="checkbox" name="rating" id="rating1" value="1"
									class="rate_radio" title="1점"> <label for="rating1"></label>
								<input type="checkbox" name="rating" id="rating2" value="2"
									class="rate_radio" title="2점"> <label for="rating2"></label>
								<input type="checkbox" name="rating" id="rating3" value="3"
									class="rate_radio" title="3점"> <label for="rating3"></label>
								<input type="checkbox" name="rating" id="rating4" value="4"
									class="rate_radio" title="4점"> <label for="rating4"></label>
								<input type="checkbox" name="rating" id="rating5" value="5"
									class="rate_radio" title="5점"> <label for="rating5"></label>
							</div>
						</div>
						<div class="review_contents">
							<div class="warning_msg">5자 이상으로 작성해 주세요.</div>
							<textarea rows="5" class="review_textarea"></textarea>
						</div>
						<div class="cmd">
							<!-- 작성일자 기능구현 -->
							<p></p>
							<input type="button" name="save" id="save" value="등록">
						</div>
					</form>
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
	<script type="text/javascript" src="../js/star.js"></script>
</body>

</html>