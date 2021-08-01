package com.bridgelab.program;

import java.sql.*;

public class Employee_Pay_roll {

	public static void main(String[] args) {
		try 
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/Payroll_Service";
		String uname = "root";
		String pass = "Deepak@18";
		String query = "SELECT * FROM employee_payroll WHERE name = 'Deepak'";
		
		Connection con = DriverManager.getConnection(url,uname,pass);
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		while(rs.next())
			System.out.println(rs.getInt(1) + rs.getString(2) + " " + rs.getInt(3) + " " +  rs.getDate(4) + " " +rs.getString(5) + " " + rs.getDouble(6) + " " + rs.getString(7) + " " + rs.getString(8)
			                   + " " + rs.getInt(9)  + " " + rs.getInt(10) + " " + rs.getInt(11) + " " + rs.getInt(12) + " " + rs.getInt(13));
		st.close();
		
		con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
}