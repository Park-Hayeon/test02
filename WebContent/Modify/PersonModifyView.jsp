<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person Modify View</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	<script>
		<%
			int result = (Integer)request.getAttribute("result");
			if(result > 0){
				%>
					alert("Update Complete");
				<%
			}else{
				%>
					alert("No target ID");
				<%
			}
		%>
		location.href="index.jsp";
	</script>
</body>
</html>