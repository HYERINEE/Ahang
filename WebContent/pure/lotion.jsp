<%@page import="baby.model.Total_modelVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="baby.model.BabyMemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	BabyMemberDAO dao = new BabyMemberDAO();
	ArrayList<Total_modelVO> list = dao.CaLotion();		
	request.setAttribute("list", list);
	
	%>

	<table border="1px">
		<tr>
			<td>넘버</td>
			<td>브랜드</td>
			<td>제품명</td>
			<td>성분</td>
			<td>이미지</td>

		</tr>

		<c:forEach var="vo" items="${list}">
			<tr>
				<td>${vo.num}</td>
				<td>${vo.brand_id}</td>
				<td>${vo.model_id}</td>
				<td>	
					<c:set var="s" value="${vo.ingredient}"/>
					<c:forEach var="c" items="${fn:split(s,'+')}">
					${c}<br/>
					</c:forEach>
				</td>
				<td><img src="${vo.filecontent}${vo.filename}" width='200' height='200'></td>

			</tr>

		</c:forEach>

		
		


	</table>


</body>
</html>