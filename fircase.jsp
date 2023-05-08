<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp"%>
	<%try{
	PreparedStatement pst=conn.prepareStatement("insert into crime_details values(?,?,?,?,?,?,?,?,?,?,?)");
	
	pst.setString(1,request.getParameter("dist"));
	pst.setString(2,request.getParameter("pos"));
	pst.setString(3,request.getParameter("name"));
	pst.setString(4,request.getParameter("phn"));
	pst.setString(5,request.getParameter("addr"));
	pst.setString(6,request.getParameter("city"));
	pst.setString(7,request.getParameter("state"));
	pst.setString(8,request.getParameter("mail"));
	pst.setString(9,request.getParameter("n5"));
	pst.setString(10,request.getParameter("doo"));
	pst.setString(11,request.getParameter("susdet"));
	int t=pst.executeUpdate();
	if(t>0)
		out.println("<h1>Filed successfully");
	conn.close();
	}catch(Exception e){out.println(e);}
	%>
