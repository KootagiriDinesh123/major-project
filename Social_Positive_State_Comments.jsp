<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Social_Positive_State_Comments</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 18px}
.style3 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style4 {
	font-size: 18px;
	color: #660000;
	font-weight: bold;
}
.style5 {font-weight: bold}
.style6 {
	font-size: 16px;
	font-weight: bold;
}
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
        <h2>Long short-term memory (LSTM), negative
mental-state monitoring, photoplethysmography (PPG), semantic
graph inference, spatiotemporal attention.</h2>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2 class="style6 style2" style=" color:#D64F14">View Postive State Monitoring Details on Comments..</h2>
         <%@ include file="connect.jsp"%>

 <table width="778" border="1">
				  
				  <tr>
				   <td width="98" height="33" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style35 style2 style11 style12 style5">
						<div align="center"><strong>ID </strong></div>
					</div></td>
				  <td width="132" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style35 style2 style11 style12 style5">
						<div align="center"><strong>Post Name </strong></div>
					</div></td>
					<td width="107" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style35 style2 style11 style12 style5">
						<div align="center"><strong> User Name</strong></div>
					</div></td>
					<td width="200" bgcolor="#FFFF00" ><div align="left" class="style4 style36 style2 style11 style12 style5">
						<div align="center" class="style13">Post Details </div>
					</div></td>
					<td width="207" bgcolor="#FFFF00"><div align="left" class="style37 style4 style12 style11 style5">
						<div align="center">Date and Time</div>
					</div></td>
				  </tr>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Positive",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String ftype="Positive";
	
	try
	{
			String sql3="select uname,pname from posts";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0;
			%>
<style type="text/css">
<!--
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
-->
</style>
       
				 
				  <%

				  String query="select * from comments where pname='"+s7+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);//id
					s2=rs.getString(2); //pname
					s3=rs.getString(4); //  Comments
					s22=rs.getString(5); //uname
					s5=rs.getString(7);  // Date
					

				
			   
			       String sql1="select * from filter where category='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s3.toLowerCase().contains(t2)))
									{ 
	
			                 
									 %>
							  <tr>
							  <td width="98" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14"><strong><%=i%></strong></div></td>
								<td width="132" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14"><strong> <%=s2%></a></strong></div></td>
								<td width="107" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14"><strong> <%=s22%></a></strong></div></td>
								
								<td width="200" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14"><strong><%=s3%></strong></div></td>
								<td width="207" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14"><strong><%=s5%></strong></div></td>
		  </tr>
							  				
	    <%   					}

					      }
			      }
			        
			
				
				}
				
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
        
        
			
			
			
			
        
        <h2><a href="SocialMain.jsp">Back</a></h2>
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
