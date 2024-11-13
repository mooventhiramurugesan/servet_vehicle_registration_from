package vehicle;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/vehicledetails")
public class vehicledetails extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out =response.getWriter();
		
		String customername=request.getParameter("customerName");
		String vehiclename=request.getParameter("vehicleName");
		String intime=request.getParameter("intime");
		String outtime =request.getParameter("outtime");
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root","root");
			java.sql.Statement str=con.createStatement();
		    String query="insert into vehicledetails(customerName,vehicleName,intime,outtime)"
		    		+ " values ('"+customername+"','"+vehiclename+"','"+intime+"','"+outtime+"')";
		    int rs=str.executeUpdate(query);
		    if(rs>0)
		    {
		    	RequestDispatcher rs1=request.getRequestDispatcher("vehicle1.jsp");
		        rs1.forward(request, response);
		    }
		    else
		    {
		    	out.print("please enter the full details");
		    }
		} 
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
	}

}
