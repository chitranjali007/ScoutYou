<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String sch_name="",details="",level="";
if(request.getQueryString()!=null)
{
	sch_name=request.getParameter("sch_name");
	details=request.getParameter("details");
	level=request.getParameter("level");

}
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou1","root","");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("select max(sch_id) as id from scholarship");
rs.next();
//response.sendRedirect("empinsert2.jsp");
PreparedStatement pstmt = cn.prepareStatement("INSERT INTO  scholarship  VALUES (?,?,?,?,?)");
pstmt.setString(1,sch_name);
pstmt.setInt(2,rs.getInt("id")+1);
pstmt.setString(3,level);
pstmt.setTimestamp(4, new java.sql.Timestamp(new java.util.Date().getTime()));
pstmt.setString(5,details);
pstmt.executeUpdate();
response.sendRedirect("suc_ad_clg_art.jsp");
%>


</body>
</html>