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
	/* String result = pre.equals("0") ? "���" : "����"; */
	%>
	<h1>
		����� ���ϴ� ��ǰ Ÿ����<%=pre%>�Դϴ�.
	</h1>



</body>
</html>