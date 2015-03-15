package java4s;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SaveDetails extends HttpServlet  
{
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
		
		 Connection conn = null;
	    // Statement  stmt = null;
	    // ResultSet   rs = null;
	    // PrintWriter out = response.getWriter();
	     PreparedStatement pstmt = null;
	     int updateQuery = 0;
	     
	     int id = Integer.parseInt(request.getParameter("id"));
	     String fname = request.getParameter("fname");
	     String lname = request.getParameter("lname");
	     String company = request.getParameter("company");
	     String city = request.getParameter("city");
	     String emailid = request.getParameter("emailid");
	     String popdate = request.getParameter("popdate");
	     String intime = request.getParameter("intime");
	     String outtime = request.getParameter("outtime");
	     
	
	 try{
		 
		
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         
         System.out.println("Set connection : URL : jdbc:mysql://localhost:3306/visitor");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/visitor","visitor","visitor");

         System.out.println("Create pre statement.");
         String queryString = "INSERT INTO Users(id, fname,lname,company,city,emailid,popdate,intime,outtime) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                         /* createStatement() is used for create statement
                 object that is used for 
                   sending sql statements to the specified database. */
         pstmt = conn.prepareStatement(queryString);
         pstmt.setInt(1, id);
         pstmt.setString(2, fname);
         pstmt.setString(3, lname);
         pstmt.setString(4, company);
         pstmt.setString(5, city);
         pstmt.setString(6, emailid);
         pstmt.setString(7, popdate);
         pstmt.setString(8, intime); 
         pstmt.setString(9, outtime);
         
         updateQuery = pstmt.executeUpdate();
         if (updateQuery != 0) {
        	 System.out.println("inserted succ");
         } 
         else{
         System.out.println("Do datbase process.");
         }

      }catch(Exception e){
         e.printStackTrace();
     }finally{
         if(pstmt != null){
        	 try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
         if(conn != null){
             try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
     }

}
 

}
