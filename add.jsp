<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% 
String teacherName = request.getParameter("teacherName");
String teacherQualification = request.getParameter("teacherQualification");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/learneracademy", "root", "Praali123#");
pst = con.prepareStatement("insert into teacher(teacherName, teacherQualification) values(?,?)");
pst.setString(1, teacherName);
pst.setString(2, teacherQualification);
pst.executeUpdate();
out.println("Record Added");
%>