package javagroup18;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RatingDao {
    public void createRating(Rating rat) throws Exception {
            
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String sql = "INSERT INTO ismgroup18.rating (id_Client, id__Field, stars, comments) VALUES (?, ?, ?, ?);";
        try {
            
            con = db.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, rat.getIdClient());
            stmt.setInt(2, rat.getIdField());
            stmt.setInt(3, rat.getStars());
            stmt.setString(4, rat.getComments());
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

    public void setRating(Rating rat) throws Exception {
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
        String sqlQuery = "UPDATE ismgroup18.rating SET stars = ? , comments = ? WHERE id_Client=? AND id__Field=?;";
        try {
			con = db.getConnection();
            stmt = con.prepareStatement(sqlQuery);
            stmt.setInt(1, rat.getStars());
            stmt.setString(2, rat.getComments());
            stmt.setInt(3, rat.getIdClient());
            stmt.setInt(4, rat.getIdField());
			stmt.executeUpdate();
			stmt.close();
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
    }

    public int getExistRating(int idClient, int idField) throws Exception {
        int flag;
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT stars FROM ismgroup18.rating WHERE id_Client=? AND id__Field=?;";
        try {
			con = db.getConnection();
            stmt = con.prepareStatement(sqlQuery);
            stmt.setInt(1, idClient);
            stmt.setInt(2, idField);
			rs = stmt.executeQuery();

			if(!rs.next()) {
				return 0;
            }
            flag = 6;
			rs.close();
			stmt.close();
			return flag;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
    }

    public List<Rating> getRatings(int idClient) throws Exception {

        List<Rating> ratings = new ArrayList<Rating>();
				
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT * FROM ismgroup18.rating WHERE id_Client = ?;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, idClient);
            rs = stmt.executeQuery();
            while(rs.next()) {
                ratings.add(new Rating(rs.getInt("id_Client"), rs.getInt("id__Field"), rs.getInt("stars"), rs.getString("comments")));
            }
			rs.close();
            stmt.close();
            return ratings;
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
