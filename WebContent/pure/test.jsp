
<%@page import="baby.model.BabyMemberDAO"%>
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
	 		BabyMemberDAO dao = new BabyMemberDAO();
			total_modelVO vo = dao.memberAllList();
			request.setAttribute("vo", vo); //${}사용
		
		%>
		<p>${vo.category}</p>
	

</body>
</html>