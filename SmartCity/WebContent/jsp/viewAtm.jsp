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
					<h1 style="color: white">Add ATM</h1>
					<div class="article">
<form action="/SmartCity/DeleteAtm" method="post">
<table border=3>
<tr><th>SELECT</th><th>BANK NAME</th><th>LOCATION</th><th>UPDATE</th></tr>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;

con=CrudOperation.createConnection();

String quer="select * from atm";


	try{
		ps=con.prepareStatement(quer);
	rs=ps.executeQuery();
	while(rs.next())
	{	
	String d=rs.getString("sno");
	String e=rs.getString("name");
	String f=rs.getString("location");
	
	%>
	
	<tr><td><input type="checkbox" name="chk" value=<%=d %>></td><td><%=e %></td><td><a href="https://www.google.co.in/maps/search/<%=e %>+atm+location+in+<%=f %>+lucknow/@26.8400337,80.8885167,12z/data=!3m1!4b1" target="_blank"><span><%=f %></span></a></td><td><a href="/SmartCity/jsp/updateAtm.jsp?msid=<%=rs.getString("sno") %>">EDIT</a></td></tr>
	<%}
}
catch(SQLException se)
{
	System.out.println(se);}
%>
<tr><td colspan="4"><input type="submit" value="DELETE"> </td></tr>
</table>

</form>
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
	

	<%} %>

</body>
</html>