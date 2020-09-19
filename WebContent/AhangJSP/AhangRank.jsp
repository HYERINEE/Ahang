<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>
<style>
.lii {
	float : left;
	margin : 30px;
}

</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<title>Dopetrope by HTML5 UP</title>

<meta charset="utf-8" />
<!--css 연결 시작 -->
<link rel="stylesheet" href="../assets/css/AhangMain.css" />
<!--css 연결 끝 -->
</head>

<!-- Logo 시작 -->
<nav class="top_total">
	<div id="top_menu_bar" style="height: 150px;">
		<a href=""> <img src="mainLogo.PNG" width="300" height="150" /></a>
		<!-- Logo 끝 -->


	</div>
	<!-- 탑 메뉴 바 -로그인 회원가입 마이페이지 QnA -->
	<ul class="top_menu_content_bar">

		<il> <a href="login_hj.jsp">로그인</a></il>
		<il> <a href="join.jsp">회원가입</a></il>
		<il> <a href="mypage.jsp">마이페이지</a></il>
		<il> <a href="qna.jsp">QnA</a></il>

	</ul>


</nav>

<nav class="top_total2">

	<div>
		<ul class="top_menu_content_bar_down">
			<h1
				style="margin-top: 0%; margin-left: 30px; margin-right: 50px; margin-bottom: 0px">전체메뉴</h1>

			<ul>
				<li class = "lii"> <a href="AhangMain.jsp">HOME</a></li>
				 
				<li class = "lii"> <a href="AhangCategory.jsp">카테고리</a>
				
				<ul>
					<li><a href="#">워시</a></li>
					<li><a href="#">오일</a></li>
					<li><a href="#">로션</a></li>
					<li><a href="#">크림</a></li>
				</ul>
			
				
				 	</li>
				<li class = "lii" > <a href="AhangRank.jsp">안전등급별 제품</a>
				<ul>
					<li><a href="#">1등급</a></li>
					<li><a href="#">2등급</a></li>
					<li><a href="#">3등급</a></li>
				</ul>
				</li>
				<li class = "lii"> <a href="AhangType.jsp">피부타입별 제품</a>
				<ul>
					<li><a href="#">알러지</a></li>
					<li><a href="#">아토피</a></li>
					<li><a href="#">민감성</a></li>
				</ul>
				</li>
			</ul>

		</ul>

	</div>

	<input type="text" id="serch" /><input type="button" value="검색" />

</nav>








</body>
</html>