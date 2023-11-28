package devop_sproject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import devop_sproject.dao.studentdao;
import devop_sproject.dto.studentdto;

@WebServlet("/update")
public class update extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		String id =req.getParameter("id");
        int cid =Integer.parseInt(id);
       String un= req.getParameter("username");
       String em= req.getParameter("email");
       String no= req.getParameter("number");
       long cnum=Long.parseLong(no);
       String pwd=req.getParameter("password");
       String cpwd=req.getParameter("cpassword");
       String gen=req.getParameter("gender");
////       System.out.println(gen);
       String dob=req.getParameter("dob");  
       String add=req.getParameter("address");
       
       
       
       studentdto dto =new studentdto();
       dto.setId(cid);
       dto.setUsername(un);
       dto.setEmail(em);
       dto.setPhoneno(cnum);
       dto.setPwd(pwd);
       dto.setCpwd(cpwd);
       dto.setGender(gen);
       dto.setDob(dob);
       dto.setAddress(add);
       
       
       studentdao dao=new studentdao();
       String msg=dao.update(dto);
        resp.getWriter().print(msg);

}
	
	
}
