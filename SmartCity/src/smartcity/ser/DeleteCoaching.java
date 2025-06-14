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
 * Servlet implementation class DeleteCoaching
 */
@WebServlet("/DeleteCoaching")
public class DeleteCoaching extends HttpServlet {
	HttpSession hs=null;
	private Connection con=null;
	private ResultSet rs=null;
	private PreparedStatement ps=null;

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCoaching() {
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
		hs=request.getSession(false);
		int f=0;
		String uid=(String)hs.getAttribute("info");
		String[] chk=request.getParameterValues("chk");
		if(hs.isNew())
		{
			response.sendRedirect("index.jsp?msg=unauthorised access");}
		else{
			con=CrudOperation.createConnection();
			String quer="delete from coachingcenter where sno=?";
			try
			{
				ps=con.prepareStatement(quer);
			for(int i=0;i<chk.length;i++)
			{
			
			ps.setString(1,chk[i]);
			ps.addBatch();
		}	int rw[]=ps.executeBatch();
		for(int i=0;i<rw.length;i++)
		{
			if(rw[i]==0)
			{
				f=1;
			}
		}
		if(f==0)
			
		{
			response.sendRedirect("jsp/viewCoaching.jsp");// TODO Auto-generated method stub
		}
		else
		{response.sendRedirect("jsp/admin.jsp");
		}
			}catch(SQLException se)
			{
				System.out.println(se);
			}	}

}
}