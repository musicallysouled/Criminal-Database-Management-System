<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%
String oid = request.getParameter("offid");
String password = request.getParameter("pd");

if (conn != null) {
    PreparedStatement pst = conn.prepareStatement("SELECT * FROM police_details WHERE Officer_Id=? AND Password=?");
    pst.setString(1,oid);
    pst.setString(2,password);
    ResultSet rs = pst.executeQuery();

    if(rs.next()) {
        session.setAttribute("Officer_Id",oid);
        response.sendRedirect("welcome.jsp");
    } else {
%>
        <script>
            alert("Invalid Officer Id or Password. Please try again.");
            window.location.href = "loginP.html";
        </script>
<%
    }
} else {
    out.println("Failed to connect to database.");
}
%>
