package webapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/login.do")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest Request, HttpServletResponse Response) throws ServletException, IOException{
		Request.setAttribute("name",Request.getParameter("name"));
		Request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(Request,Response);
	}
}