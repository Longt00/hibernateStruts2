<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList,PO.Teachinfo" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Select</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body class="bg-light">
<%response.setCharacterEncoding("UTF-8");%>
<ul class="nav nav-tabs p-2 nav-fill " size="24px">
    <li class="nav-item ">
        <a class="nav-link disabled" aria-current="page" href="#">
            查看教师信息
        </a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="http://localhost:8080/test31_war_exploded/teacher/addTeacher.jsp">添加教师信息</s:a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link" href="http://localhost:8080/test31_war_exploded/teacher/findTeacher.jsp">修改教师信息</s:a>
    </li>
    <li class="nav-item">
        <s:a class="nav-link"
             href="http://localhost:8080/test31_war_exploded/teacher/deleteTeacher.jsp">删除教师信息</s:a>
    </li>
</ul>

<br><br>
<div class="container text-center">
    <span class="text-center">你要查询的数据表中共有<%=request.getSession().getAttribute("count")%>人</span>
</div>
<br>
<br>
<div class="container">
    <table class="text-center table table-bordered ">
        <thead>
        <tr>
            <th class="border-dark" >记录条数</th>
            <th class="border-dark" >教师编号</th>
            <th class="border-dark" >姓名</th>
            <th class="border-dark" >性别</th>
            <th class="border-dark" >年龄</th>
            <th class="border-dark" >所在学院</th>
        </tr>
        </thead>
        <%
            ArrayList list = (ArrayList) session.getAttribute("allInfo");
            if (list.isEmpty()) {
        %>
        <tr>
            <td align="center">
                <span>暂无教师信息!</span>
            </td>
        </tr>
        <%
        } else {
            for (int i = 0; i < list.size(); i++) {
                Teachinfo info = (Teachinfo) list.get(i);
        %>
        <tr>
            <td class="border-dark" align="center"><%=i + 1%>
            </td>
            <td class="border-dark" ><%=info.getId()%>
            </td>
            <td class="border-dark" ><%=info.getName()%>
            </td>
            <td class="border-dark" ><%=info.getSex()%>
            </td>
            <td class="border-dark" ><%=info.getAge()%>
            </td>
            <td class="border-dark" ><%=info.getDepartment()%>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
</div>

</body>
</html>
