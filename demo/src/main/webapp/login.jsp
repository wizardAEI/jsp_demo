<%--
  Created by IntelliJ IDEA.
  User: wizard
  Date: 2021/4/17
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>
<% String path = request.getContextPath(); %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统登陆</title>
</head>
<body>
    <form method="post" id="form" action="<%=path%>/loginServlet">
    <input type="text" id="username" name="username" value="${username}" placeholder="请输入昵称">
    <input type="possword" id="password" name="password" placeholder="请输入密码">
    <button type="button" name="longinButton" onclick="loginVerify();">登 录</button>
    ${error}
    </form>
</body>
</html>

<script>
    function loginVerify() {
        let username = document.getElementById("username").value;
        let password = document.getElementById("password").value;
        if (username == '') {
            alert("用户名为空，请您输入");
            return;
        }
        if (password == '') {
            alert("密码为空，请您输入");
            return;
        }
        //调用后端servlet，并将数据传递
        document.getElementById("form").submit();
    }
</script>