<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% 
String studentName= request.getParameter("studentName");
String mail = request.getParameter("mail");
String phone = request.getParameter("phone");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3307/learneracademy", "root", "Praali123#");
pst = con.prepareStatement("insert into student(studentName, mail, phone) values(?,?,?)");
pst.setString(1, studentName);
pst.setString(2, mail);
pst.setString(3, phone);

pst.executeUpdate();
out.println("Record Added");
%>