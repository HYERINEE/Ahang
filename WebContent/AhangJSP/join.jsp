<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style type="text/css">

	h1{
			text-align: center;
			padding-top: 50px;
		}

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
		#join{
			border: none;
			height: 30px;
			width: 205px;
			border-radius:5px;
			background-color:#A9D7CA;
		}

		input {
			outline-style:none;
			display:block;
			margin:0 auto;
			width:200px;
			height: 30px;
			border-style:none;
			border-bottom: solid 1px #A9D7CA;
			border-collapse: collapse;
			}

</style>


</head>
<body>


	<form action="">

		<div>
			<h1>회원가입</h1>

			<input type="text" placeholder="아이디 입력" required="required" /><br />
			<input type="password" placeholder="패스워드 입력" required="required" /><br>
			<input type="text" placeholder="이름 입력" required="required" /><br /> 
			<input type="number" placeholder="나이 입력" required="required" /><br /> 
			<input type="text" placeholder="전화번호 입력" required="required" /><br />
			<input type="submit" value="가입하기" id="join" />





		</div>
	</form>






</body>
</html>