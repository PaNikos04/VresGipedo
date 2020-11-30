package javafiles;
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
        String sql = "INSERT INTO ismgroup18.client (id, name, surname, username, password, email, phone, region) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
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
            stmt.setInt(1, user.getId());
            stmt.setString(2, user.getName());
            stmt.setString(3, user.getSurname());
            stmt.setString(4, user.getUsername());
            stmt.setString(5, user.getPassword());
            stmt.setString(6, user.getEmail());
            stmt.setString(7, user.getPhone());
            stmt.setString(8, user.getRegion());
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