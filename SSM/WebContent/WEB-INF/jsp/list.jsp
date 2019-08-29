<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>详情展示</title>
</head>
<body>
      <form action="/SSM/Allstudent" method="POST">
       <table  border="2" style="color: blue; border: 2px">
          <tr>
             <td>姓名</td>
             <td>性别</td>
             <td>年龄</td>
             <td>班级</td>
             <td>课程</td>
             <td>成绩</td>
          </tr>
          <c:forEach  var="Allstudent"  items="${lists}">
             <tr>
               <td>${Allstudent.stu_name}</td>
               <td>${Allstudent.stu_sex}</td>
               <td>${Allstudent.stu_age}</td>
               <td>${Allstudent.stu_class}</td>
               <td>${Allstudent.stu_course}</td>
               <td>${Allstudent.stu_score}</td>
             </tr>
          </c:forEach>
          
       </table>
     </form>

</body>
</html>