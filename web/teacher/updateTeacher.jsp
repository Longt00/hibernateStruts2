<%@page import="PO.Teachinfo" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Change</title>
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
        <s:a class="nav-link" href="http://localhost:8080/test31_war_exploded/teacher/addTeacher.jsp">添加教师信息</s:a>

    </li>
    <li class="nav-item">
        <a class="nav-link disabled" aria-current="page" href="#">
            修改教师信息
        </a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="http://localhost:8080/test31_war_exploded/teacher/deleteTeacher.jsp">删除教师信息</s:a>
    </li>
</ul>
<br/><br/><br/>
<h2 class="text-center">修改教师信息</h2>

<s:form action="updateTeacherAction" method="post">
    <table align="center" width="30%" bgcolor="gray" border="5">
        <%
            ArrayList list = (ArrayList) session.getAttribute("oneInfo");
            Teachinfo info = (Teachinfo) list.get(0);
        %>
        <tr>
            <td>
                教师编号
            </td>
            <td>
                <input name="id" value="<%=info.getId()%>" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <td>
                姓名
            </td>
            <td>
                <input name="name" value="<%=info.getName()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                性别
            </td>
            <td>
                <input name="sex" value="<%=info.getSex()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                年龄
            </td>
            <td>
                <input name="age" value="<%=info.getAge()%>"/>
            </td>
        </tr>
        <tr>
            <td>
                所在学院
            </td>
            <td>
                <input name="department" value="<%=info.getDepartment()%>"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <s:submit value="提交"/>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <s:a href="http://localhost:8080/test31_war_exploded/teacher/findTeacher.jsp">返回</s:a>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>
