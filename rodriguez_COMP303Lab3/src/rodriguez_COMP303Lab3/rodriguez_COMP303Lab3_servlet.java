//Diego Rodriguez 
package rodriguez_COMP303Lab3;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
		//Variables
		String[] topic = new String [3];
		String topics = null;
		
		//Save the properties in the model
		rodriguez_COMP303Lab3_bean bean = new rodriguez_COMP303Lab3_bean();
		bean.setName(request.getParameter("inputName"));
		bean.setStreetAddress(request.getParameter("inputAddress"));
		bean.setPhone(request.getParameter("inputPhone"));
		topic[0] = request.getParameter("pepperoni");
		topic[1] = request.getParameter("sausage");
		topic[2] = request.getParameter("cheese");
		//make if to join the topis
		for(int i = 0; i <=2; i++){
			if(topic[i] != null){
				if (topics == null){
					topics = topic[i];	
				}else{
					topics = topics +", " +topic[i];	
				}					
			}
		}
		bean.setTopic(topics);
		bean.setPay(request.getParameter("optradio"));
		
		//Send to DB
		try {
        	//connect to the DB
			Class.forName("com.mysql.jdbc.Driver");
	        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
	        System.out.println("Connected !");
	        System.out.println(bean.getName());
	        System.out.println(bean.getStreetAddress());
	        System.out.println(bean.getPhone());
	        System.out.println(bean.getTopic());
	        
        	//prepared statement query with the data
            PreparedStatement pst = conn.prepareStatement("INSERT INTO pizza (NAME, ADDRESS, PHONE, TOPPINGS, PAYMENT) VALUES (?, ?, ?, ?, ?);");
            pst.setString(1, bean.getName());
            pst.setString(2, bean.getStreetAddress());
            pst.setString(3, bean.getPhone());
            pst.setString(4, bean.getTopic());
            pst.setString(5, bean.getPay());	     
            pst.executeUpdate();
            
            //Close DB connection
            conn.close();
            out.print("<h1>Added succesfully<h1>");           

        } 
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
		
		request.setAttribute("pizza", bean);
		
			
		RequestDispatcher view =request.getRequestDispatcher("rodriguez_COMP303Lab3_confirm.jsp");  
		view.forward(request, response);  
	}
	


}
