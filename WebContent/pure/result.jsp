<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 
	Flask 서버에서 전송한 결과값을 꺼내서 사용자에게 보여준다.(0 or 1값이 수신된다.)
	이미지를 바꿔도되고, 글자를 바꿔도되고 결과물에 대한 디자인은 여러분 맘대로~!!
 -->
<% 
	String pre = request.getParameter("s"); 
	/* String result = pre.equals("0") ? "사망" : "생존"; */
%>
<h1>당신이 원하는 제품 타입은 <%= pre %> 입니다.</h1>
</body>
</html>




