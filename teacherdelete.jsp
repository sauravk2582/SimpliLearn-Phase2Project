<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%

String teacherId = request.getParameter("id");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/learneracademy", "root", "Praali123#");

pst = con.prepareStatement("delete from teacher where id = ?");
pst.setString(1, teacherId);
pst.executeUpdate();

out.println("Record Deleted");
%>