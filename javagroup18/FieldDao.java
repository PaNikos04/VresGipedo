package javagroup18;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Field;

public class FieldDao {

    public List<Field> findField(int idCategory) {

        List<Field> fields = new ArrayList<Field>();
				
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT * FROM ismgroup18.field; WHERE idCategory = ?";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, idCategory);
            rs = stmt.executeQuery();
            while(rs.next()) {
				//EDW EXOUME PROVLIMA... 
                fields.add(new Field(rs.getInt("idField"), rs.getString("street"), rs.getString("number"), rs.getString("region"), rs.getString("title"), rs.getDouble("participant_cost"), rs.getString("url_img"), rs.getString("phone"), rs.getInt("idCategory"), rs.getInt("idOwner")));
            }
			rs.close();
            stmt.close();
            return fields;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}

    }
    
    public int findCapacity(int idCategory){
        int capacity;
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT capacity FROM ismgroup18.category WHERE idCategory = ?;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, idCategory);
			rs = stmt.executeQuery();

			if(!rs.next()) {
				return -1;
            }
            capacity = rs.getInt(capacity);
			rs.close();
			stmt.close();
			return capacity;
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