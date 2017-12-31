package DAO;


import java.sql.ResultSet;
import java.sql.SQLException;

import DB.DBConnection;

public class UsersDAO {
	public static Integer LoadUser(String userName, String userPass) throws SQLException, ClassNotFoundException {
		try {
			String str = "select * from users";
			ResultSet rs = DBConnection.ExecuteQueryResultSet(str);
			
			while(rs.next()) {
				if(userName.equals(rs.getString("userName")) && userPass.equals(rs.getString("userPass"))) {
					return rs.getInt("userID");
				}
			}
		}catch(SQLException se) {
			return -1;
		}
		return -1;
	}
	
}
