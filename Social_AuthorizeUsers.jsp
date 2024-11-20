<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Social Server User Authorization Page</title>
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
.style40 {color:#CC3333}

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
        <h2 class="style2" style=" color:#D64F14">Authorize Users..</h2>
		<table width="592" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="37"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style5 style56 style57">ID</div></td>
                      <td  width="116" valign="middle" height="34" style="color: #660000;"><div align="center" class="style5 style56 style57">User Image</div></td>
                      <td  width="109" valign="middle" height="34" style="color: #660000;"><div align="center" class="style5 style56 style57">User Name</div></td>
                      <td  width="116" valign="middle" height="34" style="color: #660000;"><div align="center" class="style5 style56 style57">Email</div></td>
                      <td  width="100" valign="middle" height="34" style="color: #660000;"><div align="center" class="style5 style56 style57">Address</div></td>
					  
                      <td  width="81"  valign="middle" height="34" style="color: #660000;"><div align="center" class="style5 style56 style57">Status</div></td>
                    </tr>
                    
                    <%
					  
					  	String sname="Network";
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user where sname='"+sname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(6);
								s4=rs.getString(11);
								s5=rs.getString(10);
								
								
								
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style22"><span class="style22">
                        <%out.println(i);%>
                      </span></div></td>
                      <td width="116" rowspan="1" align="center" valign="middle" ><div class="style5 style37 style54 style55 style22" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;" />
                      </a> </div></td>
          <td height="0" align="center"  valign="middle"><div align="center" class="style22">
                            <span class="style40">
                            <b><a href="Social_UserProfile.jsp?uname=<%=s1%>&type=<%="Social_Authorize"%>&id=<%=i%>"><%out.println(s1);%></a></b>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style22">
                            <span class="style22">
                            <%out.println(s2);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22">
                            <span class="style22">
                            <%out.println(s3);%>
                            </span></div></td>
					  
                      <%
						if(s5.equalsIgnoreCase("waiting"))
						{
						
						%>
                      <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style5 style20 style30 style37">
                          <div align="center" class="style20 style37 style46"><a href="Social_UserStatus.jsp?id=<%=i%>" class="style32 style30">waiting</a></div>
                      </div></td>
                      <%
						}
						else
						{
						%>
                      <td width="17" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58">
                        <%out.println(s5);%>
                      </div></td>
                      <%
						}
						
						%>
                    </tr>
                    <%
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
			        <p align="left" class="style14">&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
			        <p align="left" class="style14">&nbsp;</p>
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
