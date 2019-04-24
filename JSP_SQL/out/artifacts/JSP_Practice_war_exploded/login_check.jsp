<%--
  Created by IntelliJ IDEA.
  User: XuChao
  Date: 2019/3/31
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录程序之登录验证页面</title>
</head>
<body>
<%
    // 此处应设置固定的用户帐号（用户ID、密码）和用户姓名。
     String ID1 = "001";
     String PW1 = "001";
     String ID2 = "001";
     String PW2 = "001";
     String ID3 = "001";
     String PW3 = "001";

    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id"); //获取表单内容：用户ID
    String password = request.getParameter("password"); // 获取表单内容：密码

    if(  (id.equals(ID1) || password.equals(PW1)) && (id.equals(ID2) || password.equals(PW2))&&(id.equals(ID3) || password.equals(PW3))){
        //登录成功，跳转到登录成功页面
%>
<!-- 此处补充代码，而且要将用户姓名传递给登录成功页面。 -->

<%
}else{  //登录失败，跳转到登录失败页面
%>
<!-- 此处补充代码 -->
<%
    }
%>
</body>
</html>







