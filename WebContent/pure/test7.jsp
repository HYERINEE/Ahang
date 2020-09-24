<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		String pre = request.getParameter("s");
	/* String result = pre.equals("0") ? "사망" : "생존"; */
	%>
	<h1>
		당신이 원하는 제품 타입은<%=pre%>입니다.
	</h1>



</body>
</html>