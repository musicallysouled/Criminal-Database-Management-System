<%@ page import="java.sql.*" %>
<%@include file="connect.jsp" %>
<%    
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM crime_details");
%>
<table>
  <tr>
    <th>Name</th>
    <th>Gender</th>
    <th>Blood Group</th>
    <th>Date of Birth</th>
    <th>Father's Name</th>
    <th>Occupation</th>
    <th>Mother's name</th>
    <th>Brother's name</th>
    <th>Sister's name</th>
    <th>Marital Status</th>
    <th>Date Arrested</th>
    <th>Location Arrested from</th>
    <th>Crime type</th>
    <th>About crime</th>
    <th>Birth City</th>
    <th>Correspondence Address</th>
    <th>Permanent Address</th>
  </tr>
  <% while (rs.next()) { %>
  <tr>
    <td><%= rs.getString("Name") %></td>
    <td><%= rs.getString("Gender") %></td>
    <td><%= rs.getString("Bloodgroup") %></td>
    <td><%= rs.getString("Date_Of_Birth") %></td>
    <td><%= rs.getString("Father_Name") %></td>
    <td><%= rs.getString("Occupation") %></td>
    <td><%= rs.getString("Mother_Name") %></td>
    <td><%= rs.getString("Brother_Name") %></td>
    <td><%= rs.getString("Sister_Name") %></td>
    <td><%= rs.getString("Marital_Status") %></td>
    <td><%= rs.getString("Date_Arrested") %></td>
    <td><%= rs.getString("Location_Arrested") %></td>
    <td><%= rs.getString("Crime_Type") %></td>
    <td><%= rs.getString("About_Crime") %></td>
    <td><%= rs.getString("City_Born") %></td>
    <td><%= rs.getString("Correspondence_Address") %></td>
    <td><%= rs.getString("Permanent_Address") %></td>
  </tr>
  <% } %>
</table> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Criminal Details</title>
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
