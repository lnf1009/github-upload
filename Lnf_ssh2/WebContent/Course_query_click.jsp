<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
position: absolute;
top:2%;
left:35%;
}
</style>
</head>
<body>
 <div class="divright"  >
<form action="${pageContext.request.contextPath}/CourseAction_findAll" method="post">
<table>
<tr>
<td colspan="2" style="font-size: 25px">点击浏览课程信息</td>
</tr>
<tr>
<td align="center">
<input style="font-size: 20px"  type="submit" value="浏览课程信息">
</td>
</tr>
</table>
</form>
</div>
</body>
</html>