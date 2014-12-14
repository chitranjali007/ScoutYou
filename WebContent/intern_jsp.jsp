<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scout You</title>
</head>
<body>
<%
String add="",email="",company="",degree="";
if(request.getQueryString()!=null)
{
	add=request.getParameter("add");
	email=request.getParameter("email");
	company=request.getParameter("company");
	degree=request.getParameter("degree");

}
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou1","root","");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("select max(add_no) as id from intern");
rs.next();
//response.sendRedirect("empinsert2.jsp");
PreparedStatement pstmt = cn.prepareStatement("INSERT INTO  intern  VALUES (?,?,?,?,?,?)");
pstmt.setString(1,add);
pstmt.setString(2,company);
pstmt.setInt(3,rs.getInt("id")+1);
pstmt.setString(4,degree);
pstmt.setTimestamp(5, new java.sql.Timestamp(new java.util.Date().getTime()));
pstmt.setString(6,email);

pstmt.executeUpdate();
response.sendRedirect("suc_ad_clg_art.jsp");
%>


</body>
</html>