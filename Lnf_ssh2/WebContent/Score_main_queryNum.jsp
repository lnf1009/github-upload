<%@page import="java.awt.desktop.PrintFilesEvent"%>
<%@ page  import="com.lnf.Entity.Score" %>
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
  <div class="divright"  >
<form action="${pageContext.request.contextPath}/ScoreAction_update" method="post">
<table>
<tr style="background:LightSteelBlue;font-weight:bold;font-size: 27px;font-family:KaiTi" align="center">
<td>学号</td>
<td>课程号</td>
<td>成绩</td>
<td>修改</td>
<td>删除</td>
</tr>
<tr style="font-size:18px" align="center">

<td><input style="font-size:18px" value="${score.stuNum}" name="score.stuNum"></td>
<td><input  style="font-size:18px"value="${score.cNum}" name="score.cNum"></td>
<td><input style="font-size:18px"value="${score.stuScore}" name="score.stuScore"></td>
<td><input style="font-size:18px"type="submit" value="修改" onclick="myFunction()"></td>
<td><a href="${pageContext.request.contextPath}/Score_addAction_delete?stuNum=${score.stuNum}" onclick="myFunction()">删除</a></td>

</table>

</form>
</div>
 <jsp:include page="foot.jsp"></jsp:include>
</div>
</body>
</html>