package javagroup18;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FieldDao {
	//Telika isws einai lathos o pinakas Category
    public List<Field> getFields(int idCategory, int idRegion) throws Exception {

        List<Field> fields = new ArrayList<Field>();
				
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT * FROM ismgroup18.field WHERE idCategory = ? AND idRegion = ?;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, idCategory);
			stmt.setInt(2, idRegion);
            rs = stmt.executeQuery();
            while(rs.next()) {
                fields.add(new Field(rs.getInt("idField"), rs.getString("street"), rs.getString("number"), rs.getString("title"), rs.getInt("capacity"), rs.getDouble("participant_cost"), rs.getString("url_img"), rs.getString("phone"), rs.getInt("idCategory"), rs.getInt("idOwner"), rs.getInt("idRegion")));
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
	
	public Field getField(int id) throws Exception {			
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT * FROM ismgroup18.field WHERE idField = ?;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
			if (!rs.next()) {
				return null;
			}
			Field field = new Field(rs.getInt("idField"), rs.getString("street"), rs.getString("number"), rs.getString("title"), rs.getInt("capacity"), rs.getDouble("participant_cost"), rs.getString("url_img"), rs.getString("phone"), rs.getInt("idCategory"), rs.getInt("idOwner"), rs.getInt("idRegion"));
			rs.close();
            stmt.close();
            return field;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}

    }
    /* ISWS DEN XREIASTEI
    public int getCapacity(int idCategory) throws Exception {
        int capacity = 0;
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT capacity FROM ismgroup18.field WHERE idCategory = ?;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, idCategory);
			rs = stmt.executeQuery();

			if(!rs.next()) {
				return -1;
            }
            capacity = rs.getInt("capacity");
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
	*/
	
	public int getFieldRating(int idField) throws Exception {
		int rating = 0;
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT ROUND(AVG(stars)) AS stars FROM ismgroup18.rating WHERE id__Field= ?;";
		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, idField);
			rs = stmt.executeQuery();

			if(!rs.next()) {
				return -1;
            }
            rating = rs.getInt("stars");
			rs.close();
			stmt.close();
			return rating;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
	}

	public String getRegion(int idRegion) throws Exception {
        String region;
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT name FROM ismgroup18.region WHERE idRegion = ?;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, idRegion);
			rs = stmt.executeQuery();

			if(!rs.next()) {
				return null;
            }
            region = rs.getString("name");
			rs.close();
			stmt.close();
			return region;
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