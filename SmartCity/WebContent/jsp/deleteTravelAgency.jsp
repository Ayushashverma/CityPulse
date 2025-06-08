<%@ page language="java" import="java.sql.*,smartcity.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<form action="DeleteTravelAgency" method="post">
<table border=3>
<tr><th>SELECT</th><th>NAME</th><th>LOCATION</th><th>WEBSITE</th>UPDATE</tr>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;

con=CrudOperation.createConnection();

String quer="select * from travelagency";


	try{
		ps=con.prepareStatement(quer);
	rs=ps.executeQuery();
	while(rs.next())
	{	
	String d=rs.getString("sno");
	String e=rs.getString("name");
	String f=rs.getString("location");
	String g=rs.getString("website");
	%>
	
	<tr><td><input type="checkbox" name="chk" value=<%=d %>></td><td><%=e %></td><td><%=f %></td><td><%=g %></td><td><a href="jsp/updateTravelAgency.jsp?msid=<%=rs.getString("sno") %>">EDIT</a></td></tr>
	<%}
}
catch(SQLException se)
{
	System.out.println(se);}
%>
<tr><td colspan="4"><input type="submit" value="DELETE"> </td></tr>
</table>

</form>
<%}%>
</body>
</html>