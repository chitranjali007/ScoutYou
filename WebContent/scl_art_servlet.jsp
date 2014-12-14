<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scout YOU</title>
</head>
<body>
<%
String article="",email="",uid="",title="",branch="";int ano=0;
if(request.getQueryString()!=null)
{
	article=request.getParameter("article");
	email=request.getParameter("email");
	
	uid=request.getParameter("uid");
	title=request.getParameter("title");
	branch=request.getParameter("branch");
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou1","root","");
Statement st = cn.createStatement();
ResultSet rs=st.executeQuery("select max(article_no) from sch_article");
while(rs.next())
{
	 ano = rs.getInt(1) + 1;
}

PreparedStatement pstmt = cn.prepareStatement("INSERT INTO sch_article  VALUES (?,?,?,?,?,?,?)");
pstmt.setString(1,article);
pstmt.setString(2,branch);
pstmt.setString(3,title);
pstmt.setInt(4,ano);
pstmt.setTimestamp(5, new java.sql.Timestamp(new java.util.Date().getTime()));
pstmt.setString(6,email);
pstmt.setString(7,uid);
pstmt.executeUpdate();
response.sendRedirect("suc_ad_clg_art.jsp");

  
}

%>


</body>
</html>