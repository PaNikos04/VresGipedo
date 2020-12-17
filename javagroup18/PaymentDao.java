package javagroup18;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.text.SimpleDateFormat;  
import java.util.Date;  

public class PaymentDao {

    public void createPayment(Payment pay) throws Exception {
            
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String sql = "INSERT INTO ismgroup18.payment (date, cost, credit_number, exp_month, exp_year, cvv, fullname, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        try {
            
            con = db.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, pay.getDate());
            stmt.setDouble(2, pay.getCost());
            stmt.setString(3, pay.getCredit_number());
            stmt.setInt(4, pay.getExp_month());
            stmt.setInt(5, pay.getExp_year());
            stmt.setInt(6, pay.getCvv());
            stmt.setString(7, pay.getFullname());
            stmt.setString(8, pay.getEmail());
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

    public static String getMyDate() { 

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date d = new Date();
        String currentdate = formatter.format(d);
        return currentdate;
    }  

    public void createGame(String game_date, String game_hour, int participants, int idField, int IdPayment) throws Exception {
            
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String sql = "INSERT INTO ismgroup18.game (game_date, game_hour, participants, id_Field, id_Payment) VALUES (?, ?, ?, ?, ?);";
        try {
            
            con = db.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, game_date);
            stmt.setString(2, game_hour);
            stmt.setInt(3, participants);
            stmt.setInt(4, idField);
            stmt.setInt(5, IdPayment);
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

    public int getIdPayment() throws Exception {
        int id;
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT max(idPayment) as idPayment FROM ismgroup18.payment;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			rs = stmt.executeQuery();

			if(!rs.next()) {
				return 0;
            }
            id = rs.getInt("idPayment");
			rs.close();
			stmt.close();
			return id;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
    }

    public int getIdGame() throws Exception {
        int id;
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT max(idGame) as idGame FROM ismgroup18.game;";
        try {
			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			rs = stmt.executeQuery();

			if(!rs.next()) {
				return 0;
            }
            id = rs.getInt("idGame");
			rs.close();
			stmt.close();
			return id;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
    }

    public int getIdClient(String username) throws Exception {
        int id;
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
        String sqlQuery = "SELECT idClient FROM ismgroup18.client WHERE username=?;";
        try {
			con = db.getConnection();
            stmt = con.prepareStatement(sqlQuery);
            stmt.setString(1, username);
			rs = stmt.executeQuery();

			if(!rs.next()) {
				return 0;
            }
            id = rs.getInt("idClient");
			rs.close();
			stmt.close();
			return id;
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}
    }
    
    public void setStatus(int idField, String date, String hour, int participants) throws Exception {
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
        String sqlQuery = "UPDATE ismgroup18.field_availability SET status = status + ? WHERE idField=? AND date=? AND hour = ?;";
        try {
			con = db.getConnection();
            stmt = con.prepareStatement(sqlQuery);
            stmt.setInt(1, participants);
            stmt.setInt(2, idField);
            stmt.setString(3, date);
            stmt.setString(4, hour);
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

    public void createPlaysIn(int idGame, int idClient) throws Exception {
            
        DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        String sql = "INSERT INTO ismgroup18.plays_in (idClient, idGame) VALUES (?, ?);";
        try {
            
            con = db.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, idClient);
            stmt.setInt(2, idGame);
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
