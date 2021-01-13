package javagroup18;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Availability {

	public void Fill_Availability(int idField, String date, String hour, int status) throws Exception{
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		String sql = "INSERT INTO ismgroup18.field_availability (idField, date, hour, status) VALUES (?, ?, ?, ?);";
		try {
			
			con = db.getConnection();
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, idField);
			stmt.setString(2, date);
			stmt.setString(3, hour);
			stmt.setInt(4, status);
			stmt.executeUpdate();
			
			stmt.close();
			}
		catch (Exception e) {
			throw new Exception(e.getMessage());
		}
		finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
	}

}