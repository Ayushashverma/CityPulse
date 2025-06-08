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
 * Servlet implementation class AddCoaching
 */
@WebServlet("/AddCoaching")
public class AddCoaching extends HttpServlet {
	HttpSession hs = null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCoaching() {
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
		con = CrudOperation.createConnection();
		hs = request.getSession(false);
		String name=request.getParameter("txtname");
		String location=request.getParameter("txtlocation");
		String email=request.getParameter("txtmail");
			
		String quer = "insert into coachingcenter(name,location,website) values(?,?,?)";
	
		try {
			ps = con.prepareStatement(quer);
           
			ps.setString(1, name);
			
			ps.setString(2, location);
			ps.setString(3,email);
			
			int rw = ps.executeUpdate();
			
			if (rw > 0) {
				
				response.sendRedirect("/SmartCity/jsp/addCoaching.jsp");
			}
		} catch (SQLException se) {
			System.out.println(se);

		} finally {
			try {
				if (ps != null) {
					ps.close();
					
				}
			} catch (SQLException se) {
				System.out.println(se);
			}
			// TODO Auto-generated method stub
		}// TODO Auto-generated method stub
		}	}


