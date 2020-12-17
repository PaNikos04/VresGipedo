package javagroup18;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClientDao {

    public int hello () {
        return 7;
    }

    public void register(Client user) throws Exception {
            
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String checkSql = "SELECT * FROM ismgroup18.client WHERE username = ? OR email = ?;";
        String sql = "INSERT INTO ismgroup18.client (name, surname, username, password, email, phone, region) VALUES (?, ?, ?, ?, ?, ?, ?);";
        try {
            
            con = db.getConnection();
            stmt = con.prepareStatement(checkSql);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                rs.close();
                stmt.close();
                throw new Exception("username or email already registered");
            }
            rs.close();
            
            stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getSurname());
            stmt.setString(3, user.getUsername());
            stmt.setString(4, user.getPassword());
            stmt.setString(5, user.getEmail());
            stmt.setString(6, user.getPhone());
            stmt.setString(7, user.getRegion());
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

    public Client authenticate(String username, String password) throws Exception {
		
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlQuery = "SELECT * FROM ismgroup18.client WHERE username=? AND password=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setString(1, username);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			if (!rs.next()) {
				throw new Exception("Wrong username or password");
			}

			Client client = new Client(rs.getString("name"), rs.getString("surname"), rs.getString("username"), rs.getString("password"), rs.getString("email"), rs.getString("phone"), rs.getString("region"));
			rs.close();
			stmt.close();
			db.close();
			return client;
			
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally{
			try {
				db.close();
			} catch (Exception e) {

			}
		}

			
		
	}
    
}