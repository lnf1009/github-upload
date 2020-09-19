<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/**
 * 分页函数
 * pno--页数
 * psize--每页显示记录数
 * 分页部分是从真实数据行开始，因而存在加减某个常数，以确定真正的记录数
 * 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能
 **/
function goPage(pno){
    var itable = document.getElementById("idData");
    var num = itable.rows.length;//表格所有行数(所有记录数)
    console.log(num);
    var totalPage = 0;//总页数
    var pageSize = 15;//每页显示行数
    //总共分几页
    if(num/pageSize > parseInt(num/pageSize)){
        totalPage=parseInt(num/pageSize)+1;
    }else{
        totalPage=parseInt(num/pageSize);
    }
    var currentPage = pno;//当前页数
    var startRow = (currentPage - 1) * pageSize+1;//开始显示的行  31
    var endRow = currentPage * pageSize;//结束显示的行   40
    endRow = (endRow > num)? num : endRow;    //40
    console.log(endRow);
    //遍历显示数据实现分页
    for(var i=1;i<(num+1);i++){
        var irow = itable.rows[i-1];
        if(i>=startRow && i<=endRow){
            irow.style.display = "table-row";
        }else{
            irow.style.display = "none";
        }
    }
    var pageEnd = document.getElementById("pageEnd");
    var tempStr = "<span style='font-size:18px'>  共"+totalPage+"页  </span>";
 
 
//.bind("click",{"newPage":pageIndex},function(event){
//        goPage((pageIndex-1)*pageSize+1,(pageIndex-1)*pageSize+pageSize);
//    }).appendTo('#pages');
    if(currentPage>1){
        tempStr += "<span style='font-size:18px;color:blue;font-weight:bold' class='btn' href=\"#\" onClick=\"goPage("+(1)+")\">  首页  </span>";
        tempStr += "<span style='font-size:18px;color:blue;font-weight:bold' class='btn' href=\"#\" onClick=\"goPage("+(currentPage-1)+")\">  上一页  </span>"
    }else{
        tempStr += "<span style='font-size:18px'  class='btn'> 首页  </span>";
        tempStr += "<span style='font-size:18px' class='btn'> 上一页  </span>";
    }
 
    for(var pageIndex= 1;pageIndex<totalPage+1;pageIndex++){
        tempStr += "<a onclick=\"goPage("+pageIndex+")\"><span style='font-size:18px;color:blue;font-weight:bold'>" +  pageIndex  + "</span> </a>";
    }
 
    if(currentPage<totalPage){
        tempStr += "<span  style='font-size:18px;color:blue;font-weight:bold' class='btn' href=\"#\" onClick=\"goPage("+(currentPage+1)+")\">  下一页  </span>";
        tempStr += "<span style='font-size:18px;color:blue;font-weight:bold' class='btn' href=\"#\" onClick=\"goPage("+(totalPage)+")\"> 尾页  </span>";
    }else{
        tempStr += "<span style='font-size:18px'  class='btn'>  下一页  </span>";
        tempStr += "<span style='font-size:18px'  class='btn'>  尾页  </span>";
    }
 
    document.getElementById("barcon").innerHTML = tempStr;
 
}
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
<body onLoad="goPage(1,10);">
 <div id="zhuti" style="width:100%;height:100%">

<jsp:include page="top.jsp"></jsp:include>
 <jsp:include page="left.jsp"></jsp:include>  

<form action="${pageContext.request.contextPath}/studentAction_delete?${student.stuNum}" method="post">

<div class="divright"  >
<table style="background:LightSteelBlue;font-weight:bold;font-size: 27px;font-family:KaiTi">
<tr align="center">
<td width="105px;">学号</td>
<td width="105px;">姓名</td>
<td width="105px;">性别</td>
<td width="105px;">年龄</td>
<td width="105px;">总成绩</td>
<td width="105px;">修改</td>
<td width="105px;">删除</td>
</tr>
</table>
<table id="idData" style="font-size:18px">
<c:forEach items="${studentList}" var="student">
<tr  align="center">
<td width="105px;">${student.stuNum} </td>
<td width="105px;">${student.stuName}</td>
<td width="105px;">${student.stuSex}</td>
<td width="105px;">${student.stuAge}</td>
<td width="105px;">${student.score}</td>
<td width="105px;"><a href="${pageContext.request.contextPath}/studentAction_findById?stuNum=${student.stuNum}">修改</a></td>
<td width="105px;"><a href="${pageContext.request.contextPath}/student_addAction_delete?stuNum=${student.stuNum}" onclick="myFunction()">删除</a></td>
</tr>
</c:forEach>
</table>
<div id="barcon" name="barcon"></div>
</div>
</form>

 <jsp:include page="foot.jsp"></jsp:include>
 
</div>

</body>
</html>