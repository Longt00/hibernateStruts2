<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body class="bg-light">
<%response.setCharacterEncoding("UTF-8");%>
<ul class="nav nav-tabs p-2 nav-fill " size="24px">
    <li class="nav-item ">
        <s:a class="nav-link" href="http://localhost:8080/test31_war_exploded/teacher/lookTeacher.jsp">查看教师信息</s:a>
    </li>
    <li class="nav-item">
        <a class="nav-link disabled" aria-current="page" href="#">
            添加教师信息
        </a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="http://localhost:8080/test31_war_exploded/teacher/findTeacher.jsp">修改教师信息</s:a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link"
             href="http://localhost:8080/test31_war_exploded/teacher/deleteTeacher.jsp">删除教师信息</s:a>
    </li>
</ul>

<div class="container text-center">
    <h2>
        添加教师信息
    </h2>
</div>
<div class="container ">
    <s:form action="addTeacherAction" method="post">
    <table class="table table-bordered col-md-6 offset-md-3">
        <tr>
            <td>
                <s:textfield name="id" label="编号" size="16"/>

                <s:textfield name="name" label="姓名" size="16"/>

                <s:select class="form-select" name="sex" label="性别" list="{'男','女'}"/>

                <s:textfield name="age" label="年龄"/>

                <s:textfield name="department" label="所在学院"/>
                <s:submit class="btn btn-primary border-dark offset-md-5" value="确定"/>
                <s:reset class="btn btn-primary border-dark offset-md-5" value="清除"/>
            </td>
        </tr>
    </table>
</div>
</s:form>
</body>
</html>
