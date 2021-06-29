<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message List</title>
</head>
<body>
	<table border=1 align=center>
		<tr>
			<th colspan="4"> Message List </th>
		</tr>
		<tr>
			<th> ID </th>
			<th> NAME </th>
			<th> CONTACT </th>
		</tr>
		
		<c:forEach var="i" items="${list}">
			<tr>
				<td>${i.id }</td>
				<td>${i.name }</td>
				<td>${i.contact }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4" align=center><a href="index.jsp"> <button> BACK </button> </a></td>
		</tr>
	</table>
</body>
</html>