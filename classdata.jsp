<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String classid = request.getParameter("id");
String className = request.getParameter("className");
String classDuration = request.getParameter("classDuration");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/learneracademy", "root", "Praali123#");
pst = con.prepareStatement("update class set className = ? , classDuration = ? where id = ?");
pst.setString(1, className);
pst.setString(2, classDuration);
pst.setString(3, classid);
pst.executeUpdate();
out.println("Record Updated");
%>