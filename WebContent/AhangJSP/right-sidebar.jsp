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
<!--css ���� ���� -->
<link rel="stylesheet" href="../assets/css/Category.css" />
<!--css ���� �� -->
</head>

<!-- Logo ���� -->
<nav class="top_total">
	<div id="top_menu_bar" style="height: 150px;">
		<a href=""> <img src="mainLogo.PNG" width="300" height="150" /></a>
		<!-- Logo �� -->


	</div>

	<ul class="top_menu_content_bar">

		<il> <a href="">�α���</a></il>
		<il> <a href="">ȸ������</a></il>
		<il> <a href="">����������</a></il>
		<il> <a href="">����</a></il>
		<il> <a href="">QnA</a></il>

	</ul>


</nav>

<nav class="top_total2">

	<div>
		<ul class="top_menu_content_bar_down">
			<h1
				style="margin-top: 0%; margin-left: 30px; margin-right: 50px; margin-bottom: 0px">��ü�޴�</h1>

			<ul>
				<li class = "lii"> <a href="AhangMain.jsp">HOME</a></li>
				 
				<li class = "lii"> <a href="AhangCategory.jsp">ī�װ�</a>
				
				<ul>
					<li><a href="#">����</a></li>
					<li><a href="#">����</a></li>
					<li><a href="#">�μ�</a></li>
					<li><a href="#">ũ��</a></li>
				</ul>
			
				
				 	</li>
				<li class = "lii" > <a href="AhangRank.jsp">������޺� ��ǰ</a>
				<ul>
					<li><a href="#">1���</a></li>
					<li><a href="#">2���</a></li>
					<li><a href="#">3���</a></li>
				</ul>
				</li>
				<li class = "lii"> <a href="AhangType.jsp">�Ǻ�Ÿ�Ժ� ��ǰ</a>
				<ul>
					<li><a href="#">�˷���</a></li>
					<li><a href="#">������</a></li>
					<li><a href="#">�ΰ���</a></li>
				</ul>
				</li>
			</ul>

		</ul>

	</div>

	<input type="text" id="serch" /><input type="button" value="�˻�" />

</nav>

<nav class="top_total2">

	<div>
		<ul class="top_menu_content_bar_down">
			<h1
				style="margin-top: 0%; margin-left: 30px; margin-right: 50px; margin-bottom: 0px">��ü�޴�</h1>
			<!--  
			<ul id="first_menu">
				<il> <a href="first_menu_choice">����</a>
				
					<il><a herf="">�׽�Ʈ 1 </a></il>
					

			
				</il>
				<il> <a href="">�μ�</a>
				<ul id="">
					<il>
					<a herf="">�׽�Ʈ 1 </a></il>
					<il>
					<a herf="">�׽�Ʈ 2 </a></il>
					<il>
					<a herf="">�׽�Ʈ 3 </a></il>

				</ul>
				
				</il>
				<il> <a href="">����</a>
				<ul id="">
					<il>
					<a herf="">�׽�Ʈ 1 </a></il>
					<il>
					<a herf="">�׽�Ʈ 2 </a></il>
					<il>
					<a herf="">�׽�Ʈ 3 </a></il>

				</ul>

				</il>
				<il> <a href="">ũ��</a>
				<ul id="">
					<il>
					<a herf="">�׽�Ʈ 1 </a></il>
					<il>
					<a herf="">�׽�Ʈ 2 </a></il>
					<il>
					<a herf="">�׽�Ʈ 3 </a></il>

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
				value="�˻�" style="height: 50px;" /></td>
		</tr>

	</table>
</nav>


<header id="movie">
	<nav style="margin-left: 150px;">
		<ul id="menu_side">
			<il> <a href="" class="load" id="test">������1</a>
			<ul>
				<p>
					<il> <a href="">������1-1</a></il>
				</p>
				<p>
					<il> <a href="">������1-2</a></il>
				</p>
				<p>
					<il> <a href="">������1-3</a></il>
				</p>
				<p>
					<il> <a href="">������1-4</a></il>
				</p>
			</ul>

			</il>

			<il> <a href="" class="load">������2</a>
			<ul>
				<p>
					<il> <a href="">������1-1</a></il>
				</p>
				<p>
					<il> <a href="">������1-2</a></il>
				</p>
				<p>
					<il> <a href="">������1-3</a></il>
				</p>
				<p>
					<il> <a href="">������1-4</a></il>
				</p>
			</ul>

			</il>


			<il> <a href="" class="load">������3</a>
			<ul>
				<p>
					<il> <a href="">������1-1</a></il>
				</p>
				<p>
					<il> <a href="">������1-2</a></il>
				</p>
				<p>
					<il> <a href="">������1-3</a></il>
				</p>
				<p>
					<il> <a href="">������1-4</a></il>
				</p>
			</ul>

			</il>


			<il> <a href="" class="load">������4</a>
			<ul>
				<p>
					<il> <a href="">������1-1</a></il>
				</p>
				<p>
					<il> <a href="">������1-2</a></il>
				</p>
				<p>
					<il> <a href="">������1-3</a></il>
				</p>
				<p>
					<il> <a href="">������1-4</a></il>
				</p>
			</ul>

			</il>

			<!--  
	<il><a href="">������2</a>
	<ul>
		<il><a href="">������2-1</a></il>
		<il><a href="">������2-2</a></il>
		<il><a href="">������2-3</a></il>
		</ul>
	</il> 
	<il><a href="">������3</a>
	<ul>
		<il><a href="">������3-1</a></il>
		<il><a href="">������3-2</a></il>
		<il><a href="">������3-3</a></il>
		</ul>
	</il> 
	<il><a href="">������4</a>
	<ul>
		<il><a href="">������4-1</a></il>
		<il><a href="">������4-2</a></il>
		<il><a href="">������4-3</a></il>
		</ul>
	</il> 
	
-->

		</ul>
	</nav>

</header>


</body>
</html>