package devop_sproject.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import devop_sproject.dao.studentdao;
import devop_sproject.dto.studentdto;

@WebServlet("/delete")
public class deletebyid extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(req, resp);
		
		
		
		String id=req.getParameter("id");
//		System.out.println(id);
		int cid=Integer.parseInt(id);
		
		
	    studentdao dao=new studentdao();
		String msg=dao.delete(cid);
	
//		res.getWriter().print(msg);
		List<studentdto> list=dao.fetchall();
		
		
		req.setAttribute("objects",list);
		RequestDispatcher rd=req.getRequestDispatcher("profile.jsp");
		rd.forward(req, resp);
		
		
		
		
		
	}
	
}
