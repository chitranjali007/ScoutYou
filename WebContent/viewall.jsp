<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Scout YOU!!!</title>
<meta name="keywords" content="city portal, 3 columns, free css templates, website templates, white color" />
<meta name="description" content="City Portal is a 3-column free website template for everyone" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
var aj;
try
{
	aj=new XMLHttpRequest();
}
catch(e)
{
	aj=new ActiveXObject("Microsoft.XMLHTTP");
}
function fn1(t1,t2,t3)
{
	aj.open("get","comment.jsp?t1="+t1+ "&t2=" +t2+ "&t3=" +t3);
	aj.onreadystatechange=fn2;
	aj.send();
}
function fn2()
{
	if(aj.readyState==4)
		document.getElementById("d1").innerHTML=aj.responseText;
}

</script>
</head>
<body>

<div id="templatmeo_wrapper">

    <div id="templatemo_header">
    
        <div id="site_title">
            <h1><a href="home.jsp" target="_parent">
               <img src="images/templatemo_logo.jpg" alt="Scout you" /> 
                
                <span>Let Your mind be free</span>
            </a></h1>
        </div> <!-- end of site_title -->
        
        <div id="header_right">
        
            <ul id="header_button">
                <li><a href="home.jsp"><img src="images/templatemo_home.jpg" alt="home" /></a></li>
                <li><a href="#"><img src="images/templatemo_contact.jpg" alt="contact us" /></a></li>	
            </ul>
            
            <div class="cleaner"></div>
            
            <form action="#" method="get">
                <input type="text" value="Enter a keyword here..." name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                <input type="submit" name="Search" value="Go" alt="Search" id="searchbutton" title="Search" />
            </form>
        
        </div>
        
    </div> <!-- end of templatemo_header -->
    
    <div id="templatemo_banner">
    
    	<div id="banner_box">
          <ul>
        	<li><a href="show_sch_art.jsp" target="_parent"><span class="current"></span><img src="images/templatemo_city_info.jpg" alt="City Info." /></a></li>
            <li><a href="show_clg_art.jsp" target="_parent"><span></span><img src="images/templatemo_business.jpg" alt="Business" /></a></li>
            <li><a href="show_int.jsp" target="_parent"><span></span><img src="images/templatemo_tourism.jpg" alt="Tourism" /></a></li>
            <li><a href="show_quer.jsp" target="_parent"><span></span><img src="images/templatemo_events.jpg" alt="Events" /></a></li>
        </ul>
        </div>
    
    </div> <!-- end of templatemo_banner -->
    
    <div id="templatemo_menu">
    
        <!--<ul>
            <li><a href="#">Homepage</a></li>
            <li><a href="#">Destinations</a></li>
            <li><a href="#">Life Style</a></li>
            <li><a href="#">Education</a></li>
            <li><a href="#">Sports</a></li>
            <li><a href="http://www.flashmo.com" target="_parent">Technology</a></li>
            <li><a href="#">Business</a></li>
            <li><a href="#">Photos</a></li>	
            <li><a href="#">Videos</a></li>	
        </ul>   --> 	
    
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_content_wrapper">
    
    	<div id="templatemo_left_sidebar">
        
        	<div class="templatemo_box">
            	<h2><span></span>Categories</h2>
                
                <div class="body">
                    <ul class="side_menu">
                        <li><a href="ad_query.jsp">Post a query!!</a></li>
                        <li><a href="adlogin.jsp">Share Articles</a></li>
                        <li><a href="intern_ad.jsp">Help To get an Intern</a></li>
                        <li><a href="ad_scho.jsp">Is There Any Scholarship??</a></li>
                                    
                    </ul>
                </div>
            
            	<div class="box_bottom"><span></span></div>
            </div>
            
            <div class="templatemo_box">
            	<h2><span></span>Useful Resources</h2>
                
                <div class="body">
          			<ul class="side_menu">
                        <li><a href="show_clg_art.jsp">College Articles </a></li>
                        <li><a href="show_sch_art.jsp">School Articles</a></li>
                        <li><a href="show_int.jsp">Internships Opportunities</a></li>
                        <li><a href="show_quer.jsp">Scholarships</a></li>
                        <li><a href="show_quer_ac.jsp">Queries</a></li>
                        
					</ul>
                </div>
            
            	<div class="box_bottom"><span></span></div>
            </div>
        
        </div> <!-- end of left_sidebar -->
        
        <div id="templatemo_content">
        
			<div class="templatemo_box">
            	<!-- <h2><span></span>Welcome to smartedu Website</h2>
                
                <div class="body">
                    
                    <p>Smartedu is a education based web portal website for everyone wheteher school students or going for college. Feel free to put up your queries and post any articles which can help others. 
        Validate <a href="http://validator.w3.org/check?uri=referer">XHTML</a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>. Credit goes to <a href="http://www.photovaco.com" target="_blank">Free Photos</a> for photos used in this layout. Nam ut libero at lacus feugiat tincidunt vitae sed ipsum. Vivamus ut ante ullamcorper urna cursus porta.</p>
                  
              </div>
            
           	  <div class="box_bottom"><span></span></div> -->
            </div>
            
            <div class="templatemo_box">
            	<h2><span></span>Popular Posts</h2>
                
                <div class="body">
                    <%Class.forName("com.mysql.jdbc.Driver");
                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou1","root","");
                    Statement st = cn.createStatement();
                    ResultSet rs=st.executeQuery("select max(article_no) from clg_article");
                    %>
                <div class="news_box">
                <%
                	String anum="",tabname="",title,article,uname,branch,subject,comp,degree,email;Date date;
                    int a,tb=0;
                    
                	a=Integer.parseInt(request.getParameter("anum"));
                	tabname=request.getParameter("tabname");
                	
                	if(tabname.equals("clg_article"))
                	{ tb=1;
                		rs=st.executeQuery("select * from clg_article where article_no="+a);
                		rs.next();
                		title=rs.getString(6);
                		article=rs.getString(1);
                		branch=rs.getString(3);
                		date=rs.getDate(4);
                		uname=rs.getString(5);
                		
                		out.print("<fieldset>");
                		out.print("<Legend>" + title+ "</legend>");
                		out.print("<div id=d2><p>"+ article + "</p></div>");
                		out.print("<br><b> Date: </b>"+ date );
                		out.print("<br><b>Branch: </b>"+ branch);
                		out.print("<br><b>By:</B>" + uname);
                        out.print("</fieldset>");
                       
                	}
                	if(tabname.equals("sch_article"))
                	{tb=2;
                		rs=st.executeQuery("select * from sch_article where article_no="+a);
                		rs.next();
                		title=rs.getString(6);
                		article=rs.getString(1);
                		subject=rs.getString(5);
                		date=rs.getDate(3);
                		uname=rs.getString(4);
                		out.print("<fieldset>");
                		out.print("<Legend>" + title+ "</legend>");
                		out.print("<p><div id=d3>"+ article + "</div></p>");
                		out.print("<br><b> Date: </b>"+ date );
                		out.print("<br><b>Subject: </b>"+ subject);
                		out.print("<br><b>By:</B>" + uname);
                        out.print("</fieldset>");
                				
                	}
                	if(tabname.equals("intern"))
                	{  tb=3;
                		rs=st.executeQuery("select * from intern where add_no="+a);
                		rs.next();
                		comp=rs.getString(3);
                		article=rs.getString(1);
                		degree=rs.getString(5);
                		date=rs.getDate(4);
                		email=rs.getString(6);
                		out.print("<fieldset>");
                		out.print("<Legend>" + comp+ "</legend>");
                		out.print("<p><div id=d4>"+ article + "</div></p>");
                		out.print("<br><b> Date: </b>"+ date );
                		out.print("<br><b>Eligible Students: </b>"+ degree);
                		out.print("<br><b>Send Your Resume to:</B>" + email);
                        out.print("</fieldset>");
                				
                	}
                	if(tabname.equals("scholarship"))
                	{   tb=4;
                		rs=st.executeQuery("select * from scholarship where sch_id="+a);
                		rs.next();
                		comp=rs.getString(5);
                		article=rs.getString(2);
                		degree=rs.getString(3);
                		date=rs.getDate(1);
                		//email=rs.getString(6);
                		out.print("<fieldset>");
                		out.print("<Legend>" + comp+ "</legend>");
                		out.print("<p><div id=d5>"+ article + "</div></p>");
                		out.print("<br><b> Date: </b>"+ date );
                		out.print("<br><b>Eligible Students: </b>"+ degree +"students");
                		//out.print("<br><b>Send Your Resume to:</B>" + email);
                        out.print("</fieldset>");
                				
                	}
                	if(tabname.equals("query"))
                	{   tb=5;
                		rs=st.executeQuery("select * from query where query_id="+a);
                		rs.next();
                		comp=rs.getString(2);
                		article=rs.getString(4);
                		degree=rs.getString(3);
                		date=rs.getDate(1);
                		//email=rs.getString(6);
                		out.print("<fieldset>");
                		out.print("<Legend>" + comp+ "</legend>");
                		out.print("<p>"+ article + "</p>");
                		out.print("<br><b> Date: </b>"+ date );
                		out.print("<br><b>Level: </b>"+ degree +" level");
                		//out.print("<br><b>Send Your Resume to:</B>" + email);
                        out.print("</fieldset>");
                        
                				
                	}
                %>
                    <div class="cleaner"></div>
                    </div> 
                
              <div class="news_box">
                     <b>
                     Comments:
                     </b><br/>
                     <%
                     rs=st.executeQuery("select comment,user_id,date from comment where article_id= "+a+" and table_name=" +tb);
                     if(rs!=null)
                     {
                    	 while(rs.next())
                    	 {
                    		 String cmnt= rs.getString(1);
                    		 String user= rs.getString(2);
                    		 Date dt= rs.getDate(3);
                    		 out.print("<div id=dv>");
                    		 out.print("<b>"+user+":</b> "+cmnt);
                    		 out.print("<br>"+dt+"<br/>");
                    		 out.print("</div>");
                    		 out.print("<br/>");
                    	 }
                    	 
                     }
                     
                     %>
                      <div id="d1">
                      		
                      </div>
                      <form >
						comment<br><textarea name="comment"></textarea>
						<br/>
						<input type="button" value="publish" onclick="fn1(comment.value,<%= a%>,<%= tb%>)"/>
					</form>
                    <div class="cleaner"></div>
                </div>
                
              <div class="news_box">
                    
                <div class="cleaner"></div>
                </div>
              
                
                <div class="cleaner"></div>
                  
                </div>
            
            	<div class="box_bottom"><span></span></div>
            </div>
        	
        </div> <!-- end of templatemo_content -->
        
       	<div id="templatemo_right_sidebar">
        
        	<div class="templatemo_box">
            	<h2><span></span>Login Here</h2>
                
                <div class="body">
                    
                    <ul class="side_menu">
					<form action="logout.jsp" method="post">
                        <p>
                            <%  String un=(String)session.getAttribute("user_name");
                            out.print("wecome "+un);
                           %>
                           <br/><br/>
                         <input type="submit" value="LOGOUT">
                        </p>
					</form>                  
                    </ul>
                  
                </div>
            
            	<div class="box_bottom"><span></span></div>
            </div>
            
            <div class="sidebar_box">
            	<a href="http://www.flashmo.com/page/1" target="_parent"><img src="images/nightlife.jpg" alt="Night Life" /></a>            </div>
            
            <div class="sidebar_box">
            	<a href="http://www.templatemo.com/page/1" target="_parent"><img src="images/city-zoo.jpg" alt="City Zoo" /></a>            </div>
        
      </div> <!-- end of right_sidebar -->
        
        <div class="cleaner"></div>
    
    </div> <!-- end of templatemo_content_wrapper -->

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">

       
    
       
   </div>  -->
	<!-- end of footer -->
</div> <!-- end of templatmeo_footer_wrapper --> 
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>