<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name = request.getParameter("sname");
String email = request.getParameter("semail");
String mobileNumber = request.getParameter("smobileNumber");
String securityQuestion = request.getParameter("ssecurityQuestion");
String answer = request.getParameter("sanswer");
String password = request.getParameter("spassword");
String address = " ";
String city = " ";
String state = " ";
String country = " ";
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobileNumber);
	ps.setString(4, securityQuestion);
	ps.setString(5, answer);
	ps.setString(6, password);
	ps.setString(7, address);
	ps.setString(8, city);
	ps.setString(9, state);
	ps.setString(10, country);
	ps.executeUpdate();
	response.sendRedirect("signuploginslider.jsp?msg=valid");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("signuploginslider.jsp?msg=invalid");
}
%>