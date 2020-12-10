package javagroup18;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class ReserveDao {

    public List<List<String>> getAvail(int idField, String date) throws Exception {

        List<List<String>> avails = new ArrayList<List<String>>();


				
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT hour, status FROM ismgroup18.field_availability WHERE idField = ? AND date = ?;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, idField);
			stmt.setString(2, date);
            rs = stmt.executeQuery();
            while(rs.next()) {
				List<String> row = new ArrayList<String>();
                row.add(rs.getString("hour"));
                row.add(Integer.toString(rs.getInt("status")));
				avails.add(row);
            }
			rs.close();
            stmt.close();
            return avails;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}

	}

    
}
