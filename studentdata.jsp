<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String studentName = request.getParameter("studentName");
String mail = request.getParameter("mail");
String phone = request.getParameter("phone");
String studentId = request.getParameter("id");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/learneracademy", "root", "Praali123#");
pst = con.prepareStatement("update student set studentName = ? , mail = ? , phone = ? where id = ?");
pst.setString(1, studentName);
pst.setString(2, mail);
pst.setString(3, phone);
pst.setString(4, studentId);

pst.executeUpdate();
out.println("Record Updated");
%>