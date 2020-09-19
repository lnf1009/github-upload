<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <div id="zhuti" style="width:100%;height:100%">
<form action="User_update.jsp" method="post">

 <% 
 
 String username=request.getParameter("username");
 String password=request.getParameter("password");
 session.setAttribute("username", username);
 session.setAttribute("password", password);
 
 %>
 </form>
<jsp:include page="top.jsp"></jsp:include>
 <jsp:include page="left.jsp"></jsp:include>  
 <jsp:include page="right.jsp"></jsp:include> 
 <jsp:include page="foot.jsp"></jsp:include>

</div>

</body>
</html>