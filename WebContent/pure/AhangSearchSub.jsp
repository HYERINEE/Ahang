<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>


	<div>
		
		<c:forEach var="vo" items="${list13}">
			<p>
				${vo.brand_id}
			</p>
		
		</c:forEach>
	
	
	</div>





</body>
</html>