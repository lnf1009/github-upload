<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function myFunction()
{
    alert("确定要修改吗！！");
}
</script>
<style type="text/css">
.divright{
background:url("image/01.jpg");
position: absolute;
width:87.9%;
height:79%;
top:11.3%;
left:12.7%;
}
table{
border-collapse: collapse;
border:1px solid black;
}
tr,td{
border-collapse: collapse;
border:1px solid black;
}
</style>
</head>
<body>
 <div id="zhuti" style="width:100%;height:100%">

<jsp:include page="top.jsp"></jsp:include>
 <jsp:include page="left.jsp"></jsp:include>  

<form action="${pageContext.request.contextPath}/CourseAction_update?${course.cNum}" method="post">

<div class="divright"  >
<table>
<tr style="background:LightSteelBlue;font-weight:bold;font-size: 27px;font-family:KaiTi" align="center">
<td width="105px;">课程号</td>
<td width="105px;">课程名</td>
<td width="105px;">修改</td>
<td width="105px;">删除</td>
</tr>

<c:forEach items="${courseList}" var="course">
<tr style="font-size:18px" align="center">

<td width="105px;">${course.cNum}</td>
<td width="105px;">${course.cName}</td>
<td width="105px;"><a href="${pageContext.request.contextPath}/CourseAction_findById?cNum=${course.cNum}">修改</a></td>
<td width="105px;"><a href="${pageContext.request.contextPath}/Course_addAction_delete?cNum=${course.cNum}" onclick="myFunction()">删除</a></td>

</c:forEach>

</table>
</div>
</form>


 <jsp:include page="foot.jsp"></jsp:include>
 
</div>
 
</body>
</html>