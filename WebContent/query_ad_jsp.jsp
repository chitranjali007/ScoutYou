<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String query="",uid="",email="",level="";
if(request.getQueryString()!=null)
{
	query=request.getParameter("query");
	email=request.getParameter("email");
	uid=request.getParameter("uid");
	level=request.getParameter("level");

}
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou1","root","");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("select max(query_id) as id from query");
rs.next();
//response.sendRedirect("empinsert2.jsp");
PreparedStatement pstmt = cn.prepareStatement("INSERT INTO  query  VALUES (?,?,?,?,?,?)");
pstmt.setString(1,query);
pstmt.setString(2,uid);
pstmt.setString(3,email);
pstmt.setString(4,level);
pstmt.setTimestamp(5, new java.sql.Timestamp(new java.util.Date().getTime()));
pstmt.setInt(6,rs.getInt("id")+1);
pstmt.executeUpdate();
response.sendRedirect("suc_ad_clg_art.jsp");
%>


</body>
</html>