<%@ page language="java" import="java.sql.*,smartcity.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/coin-slider.css" />
<title>SMARTCITY | HOME</title>
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
hs=request.getSession(false); 
String ui=(String)hs.getAttribute("info");
if(ui==null || hs.isNew())
{
response.sendRedirect("index.jsp?msg=unauthorised users");
}
else
{%>
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
						<li><a href="../jobseekerlogin.jsp"><span>Job Seeker</span></a></li>
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
				<div class="article">
						<h2>
							<span>THEATERS</span> DETAILS
						</h2>
						<div class="clr"></div>

						
						<form>
<table border=3>
<tr><th>NAME</th><th>LOCATION</th><th>WEBSITE</th></tr>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;

con=CrudOperation.createConnection();

String quer="select * from theaters";


	try{
		ps=con.prepareStatement(quer);
	rs=ps.executeQuery();
	while(rs.next())
	{	
	
	String e=rs.getString("name");
	String f=rs.getString("location");
	String g=rs.getString("website");
	%>
	
	<tr><td><%=e %></td><td><%=f %></td><td><a href="<%=g%>" target="_blank"><%=g %></a></td></tr>
	<%}
}
catch(SQLException se)
{
	System.out.println(se);}
%>

</table>

</form>

					</div>
				</div>
				<div class="sidebar">
					
					<div class="clr"></div>
					<div class="gadget">
						<h2 class="star">
							<span>Sidebar</span> Menu
						</h2>
						<div class="clr"></div>
						<ul class="sb_menu">
							<li><a href="atm.jsp">View Atm Locations</a></li>
							<li><a href="cityMapTourist.jsp">view city map</a></li>
							<li><a href="theaters.jsp">view theaters</a></li>
							<li><a href="hospitals.jsp">view hospitals</a></li>
							<li><a href="cityHistoryTourist.jsp">view city history</a></li>
							<li><a href="travelagency.jsp">view travel agency</a></li>
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
	
	<%} %>
</body>
</html>