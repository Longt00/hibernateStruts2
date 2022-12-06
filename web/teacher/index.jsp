<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body class="bg-dark">
<%response.setCharacterEncoding("UTF-8");%>
<div align="center">
    <br/><br/><br/><br/><br/>
    <div class="text-lg-center text-light">
        <h3>
            基于Struts2+Hibernate5的教师信息管理系统实例，可对学生信息进行增、删、改、查！
        </h3>
    </div>
    <br/><br/><br/>
    <br><br><br><br><br><br>
    <s:a href="lookTeacherAction">
        <div class="btn btn-primary">点此进入</div>
    </s:a>
</div>
</body>
</html>
