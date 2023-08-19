package user.registartion;

import java.io.IOException;
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
 * Servlet implementation class Registration
 */
@WebServlet("/register")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upassword = request.getParameter("password");
		String ucon_password = request.getParameter("con_password");
		RequestDispatcher dispatcher = null;
		Connection con =null;
		
		if(uname == null || uname.equals("")){
			request.setAttribute("status","invalidName");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request,response);
		}
		if(uemail == null || uemail.equals("")){
			request.setAttribute("status","invalidEmail");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request,response);
		}
		if(upassword == null || upassword.equals("")){
			request.setAttribute("status","invalidPassowrd");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request,response);
		}else if(!upassword.equals(ucon_password)){
			request.setAttribute("status","invalidConPassword");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request,response);
		}
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_details?useSSL=false","root","Suman@5081");
			PreparedStatement pst = con.prepareStatement("insert into users(uname,uemail,upassword,ucon_password) values(?,?,?,?)");
			
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, upassword);
			pst.setString(4, ucon_password);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("Login.jsp");
			if(rowCount > 0){
				request.setAttribute("status", "success");
			}else{
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
