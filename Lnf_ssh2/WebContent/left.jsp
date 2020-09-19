<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var hide=true;
	 function showSubMenu() {
                var m = document.getElementById("subMenu");
                if(hide)
                {
                m.style.display = "block";
                hide=false;
                }
                else
                {
                m.style.display = "none";
                hide=true;
                }               
                   }  
                   
              function subMenu1(){
              var m1=document.getElementById("subMenu1");
               if(hide)
               {
               m1.style.display="block";
               hide=false;
               }    
               else
               {
               m1.style.display="none";
               hide=true;
               }
             }   
             function showsubMenu2(){
             var m2=document.getElementById("subMenu2");
             if(hide)
             {
             m2.style.display="block";
             hide=false;
             }
             else
             {
             m2.style.display="none";
             hide=true;
             }
             }   
             function showsubMenu3(){
             var m3=document.getElementById("subMenu3");
             if(hide)
             {
             m3.style.display="block";
             hide=false;
             }
             else{
             m3.style.display="none";
             hide=true;
             }
             }
	</script>
	<style type="text/css">
#subMenu{display: none;}
#subMenu1{display: none;}
#subMenu2{display: none;}
#subMenu3{display:none;}
li{
list-style: url("image/05.jpg");
}
#left{
border-right:1px solid black;
background:url("image/01.jpg");
float: left;
position:absolute;
width: 10%;
height: 79%;
top:9%;
left:0%;
}
</style> 
</head>
<body>
 <div id="divleft" class="divleft" >
	<ul id="left" >
 <li><h2 ><a style="cursor: hand"  onclick="showSubMenu()">学生信息 </a></h2>
   <ul id="subMenu" class="subMenu" style="font-size: 18px">
   <li ><a href="student_main_query.jsp">浏览学生信息</a></li>
   <li><a href="student_queryNum.jsp">查询学生信息</a></li>
   <li><a href="student_add.jsp">录入学生信息</a></li> 
   </ul> 
   </li>
  <li><h2><a style="cursor: hand" onclick="subMenu1()">课程信息</a></h2>
  <ul id="subMenu1" class="subMenu1" style="font-size: 18px">
  <li><a href="Course_main_query.jsp">浏览课程信息</a></li>
  <li><a href="Course_queryNum.jsp">查询课程信息</a></li>
  <li><a href="Course_add.jsp">录入课程信息</a></li>
  </ul>
  </li>
  <li><h2><a style="cursor: hand" onclick="showsubMenu2()">成绩信息</a></h2>
  <ul id="subMenu2" class="subMenu2" style="font-size: 18px">
  <li><a href="Score_main_query.jsp">浏览学生成绩</a></li>
  <li><a href="Score_queryNum.jsp">查询学生成绩</a></li>
  <li><a href="Score_add.jsp">录入学生成绩</a></li>
  </ul>
  </li>
  <li><h2><a style="cursor:hand" onclick="showsubMenu3()">我的中心</a></h2>
  <ul id="subMenu3" class="subMenu3" style="font-size: 18px">
  <li><a href="User_query.jsp">修改密码</a></li>
  <li><a href="login.jsp">退出</a></li> 
  </ul>
  </li>
  </ul> 
 </div>

</body>
</html>