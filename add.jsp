<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% 
String subjectName = request.getParameter("subjectName");
String subjectDuration = request.getParameter("subjectDuration");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/learneracademy", "root", "Praali123#");
pst = con.prepareStatement("insert into subject(subjectName, subjectDuration) values(?,?)");
pst.setString(1, subjectName);
pst.setString(2, subjectDuration);
pst.executeUpdate();
out.println("Record Added");
%>