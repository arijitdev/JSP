// A Servlet to give response in plain test form
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
	
		private static PreparedStatement pst=null;


		public void init(ServletConfig config) throws ServletException {
		
				super.init(config);
				try {
					
					Class.forName("com.mysql.jdbc.driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","aRijit1@3");
					
					pst=con.prepareStatement("select * from users where username=? and password=?");
					
				}catch(Exception e) {
					
					e.printStackTrace();
				
				}
		
		}
		
		/*public void service(ServletRequest request,ServletResponse response) throws ServletException,IOException {
		
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("Welcome to servlet @localhost");
		
		}*/
		
		public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
			
			
				String uid=request.getParameter("uname");
				String pwd=request.getParameter("psw");
				
				try {
					
					pst.setString(1,uid);
					pst.setString(2,pwd);
					
					ResultSet rs=pst.executeQuery();
					if(rs.next()) {
						//valid user
						
						RequestDispatcher rd=request.getRequestDispatcher("admin");
						rd.forward(request,response);
					
					} else {
						//invalid user
						
						response.setContentType("text/html");
						PrintWriter out = response.getWriter();
						out.println("<p style=color:cyan;font-size:20px;text-align:center>Invalid Username/Password!!!!</p>");
						
						RequestDispatcher rd=request.getRequestDispatcher("Login.html");
						rd.include(request,response);
					}
				
				}catch(Exception e) {
					
					e.printStackTrace();
				
				}
		
		
		}
		
		public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		
				doGet(request,response);
		
		}
		
		public void destroy() {
		
		}

}