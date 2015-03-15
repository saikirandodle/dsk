package java4s;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

public class OnServletLogin extends HttpServlet  
{
    protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		
		String user=req.getParameter("userName");
		String pass=req.getParameter("userPassword");
		
		pw.print("<font face='verdana'>");

 			try{
 				if(user.equals("dsk")&&pass.equals("dsk"))
  					res.sendRedirect("homepage.jsp");
			else
				  {                
						res.sendRedirect("loginfailure.jsp");               
			       }
 			}
 			catch (Exception e) {
				// TODO: handle exception
			}
	        
	    pw.print("</font>");
		pw.close();
	
	}

}
