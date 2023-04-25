<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp"%>
	<%try{
	PreparedStatement pst=conn.prepareStatement("insert into police_details values(?,?,?,?,?,?,?,?)");
	
	pst.setString(1,request.getParameter("n1"));
	pst.setString(2,request.getParameter("n2"));
	pst.setString(3,request.getParameter("n3"));
	pst.setString(4,request.getParameter("n4"));
	pst.setString(5,request.getParameter("n5"));
	pst.setString(6,request.getParameter("n6"));
	pst.setString(7,request.getParameter("n7"));
	pst.setString(8,request.getParameter("pd"));
	int t=pst.executeUpdate();
	if(t>0)
		out.println("<h3>Registered successfully<br><br>");
	conn.close();
	}catch(Exception e){out.println(e);}
	%>
<html>
<head>
<title>Status</title>
<style>
body{
background-color:#DFBF87;
color:#9C1027;}
label{
	margin: 20px;
}
h3{
	text-align:center;
}
button{
color:#9C1027;}
</style>
</head>
<body>
<%String Oid= request.getParameter("n1");
String fname=request.getParameter("n2");
String mname = request.getParameter("n3");
String lname = request.getParameter("n4");
String post = request.getParameter("n5");
String station = request.getParameter("n6");
String state = request.getParameter("n7");

out.println("As per the details submitted, "+fname+" "+mname+" "+lname+" ,you are officer "+Oid+". You are designated as "+post+" of "+station+", "+state+".");
%>
<hr>
<form method="post" action="editpd.jsp">
<button type="submit">Edit</button>
</form>
<form method="post" action="loginP.html">
<button type="submit">Login</button>
</form>
</body>
</html>
