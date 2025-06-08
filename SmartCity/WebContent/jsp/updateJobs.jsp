<%@ page language="java" import="java.sql.*,smartcity.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/coin-slider.css" />
<script type="text/javascript" src="../js/cufon-yui.js"></script>
<script type="text/javascript" src="../js/cufon-aller.js"></script>
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../js/script.js"></script>
<script type="text/javascript" src="../js/coin-slider.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%HttpSession hs=null;
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
int f=0;
hs=request.getSession(false); 
String ui=(String)hs.getAttribute("info");
int mid=Integer.parseInt(request.getParameter("msid"));
HttpSession hs1=null;
hs1=request.getSession();
hs1.setAttribute("sno",mid);
System.out.println(mid);
if(ui==null || hs.isNew())
{
response.sendRedirect("index.jsp?msg=unauthorised users");
}
else
{
	
String strsql="select * from jobs where sno=?";

try
{
	 con=CrudOperation.createConnection();
	 ps=con.prepareStatement(strsql);
	
		
		ps.setInt(1,mid);
		
		rs=ps.executeQuery();
	
	  if(rs.next()) 
	  {
%>
<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo">
					<h1>
						<a href="../index.jsp">Smart<span>City</span> <small>Live
								Smart & Keep Your City Smart</small></a>
					</h1>
				</div>
				<div class="menu_nav">
					<ul>
						<li class="active"><a href="../index.jsp"><span>Home
									Page</span></a></li>
						<li><a href="../studentlogin.jsp"><span>Student</span></a></li>
						<li><a href="../businesslogin.jsp"><span>Business</span></a></li>
						<li><a href="../touristlogin.jsp"><span>Tourist
									Guide</span></a></li>
						<li><a href="../jobseekerlogin.jsp"><span>Job
									Seeker</span></a></li>
					</ul>
				</div>
				<div class="clr"></div>
				<div class="slider">
					<div id="coin-slider">
						<a href="#"><img src="../images/slide1.jpg" width="960"
							height="320" alt="" /> </a> <a href="#"><img
							src="../images/slide2.jpg" width="960" height="320" alt="" /> </a> <a
							href="#"><img src="../images/slide3.jpg" width="960"
							height="320" alt="" /> </a>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
		</div>
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<h1 style="color: white">VIEW INDUSTRIES</h1>
					<div class="article">
<form action="/SmartCity/UpdateJobs" method="post" onsubmit="return chkmain()">   
	<table style="margin-left:25%;">
			<tr>
				<td>NAME:</td><td colspan=2><input type="text" name="txtname" id="txtname" value="<%=rs.getString("name")%>"/></td>
			</tr>
			<tr>
			<td>DOMAIN:</td><td colspan=2><input type="text" name="txtlocation" id="txtlocation" value="<%=rs.getString("domain")%>"/></td></tr>
		    
			<tr>
				<td>WEBSITE</td><td colspan=2><input type="text" name="txtmail" id="txtmail" value="<%=rs.getString("website")%>"/></td>
			</tr>
			<tr style="text-align:center;"><td><input type="submit" name="register" value="UPDATE"/></td>
			<td><a href="viewJobs.jsp"><input type="button" name="cancel" value="CANCEL"/></a></td></tr>
		</table>
		</form>

<%}} catch(SQLException se)
{
System.out.println(se);
}}%>
</div>
				</div>
				<div class="sidebar">

					<div class="clr"></div>
					<div class="gadget">
						<h2 class="star">
							<span>Admin</span> Stuff
						</h2>
						<div class="clr"></div>
						<ul class="sb_menu">
							
							<li><a href="/SmartCity/jsp/addAtm.jsp">ADD ATM</a></li>
							<li><a href="/SmartCity/jsp/addHotels.jsp">ADD HOTELS</a></li>
							<li><a href="/SmartCity/jsp/addHospitals.jsp">ADD
									HOSPITALS</a></li>
							<li><a href="/SmartCity/jsp/viewCoaching.jsp">VIEW
									COACHING CENTERS</a></li>
							<li><a href="/SmartCity/jsp/addIndustries.jsp">ADD
									INDUSTRIES</a></li>
							<li><a href="/SmartCity/jsp/addJobs.jsp">ADD JOBS</a></li>
							<li><a href="/SmartCity/jsp/addLibrary.jsp">ADD LIBRARY</a></li>
							<li><a href="/SmartCity/jsp/addTheaters.jsp">ADD
									THEATERS</a></li>
							<li><a href="/SmartCity/jsp/addTravelAgency.jsp">ADD
									TRAVEL AGENCY</a></li>
							<li><a href="/SmartCity/jsp/viewHotels.jsp">VIEW HOTELS</a></li>
							<li><a href="/SmartCity/jsp/viewHospitals.jsp">VIEW
									HOSPITALS</a></li>
							<li><a href="/SmartCity/jsp/viewCollege.jsp">VIEW
									COLLEGE</a></li>
							<li><a href="/SmartCity/jsp/addCoaching.jsp">ADD
									COACHING CENTERS</a></li>
							<li><a href="/SmartCity/jsp/addCollege.jsp">ADD COLLEGE</a></li>
							<li><a href="/SmartCity/jsp/viewTravelAgency.jsp">VIEW
									TRAVEL AGENCY</a></li>
							<li><a href="/SmartCity/jsp/viewTheaters.jsp">VIEW
									THEATERS</a></li>
							<li><a href="/SmartCity/jsp/viewLibrary.jsp">VIEW
									LIBRARY</a></li>
							<li><a href="/SmartCity/jsp/viewJobs.jsp">VIEW JOBS</a></li>
							<li><a href="/SmartCity/jsp/viewIndustries.jsp">VIEW
									INDUSTRIES</a></li>


						</ul>





					</div>

				</div>
				<div class="clr"></div>
			</div>
		</div>
		<div class="fbg">
			<div class="fbg_resize">
				<div class="col c1">
					<h2>
						<span>Image</span> Gallery
					</h2>
					<a href="#"><img src="../images/gal1.jpg" width="75"
						height="75" alt="" class="gal" /></a> <a href="#"><img
						src="../images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a>
					<a href="#"><img src="../images/gal3.jpg" width="75"
						height="75" alt="" class="gal" /></a> <a href="#"><img
						src="../images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a>
					<a href="#"><img src="../images/gal5.jpg" width="75"
						height="75" alt="" class="gal" /></a> <a href="#"><img
						src="../images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a>
				</div>
				<div class="col c2">
					<h2>
						<span>Lucknow</span> Overview
					</h2>
					<p>Lucknow is a picture of a beaming culture within a strong
							political framework. The two layers have strong identities of
							their own, but how these meet is interesting. The juncture is
							marked by a melting effect – both melt when in contact with each
							other. This is due to the heat of diplomacy.</p>
					<ul class="fbg_ul">
						<li><a href="#">City Of nawabs</a></li>
						<li><a href="#">Ethnically beautiful</a></li>
						<li><a href="#">Tehzeeb ka shahar</a></li>
					</ul>
				</div>
				<div class="col c3">
					<h2>
						<span>Contact</span> Us
					</h2>
					
					<p class="contact_info">
						<span>Address:</span> Lucknow<br /> <span>Telephone:</span>
						+123-1234-5678<br /> <span>FAX:</span> +458-4578<br /> <span>Others:</span>
						+301 - 0125 - 01258<br /> <span>E-mail:</span> <a href="#">mail@yoursitename.com</a>
					</p>
				</div>
				<div class="clr"></div>
			</div>
		</div>
		<div class="footer">
			<div class="footer_resize">
				<p class="lf">
					&copy; Copyright <a href="#">MyWebSite</a>.
				</p>
				
				<div style="clear: both;"></div>
			</div>
		</div>
	</div>
	
</body>
</html>