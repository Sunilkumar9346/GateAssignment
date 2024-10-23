package mts.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import mts.dto.Assignment1;

public class Daoservice {
	
	
	private Connection con;
	
	public Daoservice(){
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3305/assignmentdb","root","sunil123");
			System.out.println("Connection established....");
	}catch(Exception ex)
	{
		System.err.println("Not Connected to DB");
	}
		
	}
	
	public ArrayList<Assignment1>  getresults()
	{
		ArrayList<Assignment1> al=new ArrayList<Assignment1>();
		try {
			Statement stmt= con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from assignment1");
			while(rs.next())
			{
				Assignment1 event=new Assignment1();
				event.setEmail(rs.getString(1));
				event.setAssignment(rs.getString(2));
				event.setMarks(rs.getString(3));
				
				al.add(event);
			}
		}catch(Exception ex)
		{	System.out.println(ex);
		}
		return al;
	}

}
