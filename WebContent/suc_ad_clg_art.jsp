<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>City Portal</title>
<meta name="keywords" content="city portal, 3 columns, free css templates, website templates, white color" />
<meta name="description" content="City Portal is a 3-column free website template for everyone" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
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
                <li><a href="#"><img src="images/templatemo_home.jpg" alt="home" /></a></li>
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
                        <li><a href="#">Post a query!!</a></li>
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
      </p>
                  
              </div>
            
           	  <div class="box_bottom"><span></span></div> -->
            </div>
            
            <div class="templatemo_box">
            	<h2><span></span>WELCOME ADMIN</h2>
                
                <div class="body">
                    
                    <div class="news_box">
                           <%
                           int ano=0;
                    		 ResultSet rs=null;
                           Class.forName("com.mysql.jdbc.Driver");
                           Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/scoutyou1","root","");
                           //Statement st=cn.createStatement();
                           //st.executeUpdate("insert into clg_article(article,branch,title,article_no,email_id,user_id) values('"+article+"','"+branch+"','"+title+"','"+ano+"','"+email+"','"+uid+"')");
                           //response.sendRedirect("empinsert2.jsp");
                           Statement st = cn.createStatement();
                           String ref= request.getHeader("Referer");
                           if(ref.contains("scl_art_servlet"))
                           {
                               rs=st.executeQuery("select max(article_no) from sch_article");
                               rs.next();
                           }
                           else
                        	   if(ref.contains("intern_jsp"))
                        	   {
                            	   rs=st.executeQuery("select max(add_no) from intern");
                            	   rs.next();
                               }
                        	   else
                        		   if(ref.contains("ad_scho_jsp"))
                            	   {
                                	   rs=st.executeQuery("select max(sch_id) from scholarship");
                                	   rs.next();
                                   }
                        		   else
                        			   if(ref.contains("query_ad_jsp"))
                                	   {
                                    	   rs=st.executeQuery("select max(query_id) from query");
                                    	   rs.next();
                                       }
                        			   else
                           {
                        	   rs=st.executeQuery("select max(article_no) from clg_article");
                        	   rs.next();
                           }
                           	 ano = rs.getInt(1);
                           
                             
                           %>
                           CONGRATS!!!! this was our <%=ano%> 
                           <%
                           if(ano%10 == 1)
                        	   out.print("<sup>st</sup>");
                           else
                           if(ano%10 == 2)
                        	   out.print("<sup>nd</sup>");
                           else
                        	   if(ano%10 == 3)
                        	   out.print("<sup>rd</sup>"); 
                        	   else
                        		   out.print("<sup>th</sup>");
                           %>
                            entry hurray!!!
                <div class="cleaner"></div>
                </div>
               
                <div class="more float_r"><a href="#">View All</a></div>
                
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