package application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    //DB connection
    public Connection databaseConnector() {
        Connection con;
        try {
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/vegi_shop?", "root", "");
            return con;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

}
