<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<style type="text/css">
		body{
			background-color: #A9D7CA;
		}
	
		div{
			position : absolute;
			top : 50%;
			left : 50%;
			background: white;
			border-radius: 15px;
			height: 400px;
			width: 360px;
			margin-left: -200px;
			margin-top: -180px;
			
		}
		
		#log{
			border: none;
			height: 30px;
			width: 205px;
			border-radius:5px;
			background: :linear-gradient(to right, yellow, green);
		}
	
		input {
			display:block;
			margin:0 auto;
			width:200px;
			height: 30px;
			border-style:none;
			border-bottom: solid 1px #A9D7CA;
			border-collapse: collapse;
			}
	
		h1{
			text-align: center;
			padding-top: 50px;
		}
		
		p{
			
			text-align: center;
			line-height: 400%;
		}
		
		
	</style>

</head>
<body>

	<form action="">
		
		<div>
			<h1>Login</h1>
			<input type="text" value="ID"/><br/>
			<input type="password" value="PW"/><br>
			<input type="submit" value="LOG IN" id="log"/>
			
			<p>회원이 아니신가요? <a href="#"> 회원가입 하기</a></p>
			
		</div>	
	</form>

</body>
</html>