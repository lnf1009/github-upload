<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.div_top{
position:absolute;
background-color:green;
width:100%;
height:5%;
}
.div_left{
position:absolute;
background:url("image/1.jpg");
width:70%;
height: 85%;
top: 6%;
}
.div_table{
width: 350px;
height:250px;
position: absolute;
right:5%;
top: 20%;
}
.div_foot{

position:absolute;
background-color:green;
width: 100%;
height:10%;
top:90%;
}
table {
    background:url("image/.jpg");
	border-collapse: collapse;
	 border: 1px solid black; 
	width: 350px;
	height:250px;
}

tr, td {
    font-family:KaiTi;
    color:black;
	border-collapse: collapse;
	 border: 1px solid black; 
}
</style>
<meta charset="UTF-8">
<title>login</title>
<script type="text/javascript">
	function check()
	{		
	  var name=document.getElementById("username").value;
	  var pwd=document.getElementById("password").value;
	  	  
	  if(name==""){
	     alert("用户名不能为空");
	     return false;
	  }else if(pwd==""){
	    alert("密码不能为空");
	    return false;
	  }
	}      
	</script>
</head>
<body onload="check()">
	<form action="${pageContext.request.contextPath}/userAction_add"
		method="post">
		<div class="div_top"></div>
		<div class="div_left" ></div>
		<div class="div_table">
		<h1 align="center" style="font-family: NSimSun">学生管理系统</h1>
			<table>
				<tr style="font-size:35px; ">
					<td colspan="2" align="center" >注册</td>
				</tr>
				<tr style="font-size:25px; ">
					<td>账号：</td>
					<td><input type="text" name="username" placeholder="请输入用户名"></td>
				</tr>
				<tr  style="font-size:25px; ">
					<td>密码：</td>
					<td><input type="password" name="password" placeholder="请输入密码"></td>
				</tr>
				<tr style="font-size:25px; ">
					<td colspan="2" align="center"><input type="submit" value="注册" onclick="return check()"></td>
				</tr>
			</table>			
		</div>
		
	</form>
<div class="div_foot"></div>
</body>
</html>