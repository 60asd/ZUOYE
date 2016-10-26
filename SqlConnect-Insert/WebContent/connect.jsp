<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>链接</title>
</head>
<body>

<%

  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=jsp";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"ss","");
  
  //ResultSet rs= null;
  
 String sql="select * from student where id=?";
 PreparedStatement st = conn.prepareStatement(sql);

 String id = request.getParameter("id");
 st.setString(1, id);
 
 ResultSet rs=st.executeQuery();
 
 String name = "";
 String major = "";
 
 while(rs.next()){
	
	 name = rs.getString("name");
	 major = rs.getString("major");
	
 }
 

 st.close();
 conn.close();
  %>
  
<form action="./update.jsp">

姓名：<input name="name" value="<%=name %>" />
学号：<input name="major" value="<%=major %>" />
<button type="submit" >提交</button>
  
  </form>
</body>
</html>