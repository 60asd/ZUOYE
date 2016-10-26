<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新</title>
</head>
<body>
<%

  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=jsp";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"ss","");
  
  //ResultSet rs= null;
  
 String sql="update student set  id=? name=? major=?";
 PreparedStatement st = conn.prepareStatement(sql);

 String id = request.getParameter("id");
 String name = request.getParameter("name");
 String major = request.getParameter("major");
 
 st.setString(1, id);
 st.setString(2, name);
 st.setString(3, major);
 st.close();
 conn.close();
  %>
 <h1>修改成功！</h1> 
  
</body>
</html>