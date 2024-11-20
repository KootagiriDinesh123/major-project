<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Requests Page</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 18px}
.style3 {
	font-size: 18px;
	color: #660000;
	font-weight: bold;
}
.style4 {
	font-size: 24px;
	color: #FF0000;
}
.style6 {padding: 0; margin: 0; width: 100%; line-height: 0; clear: both; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style2">THE SOCAIL MEDIABREAK-UP: PSYCHO-BEHAVIORAL MEASURES 
AND IMPLICATIONS</span></a></h1>
      </div>
      <div class="menu">
        <ul>
          <li><a href="index.html" class="active"><span>Home</span></a></li>
          <li><a href="SocialLogin.jsp"><span>Social Server</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="contact.html"><span></span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
        <h2>Mental Disorders, Emotional Patterns, Machine Learning</h2>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2 class="style2" style=" color:#D64F14">All Friend Requests and Response..</h2>
        <table width="750" border="1" align="center">
                    <tr>
                      <td width="27" height="47" align="center" valign="middle"><div align="center" class="style33 style49"><span class="style67 style3"><strong>Id </strong></span></div></td>
                      <td width="100" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style3 ">Request From </span></strong></div></td>
                      <td width="105" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style3 ">Requested User </span></strong></div></td>
                      <td width="101" align="center" valign="middle"><div align="center" class="style55 style34 style65"><strong><span class="style3 ">Request To </span></strong></div></td>
                      <td width="126" align="center" valign="middle"><div align="center" class="style34 style50"><span class="style3"> Request To Name </span></div></td>
					  <td width="87" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style3 ">Social Server</span></strong></div></td>
                      <td width="70" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style3 ">Status</span></strong></div></td>
                      <td width="87" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style3 ">Date</span></strong></div></td>
                    </tr>
                    <%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0,k=0;

     try 
	{
           			   String sname="Network";
					   String query="select * from  frdrequest where sname='"+sname+"'"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(4);
							
				
								String query1="select * from user where username='"+s2+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt(1);  
							
									String query2="select * from user where username='"+s3+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt(1);  
								
		
%>
                    <tr>
                      <td height="111"><div align="center" class="style48 style52 style54"><%=i%></div></td>
                      <td><div align="center" class="style48 style52 style54">
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style48 style52 style56"><a href="Social_UserProfile.jsp?uname=<%=s2%>&type=<%="Social_FriendRequests"%>&id=<%=j%>"><%=s2 %></a></div></td>
                      <td><div align="center" class="style52 style54">
                          <input  name="image2" type="image" src="user_Pic.jsp?id=<%=k%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style48 style52 style56"><a href="Social_UserProfile.jsp?uname=<%=s3%>&type=<%="Social_FriendRequests"%>&id=<%=k%>"><%=s3 %></a></div></td>
					  <td><div align="center" class="style48 style52 style54"><%= s6%></div></td>
                      <td><div align="center" class="style48 style52 style54"><%= s5%></div></td>
                      <td><div align="center" class="style48 style52 style54"><%= s4%></div></td>
                    </tr>
                    <%
		  }
	  }
		
	   }
	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
					<p>&nbsp;</p>
			<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="SocialMain.jsp" class="style14">Back</a></div></td>
            </tr>
          </table>
				  
				  
				  
				  
				  
				  
				  
        
        <h2>&nbsp;</h2>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li><a href="SocialMain.jsp">Home</a></li>
		  <li><a href="SocialLogin.jsp">Logout</a></li>
        </ul>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="FBG"></div>
  <div class="footer">
    <div class="footer_resize">
      <div class="clr">
        <div align="center" class="style3">THE SOCAIL MEDIABREAK-UP: PSYCHO-BEHAVIORAL MEASURES 
AND IMPLICATIONS</div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div align=center></div>
</body>
</html>
