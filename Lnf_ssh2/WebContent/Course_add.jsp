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
border-collapse: collapse;
border:1px solid black;
}
tr,td{
border-collapse: collapse;
border:1px solid black;
}
</style>
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
</head>
<body>
<div id="zhuti" style="width:100%;height:100%">

<jsp:include page="top.jsp"></jsp:include>
 <jsp:include page="left.jsp"></jsp:include> 
  <div class="divright"  >
<form action="${pageContext.request.contextPath}/Course_addAction_add" method="post">
<table>
				<tr style="font-size:35px; ">
					<td colspan="2" align="center" >录入课程信息</td>
				</tr>
				<tr style="font-size:22px; ">
					<td>课程号：</td>
					<td><input type="text" id="stuNum" name="cNum" ></td>
				</tr >
				<tr  style="font-size:22px; ">
					<td>课程名：</td>
					<td><input type="text" id="stuName" name="cName" ></td>
				</tr>
				<tr style="font-size:22px; ">
					<td colspan="2" align="center"><input type="submit" value="确定" onclick="return check()"></td>
				</tr>
			</table>	
			</form>
			</div>
			 <jsp:include page="foot.jsp"></jsp:include>
			</div>
</body>
</html>