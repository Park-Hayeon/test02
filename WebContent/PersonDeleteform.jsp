<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Form</title>
<script  src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
     $(function(){
    	 $("#delForm").on("submit",function(){
    		 if($("#delid").val()==""){
    			 alert("삭제 할 아이디를 확인해주세요.");
    			 return false;
    		 }
    	 })
     })

</script>
</head>
<body>
    <table border=1 align=center>
            <tr>
                 <th colspan="4"> Person List
            </tr>
            <tr>
                <th>ID
                <th>Name
                <th>Contact             
            </tr>
            
            <c:forEach var="i" items="${list}">
                 <tr>
                    <td>${i.id }
                    <td>${i.name }
                    <td>${i.contact }                    
                 </tr>
            </c:forEach>
            
            <tr>
          <form action="deleteProc.per" method="get" id=delForm>
          <th colspan="4" align=center>
            <input type="text" name=delId id="delid" placeholder="삭제 할 대상의 ID">
            <button>delete</button>
             <a href="index.jsp"><button type=button>back</button></a>
            </tr>
          </form>
                
            
       </table>

</body>
</html>