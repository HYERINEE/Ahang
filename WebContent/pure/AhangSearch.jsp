<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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

<link href="./AhangSearch.css" rel="stylesheet">
</head>

<body>


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
						<li><a href="./AhangAbout.html" title=""> ����Ұ� </a></li>
						<li><a href="./AhangCategory.html" title=""> ī�װ� </a></li>
						<li><a href="./AhangRanking.html" title=""> ������޺� ��ǰ </a></li>
						<li><a href="./AhangType.html" title=""> �Ǻ�Ÿ�Ժ� ��ǰ </a></li>
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

		<form action="http://127.0.0.1:5000/" method= 'POST'>
			<div style="margin-left: 100px; margin-top: 100px;">
				<div>
					<select name="category">
						<option value="1" style="font-color: black;">ī�װ�</option>
						<option value="1">�μ�</option>
						<option value="2">����</option>
						<option value="3">ũ��</option>
						<option value="4">����</option>
					</select> 
					<br>
						<!-- �˷��� ���� -->
						<input type="hidden" name="allergy_ingre" value="0">
						<br/>
						�˷��� ����<input type="radio" name="allergy" value="1">
						�˷��� ����<input type="radio" name="allergy" value="0">
						<br/>
					
						
						�����ǿ� ����<input type="radio" name="atopy" value="1">
						�����ǿ� ���� ���о���<input type="radio" name="atopy" value="0">
						<br/>
						
						�ΰ��� �Ǻο� ����<input type="radio" name="sensitivity" value="1">
						�ΰ��� �Ǻ�X<input type="radio" name="sensitivity" value="0">
						
						<br/>
							
					<input type="submit" value="�˻�">
				</div>
			</div>

		</form>
	
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