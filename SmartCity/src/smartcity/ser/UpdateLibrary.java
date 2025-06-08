package smartcity.ser;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import smartcity.db.CrudOperation;

/**
 * Servlet implementation class UpdateCoaching
 */
@WebServlet("/UpdateLibrary")
public class UpdateLibrary extends HttpServlet {
	HttpSession hs=null;
	private Connection con=null;
	private ResultSet rs=null;
	private PreparedStatement ps=null;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateLibrary() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs=null;
		hs=request.getSession(false); 
		int ui=(Integer)hs.getAttribute("sno");
		String name=request.getParameter("txtname");
		String location=request.getParameter("txtlocation");
		String website=request.getParameter("txtmail");
	    String strupdate="update library set name=?, location=?, website=? where sno=?";
		con=CrudOperation.createConnection();
		try
		{
			ps=con.prepareStatement(strupdate);
			ps.setString(1, name);
			ps.setString(2, location);
			ps.setString(3, website);
			ps.setInt(4, ui);
		
			int rw=ps.executeUpdate();
			if(rw>0)
			{
				response.sendRedirect("jsp/viewLibrary.jsp");
			}
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}	}

}
