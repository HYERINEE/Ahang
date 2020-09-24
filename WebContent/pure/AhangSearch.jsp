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
th, td {
	padding: 15px;
}
</style>

<link href="./AhangSearch.css" rel="stylesheet">
</head>

<body>


	<!-- Add your content of header -->
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



	<!-- Add your content of header -->

	<form action="http://127.0.0.1:5000/" method='POST'>
		<div style="margin-left: 100px; margin-top: 100px;">
			<div>
				<table style="margin-left: 20px; margin-right: 20px;" width="400px;"
					height="200px" cellspacing="10">
					<tr>
						<select name="category">
							<option value="1" style="font-color: black;">카테고리</option>
							<option value="1">로션</option>
							<option value="2">오일</option>
							<option value="3">크림</option>
							<option value="4">워시</option>
						</select>
						<br>
					</tr>
					<!-- 알러지 성분 -->
					<tr>
						<td><input type="hidden" name="allergy_ingre" value="0">
							알러지 성분 있음<input type="radio" name="allergy" value="1"></td>
						<td></td>
						<td>알러지 성분 없음<input type="radio" name="allergy" value="0">
						</td>
					</tr>
					<tr>
						<td>아토피 좋은 성분<input type="radio" name="atopy" value="1"></td>
						<td></td>
						<td>아토피 안좋은 성분 <input type="radio" name="atopy" value="0">
						</td>
					</tr>
					<tr>
						<td>민감한 피부에 좋음<input type="radio" name="sensitivity"
							value="1"></td>
						<td></td>
						<td>민감한 피부에 안좋음<input type="radio" name="sensitivity"
							value="0">
						</td>
					</tr>
					<tr>
					</tr>
					<tr>
						<td align="right"><input type="submit" value="검        색"
							class="btn btn-primary"></td>
					</tr>
					</div>
				</table>
			</div>
	</form>


	<%
		String pre = request.getParameter("s");
	/* String result = pre.equals("0") ? "사망" : "생존"; */
	%>
	<h1>
		당신이 원하는 제품은   <%=pre%>
	</h1>


	<p class="controlls"></p>
	<div class="row">


		<div class="row section-container-spacer">
			<div class="col-xs-12">
				<div class="text-center" style="margin-top: 300px;">


					<h1>원하시는 상품이 없나요?</h1>
				</div>
				<div class="col-md-8 col-md-offset-2" style="padding-right: 5px">
					<p style="text-align: center;">
						귀하의 제품을 알려주세요 , 데이터 취합 후 빠른 시일에 제품이 추가가 됩니다!<br> 피부 타입별 민감도
						분석 후 해로운 성분을 배제하고 또한 유리한 성분을 조합하여 유사한 성분을 함유 되어 있는 제품 정보를 제공해드립니다.
					</p>

				</div>
			</div>
		</div>


	</div>


	<footer>
		<div class="section-container footer-container">
			<div class="container">
				<div class="row">
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
</body>

</html>