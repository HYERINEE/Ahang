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
	Flask �������� ������ ������� ������ ����ڿ��� �����ش�.(0 or 1���� ���ŵȴ�.)
	�̹����� �ٲ㵵�ǰ�, ���ڸ� �ٲ㵵�ǰ� ������� ���� �������� ������ �����~!!
 -->
<% 
	String pre = request.getParameter("s"); 
	/* String result = pre.equals("0") ? "���" : "����"; */
%>
<h1>����� ���ϴ� ��ǰ Ÿ���� <%= pre %> �Դϴ�.</h1>
</body>
</html>




