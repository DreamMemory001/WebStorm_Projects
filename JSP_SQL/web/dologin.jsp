<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h1>用户注册</h1><hr>
	<% request.setCharacterEncoding("utf-8");
// 		response.setCharacterEncoding ("utf-8");
		String xuchaoi_username = request.getParameter("xuchaoi_username");
		String xuchao_password = request.getParameter("xuchao_password");
		String xuchao_type = request.getParameter("xuchao_type");
		
 		out.print(xuchaoi_username);
 		out.print(xuchao_password);
		out.print(xuchao_type);
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xuchao_usera", "root", "0407");
			if (!conn.isClosed()) {
				System.out.println("数据库连接成功");
			}

			String sql_insert = "insert into xuchao_usera(xuchaoi_username, xuchao_password, xuchao_type) value(?,?,?);";
			PreparedStatement pst = conn.prepareStatement(sql_insert);
			pst.setString(1, xuchaoi_username);
			pst.setString(2, xuchao_password);
			pst.setString(3, xuchao_type);
			//out.print(type);
			int rs = pst.executeUpdate();
			if(rs!=0){
				out.print("用户"+xuchaoi_username+"注册成功！！！");
				%>
	       <center><a href="showuser.jsp">显示用户信息</a></center>
	<%
			}else{
				out.print("注册错误！！");
			}
			pst.close();
			conn.close();
		}catch(ClassNotFoundException  e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	</center>
</body>
</html>