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
	   <c:choose>
	      <c:when test="${result > 0}">alert("Update Complete!")</c:when>
	      <c:otherwise>alert("No target ID!")</c:otherwise>
	   </c:choose>
	   location.href="index.jsp";
   </script>
</body>
</html>