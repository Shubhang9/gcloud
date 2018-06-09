package webapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/login.do")
public class LoginServlet extends HttpServlet{
	private UserValidationService service=new UserValidationService();
	
	@Override
	protected void doGet(HttpServletRequest Request, HttpServletResponse Response) throws ServletException, IOException{
		Request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(Request,Response);
	}
	@Override
	protected void doPost(HttpServletRequest Request, HttpServletResponse Response) throws ServletException, IOException {
		String name = Request.getParameter("name");
		String password = Request.getParameter("password");
		if(service.isUserValid(name, password)) {
			Request.setAttribute("name", name);
			Request.setAttribute("password", password);
			Request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(Request,Response);
		}else {
			Request.setAttribute("errorMessage", "Invalid Credentials!");
			Request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(Request,Response);
		}
	}
}