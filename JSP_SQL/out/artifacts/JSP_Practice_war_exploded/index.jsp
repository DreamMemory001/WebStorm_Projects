<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<title>用户注册</title>
</head>
<body>
	<center><h1>用户注册</h1></center>
	<hr>
	<center>
	<form action="dologin.jsp" method="post">
		<table>
		<tr><td>用户名：</td><td><input type="text" name = username value=""></td></tr>
		<tr><td>密码：</td><td><input type="password" name="password" value=""></td></tr>
		
	
		<tr><td>用户类型：</td><td><input type="radio" name="type" value="普通用户" checked>普通用户&nbsp
									<input type="radio" name="type" value="管理员">管理员
		</td></tr>
		<tr><td  colspan="2"><center>
					<input type="submit" value="注册">&nbsp;&nbsp;
					<input type="reset" value="重置">
				</center></td></tr>
		</table>
	
	
	</form>
	</center>
</body>
</html>