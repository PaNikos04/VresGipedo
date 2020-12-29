package javagroup18;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class GameDao {

    public Game getGame(int idGame ) throws Exception{


        DB db = new DB();
		Connection con = null;
        PreparedStatement stmt = null;
		ResultSet rs = null;
        String sql = "SELECT * FROM ismgroup18.game WHERE idGame = ?;";

        try {
            con = db.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, idGame);
            rs = stmt.executeQuery();
            if(!rs.next()){
                return null;
            }
            Game game = new Game(rs.getInt("idGame"), rs.getString("game_date"), rs.getString("game_hour"), rs.getInt("participants"), rs.getInt("id_Field"), rs.getInt("id_Payment"));
            rs.close();
            stmt.close();
            return game;

        }   catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
            
            }
        }
            

    }

    public List<Integer> getmyids(int idClient) throws Exception{

        List<Integer> ids = new ArrayList<Integer>();
        DB db = new DB();
		Connection con = null;
        PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT idGame FROM ismgroup18.plays_in WHERE idClient = ?;";

        try{
            con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setInt(1, idClient);
            rs = stmt.executeQuery();

            if(!rs.next()){
                return null;   
            }
            rs.previous();
            while(rs.next()){
            ids.add(rs.getInt("idGame"));
            }
            return ids;


        } catch(Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
            
            }
        }

    }
    
}
