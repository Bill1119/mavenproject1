<%@ page language="java" 
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String user=request.getParameter("userid");
String password=request.getParameter("password");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bill", "root", "8111");
Statement st=conn.createStatement();
System.out.println("user");
System.out.println("password");
int i=st.executeUpdate("insert into record(name,password)values('"+user+"','"+password+"')");
out.println("Thank you for register ! Please <a href='index.html'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
