package devop_sproject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insertlog")
public class insertlogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
		
		  String un=req.getParameter("username");
	        String pwd=req.getParameter("password");
//	
//	        Cookie cookie=new Cookie("bhavya",un);
//	        resp.addCookie(cookie);
//	        Cookie cookie1=new Cookie("Bhavy@1",pwd);
//	        resp.addCookie(cookie1);
	        
	        if(un.equals("bhavyashree")&&pwd.equals("Bhavy@1")) {
	        resp.sendRedirect("profilepage");
	        	
	        }else {
	        	  resp.getWriter().print("please enter correct username and password");
	        }
	
	}
	
}
