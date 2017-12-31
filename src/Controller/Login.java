package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;

import javax.servlet.http.HttpSession;

import DAO.UsersDAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Login() {
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/index.jsp");
	       dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("userName");
		String password = request.getParameter("password");
		
		try {
			Integer tbl =UsersDAO.LoadUser(username, password);
			if(tbl==1)
			{
				HttpSession session = request.getSession();
				session.setAttribute("userName", username);
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/Admin_Manager_Post.jsp");
		        
			       dispatcher.forward(request, response);
			       System.out.println("Connection Successfully !");
			       System.out.println("Hello "+username);
			}
			if(tbl==2)
			{
				HttpSession session = request.getSession();
				session.setAttribute("userName", username);
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/Reviewer_Check.jsp");
		        
			       dispatcher.forward(request, response);
			       System.out.println("Connection Successfully !");
			       System.out.println("Hello "+username);
			}
			if(tbl==3)
			{
				HttpSession session = request.getSession();
				session.setAttribute("userName", username);
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/Writer_Manager.jsp");
		        
			       dispatcher.forward(request, response);
			       System.out.println("Connection Successfully !");
			       System.out.println("Hello "+username);
			}
			else
			{
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	}
}