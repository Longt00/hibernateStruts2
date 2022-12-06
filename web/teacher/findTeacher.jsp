<%@page import="java.util.ArrayList" %>
<%@page import="PO.Teachinfo" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Find</title>
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

<s:form action="findTeacherAction" method="post">
    <div class="container">
        <table class="table col-lg-4 col-md-4 offset-md-4 offset-lg-4">
            <thead>
            <tr>
                <th class="border-dark">
                    请选择要修改教师的编号：
                </th>
            </tr>

            </thead>
            <tr>
                <td class="">
                    <select class="" name="id">
                        <%
                            ArrayList list = (ArrayList) session.getAttribute("allInfo");
                            if (list.isEmpty()) {
                        %>
                        <option value="null">null</option>
                        <%
                        } else {
                            for (int i = 0; i < list.size(); i++) {
                                Teachinfo info = (Teachinfo) list.get(i);
                        %>
                        <option value="<%=info.getId()%>"><%=info.getId()%>
                        </option>
                        <%
                                }
                            }
                        %>
                    </select>
                </td>
                <td class=" offset-md-3">
                    <s:submit class="btn btn-primary border-dark offset-md-5" value="确定"/>
                </td>
            </tr>
        </table>
    </div>


</s:form>
</body>
</html>
