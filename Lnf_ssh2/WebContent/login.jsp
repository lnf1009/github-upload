<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.div_top {
border-top:1px solid black;
border-bottom:1px solid black;
	position: absolute;
	background: url("image/.jpg");
	width: 100%;
	height: 9.3%;
}

.div_left {
	position: absolute;
	background: url("image/.jpg");
	width: 70%;
	height: 20%;
	top: 71%;
}
.div_left_1{
position: absolute;
	background: url("image/44.jpg");
	width: 35%;
	height:60%;
	top:11%;
}
.div_left_2{
position: absolute;
	background: url("image/66.jpg");
	width: 35%;
	height:60%;
	top:11%;
	right: 0%;
	
}
.div_table {
	background: url("image/9.jpg");
	width: 380px;
	height: 450px;
	position: absolute;
	left:38%;
	top: 10%;
}

.div_foot {
	border-collapse: collapse;
	border-top: 1px solid red;
	background: url("image/6.jpg");
	width: 100%;
	height: 9%;
	bottom: 0%;
	position: absolute;
}

table {
	background: url("image/.jpg");
	border-collapse: collapse;
	border: 1px solid black;
	width: 350px;
	height: 250px;
}

tr, td {
	font-family: KaiTi;
	color: black;
	border-collapse: collapse;
	border: 1px solid black;
}

.p_top {
color:blue;
	font-family: LiSu;
	font-size: 45px;
	height: 20px;
	line-height: 0px;
	left: 28%; 
	position: absolute;
}
.p_foot_1{
font-family:KaiTi;
font-size: 22px;
height: 20px;
line-height: 0px;
position:absolute;
left: 35%;
}
.p_foot_2{
font-family:KaiTi;
font-size: 20px;
height: 20px;
line-height: 2px;
position:absolute;
left: 33%;
}
</style>
<meta charset="UTF-8">
<title>login</title>
<script type="text/javascript">
	function check() {
		var name = document.getElementById("username").value;
		var pwd = document.getElementById("password").value;
		if (name == "") {
			alert("用户名不能为空");
			return false;
		} else if (pwd == "") {
			alert("密码不能为空");
			return false;
		}
	}
</script>

</head>
<body>
	<form action="${pageContext.request.contextPath}/userAction_check"
		method="post">
		<div class="div_top">
			<div
				style="background: url('image/11.jpg'); height: 100%; width: 21%; float: left;"></div>
			<p class="p_top">学 &nbsp; &nbsp; &nbsp;生 &nbsp; &nbsp; &nbsp;管 &nbsp; &nbsp;
				&nbsp;理 &nbsp; &nbsp; &nbsp;系 &nbsp; &nbsp; &nbsp;统</p>
		</div>
		<div class="div_left">
		<p style="font-family:LiSu;font-size: 25px; color: green;position: absolute;left:33%"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三月的窗外  
一片招摇的世界  
春风在柳枝上荡秋千  
鸟儿在准备歌咏比赛  
 
学生们埋在题海里  
求证着祖先早已证明过的公式  
 
一个学生出神地望着窗外  
一个巴掌落下来 小鸟飞走了 </p>
</div>
		<div class="div_left_1"></div>
		<div class="div_left_2"></div>
		<div class="div_table">
			<h1 align="center" style="font-family: NSimSun; font-size: 35px">学生管理系统</h1>
			<table>
				<tr style="font-size: 35px;">
					<td colspan="2" align="center">用户登录</td>
				</tr>
				<tr style="font-size: 25px;">
					<td>账号：</td>
					<td><input type="text" id="username" name="username"
						placeholder="请输入用户名"></td>
				</tr>
				<tr style="font-size: 25px;">
					<td>密码：</td>
					<td><input type="password" id="password" name="password"
						placeholder="请输入密码"></td>
				</tr>
				<tr style="font-size: 25px;">
					<td colspan="2" align="center"><input type="submit" value="登录"
						style="font-size: 25px" onclick="return check()"></td>
				</tr>
			</table>

			<h2 align="center" style="font-size: 20px">
				<a href="register.jsp">注册</a>
			</h2>

		</div>

	</form>
	<div class="div_foot">
	<p class="p_foot_1">20171431班javaEE小组作业 </p><br>
	 <p class="p_foot_2"> 小组成员：廖林丰、高贤明、李妮珏</p> 
	
	 </div>
</body>
</html>