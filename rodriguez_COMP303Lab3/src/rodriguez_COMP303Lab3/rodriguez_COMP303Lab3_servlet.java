package rodriguez_COMP303Lab3;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class rodriguez_COMP303Lab3_servlet
 */
@WebServlet("/rodriguez_COMP303Lab3_servlet")
public class rodriguez_COMP303Lab3_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rodriguez_COMP303Lab3_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out=response.getWriter();  
		String[] topic = new String [3];
		String[] topics = new String [3];
		
		
		rodriguez_COMP303Lab3_bean bean = new rodriguez_COMP303Lab3_bean();
		bean.setName(request.getParameter("inputName"));
		bean.setStreetAddress(request.getParameter("inputAddress"));
		bean.setPhone(request.getParameter("inputPhone"));
		topic[0] = request.getParameter("pepperoni");
		topic[1] = request.getParameter("sausage");
		topic[2] = request.getParameter("cheese");
		bean.setTopics(topic);
		
		
		
		topics = bean.getTopics();
		out.print(topics[0] +topics[1] +topics[2] );
		
		//RequestDispatcher rd=request.getRequestDispatcher("rodriguez_COMP303Lab3_confirm.jsp");  
		//rd.forward(request, response);  
	}
	


}
