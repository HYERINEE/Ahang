<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>



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
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var teg = $("#movie")
		$("#movie").mouseover(function() {
			teg.stop().animate({
				height : '400px'
			}, 300);

		});
		$("#movie").mouseout(function() {
			teg.stop().animate({
				height : '30px'
			}, 300);
		});

	});
</script>


</head>
<body>
<head>
<head>
<title>Dopetrope by HTML5 UP</title>
<meta charset="utf-8" />
<!--css 연결 시작 -->
<link rel="stylesheet" href="../assets/css/Category.css" />
<!--css 연결 끝 -->
</head>

<!-- Logo 시작 -->
<nav class="top_total">
	<div id="top_menu_bar" style="height: 150px;">
		<a href=""> <img src="mainLogo.PNG" width="300" height="150" /></a>
		<!-- Logo 끝 -->


	</div>

	<ul class="top_menu_content_bar">

		<il> <a href="">로그인</a></il>
		<il> <a href="">회원가입</a></il>
		<il> <a href="">마이페이지</a></il>
		<il> <a href="">리뷰</a></il>
		<il> <a href="">QnA</a></il>

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

<nav class="top_total2">

	<div>
		<ul class="top_menu_content_bar_down">
			<h1
				style="margin-top: 0%; margin-left: 30px; margin-right: 50px; margin-bottom: 0px">전체메뉴</h1>
			<!--  
			<ul id="first_menu">
				<il> <a href="first_menu_choice">워시</a>
				
					<il><a herf="">테스트 1 </a></il>
					

			
				</il>
				<il> <a href="">로션</a>
				<ul id="">
					<il>
					<a herf="">테스트 1 </a></il>
					<il>
					<a herf="">테스트 2 </a></il>
					<il>
					<a herf="">테스트 3 </a></il>

				</ul>
				
				</il>
				<il> <a href="">오일</a>
				<ul id="">
					<il>
					<a herf="">테스트 1 </a></il>
					<il>
					<a herf="">테스트 2 </a></il>
					<il>
					<a herf="">테스트 3 </a></il>

				</ul>

				</il>
				<il> <a href="">크림</a>
				<ul id="">
					<il>
					<a herf="">테스트 1 </a></il>
					<il>
					<a herf="">테스트 2 </a></il>
					<il>
					<a herf="">테스트 3 </a></il>

				</ul>

				</il>
			</ul>
-->
		</ul>

	</div>

	<table>

		<tr>
			<td><input type="text" id="serch"
				style="width: 400px; height: 50px;" /> <input type="button"
				value="검색" style="height: 50px;" /></td>
		</tr>

	</table>
</nav>


<header id="movie">
	<nav style="margin-left: 150px;">
		<ul id="menu_side">
			<il> <a href="" class="load" id="test">컨텐츠1</a>
			<ul>
				<p>
					<il> <a href="">컨텐츠1-1</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-2</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-3</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-4</a></il>
				</p>
			</ul>

			</il>

			<il> <a href="" class="load">컨텐츠2</a>
			<ul>
				<p>
					<il> <a href="">컨텐츠1-1</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-2</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-3</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-4</a></il>
				</p>
			</ul>

			</il>


			<il> <a href="" class="load">컨텐츠3</a>
			<ul>
				<p>
					<il> <a href="">컨텐츠1-1</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-2</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-3</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-4</a></il>
				</p>
			</ul>

			</il>


			<il> <a href="" class="load">컨텐츠4</a>
			<ul>
				<p>
					<il> <a href="">컨텐츠1-1</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-2</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-3</a></il>
				</p>
				<p>
					<il> <a href="">컨텐츠1-4</a></il>
				</p>
			</ul>

			</il>

			<!--  
	<il><a href="">컨텐츠2</a>
	<ul>
		<il><a href="">컨텐츠2-1</a></il>
		<il><a href="">컨텐츠2-2</a></il>
		<il><a href="">컨텐츠2-3</a></il>
		</ul>
	</il> 
	<il><a href="">컨텐츠3</a>
	<ul>
		<il><a href="">컨텐츠3-1</a></il>
		<il><a href="">컨텐츠3-2</a></il>
		<il><a href="">컨텐츠3-3</a></il>
		</ul>
	</il> 
	<il><a href="">컨텐츠4</a>
	<ul>
		<il><a href="">컨텐츠4-1</a></il>
		<il><a href="">컨텐츠4-2</a></il>
		<il><a href="">컨텐츠4-3</a></il>
		</ul>
	</il> 
	
-->

		</ul>
	</nav>

</header>


</body>
</html>