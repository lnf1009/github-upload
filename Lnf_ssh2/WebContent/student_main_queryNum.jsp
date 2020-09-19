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
<form action="${pageContext.request.contextPath}/studentAction_update" method="post">
<table>
<tr style="background:LightSteelBlue;font-weight:bold;font-size: 27px;font-family:KaiTi" align="center">
<td width="105px;">学号</td>
<td width="105px;">姓名</td>
<td width="105px;">性别</td>
<td width="105px;">年龄</td>
<td width="105px;">总成绩</td>
<td width="105px;">修改</td>
<td width="105px;">删除</td>
</tr>
<tr style="font-size:18px" align="center">
<td width="105px;"><input value="${student.stuNum}" name="student.stuNum" style="font-size:18px"></td>
<td width="105px;"><input value="${student.stuName}" name="student.stuName" style="font-size:18px"></td>
<td width="105px;"><input value="${student.stuSex}" name="student.stuSex" style="font-size:18px"> </td>
<td width="105px;"><input value="${student.stuAge}" name="student.stuAge"style="font-size:18px"> </td>
<td width="105px;"><input value="${student.score}" name="student.score"style="font-size:18px"> </td>
<td width="105px;"><input type="submit" onclick="myFunction()" value="修改"style="font-size:18px"></td>
<td><a href="${pageContext.request.contextPath}/student_addAction_delete?stuNum=${student.stuNum}" onclick="myFunction()">删除</a></td>

</table>

</form>
</div>
 <jsp:include page="foot.jsp"></jsp:include>
</div>
</body>
</html>