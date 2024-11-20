<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <%@ include file="connect.jsp" %>
 <%@ page import="java.util.*"%>
 <%@ page import="java.text.*"%>
 <%@ page import="java.util.Date"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
 <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
 <%@ page import="org.bouncycastle.util.encoders.Base64"%>
 <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Social Add Filter Name Page</title>
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
.style4 {font-weight: bold}
-->
</style>
<script language="javascript" type="text/javascript">      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.category.value;
if(na3=="--Select--")

{
alert("Please Choose Category");
document.s.category.focus();
return false;
}
else
{

}

var na1=document.s.filter.value;
if(na1=="")

{
alert("Please Enter Filter");
document.s.filter.focus();
return false;
}
else
{

}
}
</script>
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
        <h2 class="style2" style=" color:#D64F14">Add Filter Name..</h2>
        <form name="s" method="post" y action="Social_AddFilterName1.jsp" onSubmit="return valid()"  ons target="_top">
		<p>
                      <%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select category FROM categories"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("category"));
		
	   }
	   
		
		
%>
                      
          </p>
					 <p>&nbsp;</p>            
                <label for="name"></label>
    <table width="470" border="0" align="center"  cellpadding="0" cellspacing="0" >
				<tr>
                  <td  width="173" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style21 style18 style15 style7" style="margin-left:20px;"><strong>Select Filter Category</strong></div></td>
                    <td  width="297" valign="middle" height="50" style="color:#000000;"><div align="left" style="margin-left:20px;">
                      <label>
        				<select id="s1" name="category">
         				<option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
       					
				    </select>
                  </label></td>
				</tr>
				
				
 <tr>
 <td  width="173" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style7 style15 style18 style21 style4" style="margin-left:20px;">Filters</div></td>
 <td  width="297" valign="middle" height="50" style="color:#000000;"><div align="left" style="margin-left:20px;">
 <input type="text" name="filter"></div></td>
 </tr>
</span><div > 
<tr>
<td height="30" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="Add" style="width:100px; height:25px; background-color:#D64F14; color:#FFFFFF;"/></td>
</tr></div>
	
				
				
				
		  </table>
		  <p>
		              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </p>
		
		</form>

	<p>&nbsp;</p>

  <div class="style6"> <a href="Social_ViewFilters.jsp" class="style2"> View Filters </a> </div>  
  <p align="right"><a href="SocialMain.jsp" class="style2">Back</a></p>
  
  
  
  
  
        
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
