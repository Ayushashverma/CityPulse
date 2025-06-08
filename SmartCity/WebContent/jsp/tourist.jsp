<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/coin-slider.css" />
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
							<span>Some Tourist</span> Attraction
						</h2>
						<p><h2>Bara Imambara-</h2></p>
						<p>Built by the fourth Nawab of Awadh Asaf-Ud-Daula in 1784
							Bara Imambara is formally known as Imambara-e-Asafi. The
							structure is known for it’s unique construction- the thick slab
							vaulted roofs have no girders or beams as support. Instead, the
							roofs are supported by the interlocking system of bricks. Bada
							Imambara Lucknow Bada Imambara | by Stefan H The other major
							interesting feature of the monument is the incredible labyrinth
							called Bhool Bhullaiya, which is located on the upper floor of
							the Bara Imambara. No one is allowed an entry without a guide.
							After exploring the labyrinth, a visit to the rooftop, one can
							view a scenic panorama of the city, which is breath-taking.</p>
						<p><h2>Rumi Darwaza-</h2></p>
						<p>Rumi Darwaza, which rises to a height of 60 ft, is one of
							the most impressive architectural structures of India. It was
							built by Nawab Asaf-ud-Daula in 1784. When viewed from the
							western side (Chota Imambara), it is a double arched gateway
							while when viewed from the eastern side (Bara Imambara), it looks
							like a Rajput palace. It is an apotheosis of Awadh architecture
							and is a must visit for history lovers. Rumi Darwaza Lucknow
							Image by Rajesh</p>
						<p><h2>Jama Masjid-</h2></p>
						<p>Located in the heart of the city, Jama Masjid stands
							upright on 260 pillars that supports 15 arched domes of various
							elevations. The monument is located in the Hussainabad area of
							Old Lucknow. The central gateway resembles the Rumi Darwaza with
							it’s two arches. It is among one of the best mosques in India and
							therefore a must visit. Jama Masjid Lucknow Image Credits:
							Shekher Sharma The people of Lucknow are among the most polite,
							munificent and most courteous people in India, full of fervor for
							their guests. A visit to Lucknow’s historical monuments would
							take you to an ethereal, titillating and spectacular level
							altogether. Therefore, a visit to Lucknow is a must where you
							would find culture, history and ‘tehzeeb’ all coherent in the
							atmosphere of the city. I would mention the other interesting
							places to visit in a separate article. Till then, Happy
							Travelling!! 🙂 🙂</p>
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