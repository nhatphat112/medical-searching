package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlConfig {
    public static final String url ="jdbc:mySQL://localhost:3306/medical_searching_db";
    public static final String username = "root";
    public static final String password= "admin123";
    public static Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url,username,password);
        }catch (Exception e){
            System.out.println("Error get connection.");
            e.printStackTrace();
        }
        return connection;
    }
    public static void closeConnection(Connection connection){
        try {
            if (connection!=null){
                connection.close();
            }
        }catch (Exception e){
            System.out.println("Error close connection.");
        }

    }
}
