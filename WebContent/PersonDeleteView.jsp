<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete View</title>
</head>
<body>
	<script>
    <%
        int result = (Integer)request.getAttribute("result");
        if(result >0){
        	%>
        	     alter("Success");
        	<%
        	}else{
            %>
                  alter("Failed");
            <%
            }
            %>
         location.href="index.jsp";     
   </script>
</body>
</html>