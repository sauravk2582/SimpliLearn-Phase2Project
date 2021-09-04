<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String subjectId = request.getParameter("id");
String subjectName = request.getParameter("subjectName");
String subjectDuration = request.getParameter("subjectDuration");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/learneracademy", "root", "Praali123#");
pst = con.prepareStatement("update subject set subjectName = ? , subjectDuration = ? where id = ?");
pst.setString(1, subjectName);
pst.setString(2, subjectDuration);
pst.setString(3, subjectId);
pst.executeUpdate();
out.println("Record Updated");
%>