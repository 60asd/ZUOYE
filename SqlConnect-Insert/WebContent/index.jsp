<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询</title>
</head>
<body>
<%

  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=jsp";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"ss","");
  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery("select * from student");
  
  
out.println("<table>");
while(rs.next())
{
	out.println("<tr>");
	out.println("<td><a href='./connect.jsp?id="+rs.getInt("id")+"'>学号 </a></td>");
	out.println("<td>"+rs.getString("name")+"</td>");
	out.println("<td>"+rs.getString("major")+"</td>");
	}
out.println("<table>");

rs.close();
stmt.close();
conn.close();

%>




</body>
</html>