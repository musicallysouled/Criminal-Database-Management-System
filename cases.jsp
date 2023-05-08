<%@ page import="java.sql.*" %>
<%@include file="connect.jsp" %>
<%    
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM fir_details");
%>
<table>
  <tr>
    <th>District name</th>
    <th>Name of police station</th>
    <th>Name of Complainant</th>
    <th>Phone number</th>
    <th>Address</th>
    <th>City</th>
    <th>State</th>
    <th>Email</th>
    <th>Complaint type</th>
    <th>Date of occurrence</th>
    <th>Suspect Details</th>
  </tr><hr>
  <% while (rs.next()) { %>
  <tr>
    <td><%= rs.getString("District_Name") %></td>
    <td><%= rs.getString("Police_Station") %></td>
    <td><%= rs.getString("Complainant") %></td>
    <td><%= rs.getString("Phone") %></td>
    <td><%= rs.getString("Address") %></td>
    <td><%= rs.getString("City") %></td>
    <td><%= rs.getString("State") %></td>
    <td><%= rs.getString("Email") %></td>
    <td><%= rs.getString("Type") %></td>
    <td><%= rs.getString("Dateocc") %></td>
    <td><%= rs.getString("Details") %></td>
  </tr>
  <% } %>
</table>
 <hr>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<style type="text/css">
	body{
		padding: 20px 25px;
		background-color:#DFBF87;
		color:#9C1027;}
	hr{
	color:#9C1027;
	}
	label{
		margin: 20px;
	}
	h1{
		text-align:center;}
	td{
	margin:20px ;
	padding: 20px 20px;
	border-left: 1px solid black;}
</style>
</head>
</html>
