<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*,java.security.MessageDigest" errorPage="error_handle.jsp" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Scout YOU!!</title>
<meta name="keywords" content="city portal, 3 columns, free css templates, website templates, white color" />
<meta name="description" content="City Portal is a 3-column free website template for everyone" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="no-back-button";}
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
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
                <input type="submit" name="Search"  alt="Search" id="searchbutton" title="Search" />
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
                        <li><a href="clg_or_scl_ad.jsp">Share Articles</a></li>
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
                  
              </div>   -->
            
           	  </div>
            
            <div class="templatemo_box">
            	<h2><span></span>Popular Articles</h2>
                
                <div class="body">
                    
                    <%String t1,t2,t3,t4,t5,a1,a2,a3,a4,a5; int n1,n2,n3,n4,n5; %>
                    <%Class.forName("com.mysql.jdbc.Driver");
        				
        		        
                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou1","root","");
                    Statement st = cn.createStatement();
                    ResultSet rs1=st.executeQuery("select * from clg_article where article_no=(select max(article_no) from clg_article)");
                    rs1.next();
                    t1=rs1.getString(3);
                    a1=rs1.getString(1);
                    n1=rs1.getInt(4);
                    ResultSet rs2=st.executeQuery("select * from sch_article where article_no=(select max(article_no) from sch_article)");
                    rs2.next();
                    t2=rs2.getString(3);
                    a2=rs2.getString(1);
                    n2=rs2.getInt(4);
                    ResultSet rs3=st.executeQuery("select * from intern where add_no=(select max(add_no) from intern)");
                    rs3.next();
                    t3=rs3.getString(2);
                    a3=rs3.getString(1);
                    n3=rs3.getInt(3);
                    ResultSet rs4=st.executeQuery("select * from scholarship where sch_id=(select max(sch_id) from scholarship)");
                    rs4.next();
                    ResultSet rs5=st.executeQuery("select * from query where query_id=(select max(query_id) from query)");
                    rs5.next();
                    %>
                <div class="news_box">
                      <fieldset>
                       <legend><h3>Recent College Article</h3></legend> 
                            <%
                        		out.print("<center><h4>" + t1 + "<h4><center><br/>");
                        		out.print("<p>" + a1.substring(0, 101) + "....<p><br/>");
                        	 %>
                        	 <div class="more float_r"><a href="viewall.jsp?anum=<%= n1%>&tabname=clg_article">View All</a></div>
                      </fieldset>   
                                
                        	 
                        
                   <div class="cleaner"></div>
                </div> 
                
              <div class="news_box">
                       <fieldset>
                       <legend><h3>Recent School Article</h3></legend> 
                            <%
                        		out.print("<center><h4>" + t2 + "<h4><center><br/>");
                        		out.print("<p>" + a2.substring(0, 101) + "....<p><br/>");
                        	 %>
                        	 <div class="more float_r"><a href="viewall.jsp?anum=<%= n2%>&tabname=sch_article">View All</a></div>
                      </fieldset>   
                                
                    <div class="cleaner"></div>
                </div>
                
              <div class="news_box">
                          <fieldset>
                       <legend><h3>Recent Internships Opportunities</h3></legend> 
                            <%
                        		out.print("<center><h4>" + t3 + "<h4><center><br/>");
                        		out.print("<p>" + a3.substring(0, 101) + "....<p><br/>");
                        	 %>
                        	 <div class="more float_r"><a href="viewall.jsp?anum=<%= n3%>&tabname=intern">View All</a></div>
                      </fieldset> 
                <div class="cleaner"></div>
                </div>
              
                
                  
                </div>
            
            	<div class="box_bottom"><span></span></div>
            </div>
        	
        </div> <!-- end of templatemo_content -->
        
       	<div id="templatemo_right_sidebar">
        
        	<div class="templatemo_box">
        	
        	<!-- jstl portion for validating user -->
          	
          <%
          Class.forName("com.mysql.jdbc.Driver");
         // Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou","root","");
         // Statement st=cn.createStatement();
          String un=request.getParameter("uname");
          String pass=request.getParameter("pass");
          StringBuffer hash = new StringBuffer();
        	  MessageDigest alg = MessageDigest.getInstance("MD5");
        		alg.reset(); 
        		alg.update(pass.getBytes());
        		byte[] digest = alg.digest();
        		
        		String hx;
        		for (int i=0;i<digest.length;i++)
        		{
        			hx =  Integer.toHexString(0xFF & digest[i]);
        			if(hx.length() == 1)
        			{hx = "0" + hx;}
        			hash.append(hx);
        		}
        	  ResultSet rs=st.executeQuery("select password from user_info where user_id='"+ un +"'");
        	  
        	  if(rs.next())
        	   {
        		  //rs.next();
        		  String p1=rs.getString(1);
        		  
        		 // hash.toString();
        		 // String s1="abc",s2="abc";
        		  if(p1.equals(hash.toString()))
        		   {
        			   session.setAttribute( "user_name", un);
        			   out.print("<h2><span></span>ScoutYou</h2><div class=body>");
        			   String stnm=(String)session.getAttribute("user_name");
        			   out.print("welcome "+ stnm +"!!!!");
        			   out.print("<form action=logout.jsp><input type=submit value=Logout></form></div>");
        	       }
        		   else
        		   {
        			   out.print("<h2><span></span>ScoutYou</h2><div class=body>");
        			   out.print(p1);
        			   out.print(hash);
        			   out.print("Invalid username or password");
        			   //out.print(hash);
        			   //out.print("<form action=logout.jsp><input type=submit value=Logout></form></div>");  
        			   out.print("<a href=home.jsp> BACK </a></div>");
        		   }
        	   }
        	  else
        	  {
        		  out.print("<h2><span></span>ScoutYou</h2><div class=body>");
   			      out.print("You are not registered!!!please register yourself!!");
   			      //out.print("<form action=logout.jsp><input type=submit value=Logout></form></div>");  
   			      out.print("<a href=home.jsp> BACK </a></div>");
        		  
        		  
        	  }
        	  
          
          
          
          %>  	
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