<%@page import="com.entity.User"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="col-md-12">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-3 text-center">User Details</p>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Email</th>
							<th scope="col">Password</th>

						</tr>
					</thead>
					<tbody>

						<%
						UserDao dao2 = new UserDao(DBConnect.getConn());
						List<User> list2 = dao2.getAllUsers();
						for (User u : list2) {
						%>
						<tr>
							<td><%=u.getFullName()%></td>
							<td><%=u.getEmail()%></td>
							<td><%=u.getPassword()%></td>
							
						</tr>
						<%
						}
						%>



					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>