<%--
  Created by IntelliJ IDEA.
  User: XuChao
  Date: 2019/3/31
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>用户注册之登录页面</title>
</head>
<body>
<center>
    <h1>用户注册</h1>
    <hr>
    <form action="dologin.jsp" method="post">
        <table border="1">
            <tr>
                <td colspan="2" align="center">用户登录</td>
            </tr>
            <tr>
                <td>登录名：</td>
                <td><input type="text" name="xuchaoi_username"></td>
            </tr>
            <tr>
                <td>登录密码：</td>
                <td><input type="password" name="xuchao_password"></td>
            </tr>
            <tr><td>用户类型：</td><td><input type="radio" name="xuchao_type" value="x" checked>普通用户&nbsp
                <input type="radio" name="xuchao_type" value="y">管理员
            </td></tr>
            <tr>
                <td colspan="2" align="center">
                   <input type="submit" value="登录" >
                    <input type="reset" value= "重置">
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
