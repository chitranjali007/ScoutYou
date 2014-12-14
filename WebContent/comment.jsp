<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scout YOU</title>

 
</head>
<body>
<fieldset>
                      		
<%
 String un=(String)session.getAttribute("user_name");
 out.print("<b>"+un+": </b>");
 String comment = request.getParameter( "t1" );
int aid = Integer.parseInt(request.getParameter( "t2" ));
int tabnm = Integer.parseInt(request.getParameter( "t3" ));
//out.print(tabnm);
out.println(comment);
//out.print(aid);
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou1","root","");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("select max(comment_id) as id from comment");
rs.next();
PreparedStatement pstmt = cn.prepareStatement("INSERT INTO  comment  VALUES (?,?,?,?,?,?)");
pstmt.setString(1,comment);
pstmt.setString(2,un);
pstmt.setInt(3,aid);
pstmt.setTimestamp(4, new java.sql.Timestamp(new java.util.Date().getTime()));
pstmt.setInt(5,rs.getInt("id")+1);
pstmt.setInt(6,tabnm);
pstmt.executeUpdate();

%> 
</fieldset>
</body>
</html>