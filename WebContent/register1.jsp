<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.security.MessageDigest"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scout YOU</title>
</head>
<body>
<%
String uname="",email="",level="",pass="",uid="";
StringBuffer hash = new StringBuffer();
if(request.getQueryString()!=null)
{
	uname=request.getParameter("uname");
	email=request.getParameter("email");
	level=request.getParameter("level");
	pass=request.getParameter("pass");
	uid=request.getParameter("uid");
	MessageDigest alg = MessageDigest.getInstance("MD5");
	alg.reset(); 
	alg.update(pass.getBytes());
	byte[] digest = alg.digest();
	
	String hx;
	for (int i=0;i<digest.length;i++)
	{
		hx =  Integer.toHexString(0xFF & digest[i]);
		if(hx.length() == 1){hx = "0" + hx;}
		hash.append(hx);
	}
	//out.println("MD5 version is: " + hashedpasswd.toString() + "<br>");


try{
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou1","root","");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("select email_id from user_info where user_id='" +uid+ "'");
if(rs.next())
{
 response.sendRedirect("faultuid.jsp");
 
}
else
{st.executeUpdate("insert into user_info values('"+email+"','"+level+"','"+hash+"','"+uname+"','"+uid+"')");
  out.print("Registred successfull!!!");
//response.sendRedirect("registersux.jsp");
out.print("<br><a href=home.jsp>login Yourself!!</a>");
}
}

catch(Exception ex)
{
	out.print("Email_id alredy registered!!!");
	ex.printStackTrace();
	response.sendRedirect("faultemailid.jsp");
}
}
%>


</body>
</html>