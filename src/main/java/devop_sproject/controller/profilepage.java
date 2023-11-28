package devop_sproject.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import devop_sproject.dao.studentdao;
import devop_sproject.dto.studentdto;

@WebServlet("/profilepage")
public class profilepage extends HttpServlet{

@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
//	super.doGet(req, resp);
//	
//	    Cookie[] cookie=req.getCookies();
//	   for(Cookie c:cookie) {
//	   String un=c.getValue();
//         String pwd=c.getValue();
	   //  	    resp.getWriter().print("hii"+" "+email);
	 
	   studentdao dao=new studentdao();
	   List<studentdto> list =dao.fetchall();
      
	    resp.getWriter().print(list);
		
		req.setAttribute("objects",list);
		
		RequestDispatcher rd= req.getRequestDispatcher("profile.jsp");
		rd.forward(req, resp);
	
 
}	
	
}
	
//}