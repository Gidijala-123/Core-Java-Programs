<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr {
	width: 70%;
}
.display{
margin-top:80px;
	line-height:30px;
}
</style>
</head>
<body>
<div style="color:darkblue;text-shadow: 1px 1px 3px #BD07F9,0px 0px 5px white; text-align: center; font-size: 25px; font-weight:bold;margin-bottom:15px; ">Your Details in Database <i class='fas fa-database'></i></div>
	<%
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from users where email='" + email + "'");
		while (rs.next()) {
	%>
	<div class="display">
	<h3>
		<b style="color:blue;">Name :</b>
		<b style="color:red;"><%=rs.getString(1)%></b>
	</h3>

	<h3>
		<b style="color:blue;">Email :</b>
		<b style="color:red;"><%=rs.getString(2)%></b>
	</h3>

	<h3>
		<b style="color:blue;">Mobile Number :</b>
		<b style="color:red;"><%=rs.getString(3)%></b>
	</h3>

	<h3>
		<b style="color:blue;">Security Question :</b>
		<b style="color:red;"><%=rs.getString(4)%></b>
	</h3>

	<br>
	<br>
	</div>
	<%
	}
	} catch (Exception e) {
	System.out.println(e);
	}
	%>
</body>
</html>