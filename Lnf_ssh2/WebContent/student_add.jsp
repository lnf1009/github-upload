<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check()
	{		
	  var num=document.getElementById("stuNum").value;
	  var name=document.getElementById("stuName").value;
	  var sex=document.getElementById("stuSex").value;
	  var age=document.getElementById("stuAge").value;
	  var score=document.getElementById("score").value;
	  	  
	  if(num==""){
	     alert("学号不能为空");
	     return false;
	  }else if(name==""){
	    alert("姓名不能为空");
	    return false;
	  }else if(sex==""){
		  alert("性别不能为空");
		  return false;
	  }else if(age==""){
		  alert("年龄不能为空");
		  return false;  	  
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
<form action="${pageContext.request.contextPath}/student_addAction_add" method="post">
<table>
				<tr style="font-size:35px; ">
					<td colspan="2" align="center" >录入学生信息</td>
				</tr>
				<tr style="font-size:22px; ">
					<td>学号：</td>
					<td><input type="text" id="stuNum" name="stuNum" ></td>
				</tr>
				<tr  style="font-size:22px; ">
					<td>姓名：</td>
					<td><input type="text" id="stuName" name="stuName" ></td>
				</tr>
				<tr style="font-size:22px; ">
				<td>性别：</td>
				<td><input type="text" id="stuSex" name="stuSex"> </td>
				</tr>
				<tr style="font-size:22px; ">
				<td>年龄：</td>
				<td><input type="text" id="stuAge" name="stuAge"> </td>
				</tr>
				
				<tr style="font-size:22px; ">
				<td>总成绩：</td>
				<td><input type="text" id="score" name="score"> </td>
				</tr>
				<tr style="font-size:22px; ">
					<td colspan="2" align="center"><input type="submit" onclick="return check()" value="确定" ></td>
				</tr>
			</table>	
			</form>
			</div>
			</div>
</body>
</html>