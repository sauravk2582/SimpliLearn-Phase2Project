<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con;
PreparedStatement pst;
ResultSet rs;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Teachers assigned to a class for a subject:</h1>
	
	<div class="panel-body">
				<table id="tbl-course" class="table table-responsive table-bordered">
					<tr>
						<th>Student ID</th>
						<th style="padding-left: 10px">Teacher Name</th>
						<th style="padding-left: 10px">Teacher Qualification</th>
						<th style="padding-left: 10px">Class Name</th>
						<th style="padding-left: 10px">Class Duration</th>
						<th style="padding-left: 10px">Subject Name</th>
						<th style="padding-left: 10px">Subject Duration</th>
					<tbody>
						<%
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3307/learneracademy", "root", "Praali123#");
						String query = "select student.id , t.teacherName , t.teacherQualification , c.className , c.classDuration , s.subjectName , s.subjectDuration from learneracademy.class c JOIN learneracademy.student ON student.cId = c.id JOIN learneracademy.subject s ON s.id = student.sId JOIN learneracademy.teacher t ON t.id = student.tId;";
						Statement st = con.createStatement();
						rs = st.executeQuery(query);
						while(rs.next())
						{
							//String id = rs.getString("s.id");
						
					%>

						<tr>
							<td style="padding-left: 30px"><%=rs.getString("student.id") %></td>
							<td style="padding-left: 30px"><%=rs.getString("t.teacherName") %></td>
							<td style="padding-left: 30px"><%=rs.getString("t.teacherQualification") %></td>
							<td style="padding-left: 10px"><%=rs.getString("c.className") %></td>
							<td style="padding-left: 30px"><%=rs.getString("c.classDuration") %></td>
							<td style="padding-left: 10px"><%=rs.getString("s.subjectName") %></td>
							<td style="padding-left: 30px"><%=rs.getString("s.subjectDuration") %></td>
						</tr>
						<% } %>

					</tbody>
				</table>
			</div>
</body>
</html>