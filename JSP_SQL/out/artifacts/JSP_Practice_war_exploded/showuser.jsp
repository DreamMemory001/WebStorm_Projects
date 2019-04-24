<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import="java.util.*, java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户信息</title>
</head>
<body>
	<center>
	<h2>用户信息</h2><hr>
	<%

	try{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding ("utf-8");
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xuchao_usera", "root", "0407");
		//out.print(conn);
		String sql_select = "select * from xuchao_usera;";
		PreparedStatement pst = conn.prepareStatement(sql_select);
		ResultSet rs = pst.executeQuery();
		%><table border=1>
		<tr><td>用户名</td><td>密码</td><td>用户类型</td><td>操作1</td><td>操作2</td></tr>
		<%
		while(rs.next()){
		%><tr>	
		<td><%=rs.getString("xuchaoi_username")%></td>
		<td><%=rs.getString("xuchao_password")%></td>
		<td><%=rs.getString("xuchao_type") %></td>
		<td>删除</td>
		<td>修改</td>
		</tr><%
		}
		%></table><%
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