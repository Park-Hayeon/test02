<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person Modify</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	<table border=1 align=center>
		<tr>
			<th colspan="4">Person List
		</tr>
		<tr>
			<th>ID
			<th>NAME
			<th>CONTACT
			<!-- <th>Date -->
		</tr>
		<c:forEach var="i" items="${list }">
			<tr>
				<td>${i.id }
				<td>${i.name }
				<td>${i.contact }
				<%-- <td>${i.reg_date } --%>
			</tr>
		</c:forEach>
		<tr>
			<td colspan=4>
				<form action="modifyProc.per" method=get id=upForm>
					<input type=text name=targetid placeholder="수정할 대상 ID" id=targetid>
					<input type=text name=newname placeholder="수정할  NAME" id=newname>
					<input type=text name=newcontact placeholder="수정할  CONTACT" id=newcontact> <input type=submit value="Modify">
					<a href="index.jsp"><button type=button>Back</button></a>
				</form>
		</tr>
	</table>
</body>
</html>