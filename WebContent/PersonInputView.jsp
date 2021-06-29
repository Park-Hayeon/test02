<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input Result</title>
</head>
<body>
     
  <script>
        <c:choose>
           <c:when test="${result > 0}">
                 alert("Success");
           </c:when>        
         
           <c:otherwise>
               alert("Failed")
           </c:otherwise>
        </c:choose>
        location.href="index.jsp";
      </script>
     
</body>

</html>