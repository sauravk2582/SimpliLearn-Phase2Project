package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginVerify
 */
public class LoginVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginVerify() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		
		if(uname.equals("sauravk") && password.equals("sauravk1")) 
		{
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			PrintWriter out = response.getWriter();
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.include(request, response);
			out.println("Invalid Credentials!!!!");
		}
	}

}
