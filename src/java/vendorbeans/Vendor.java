/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vendorbeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author MMM
 */
public class Vendor {
    public static void changeBalance(String name,int amount, String type){
      

        float newBalance=0;        
        String user = "derbyremote" ;
        String password = "derbyremote";
        String url = "jdbc:derby://localhost/ebooks2;create=true;";
        String driver = "org.apache.derby.jdbc.ClientDriver40";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        System.out.println("");
        try {
            Class driverClass = Class.forName(driver);
            connection = DriverManager.getConnection(url);
            statement = connection.createStatement();

           float oldBalance=getOldBalance(name);
            
            if (type.equals("add")){
                newBalance=oldBalance+amount;
            }
            else if (type.equals("dec")){
                newBalance=oldBalance-amount;
            }
            statement.execute("UPDATE Vendors SET balance="+newBalance+" where name='"+name+"'");
            

             } catch (ClassNotFoundException  e) {
                  System.out.println(e.getMessage());
        } catch (SQLException e) {
            System.out.println(e.getMessage());

        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ex) {
                    System.out.println(ex);
                }
            }
            if (connection != null){
                try {
                    connection.close();
                }
                catch (SQLException ex) {
                    System.out.println(ex);
                }
            }
        }
    }
    public static int getOldBalance(String name){
        int oldBalance=0;        
        String user = "derbyremote" ;
        String password = "derbyremote";
        String url = "jdbc:derby://localhost/ebooks2;create=true;";
        String driver = "org.apache.derby.jdbc.ClientDriver40";
        
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        System.out.println("");
        try {
            Class driverClass = Class.forName(driver);
            connection = DriverManager.getConnection(url);
            statement = connection.createStatement();

            resultSet = statement.executeQuery("SELECT BALANCE FROM VENDORS WHERE NAME='"+name+"'");
             while (resultSet.next()) {
                oldBalance = Integer.parseInt(resultSet.getString(1));
            }
         
            

             } catch (ClassNotFoundException  e) {
                  System.out.println(e.getMessage());
        } catch (SQLException e) {
            System.out.println(e.getMessage());

        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ex) {
                    System.out.println(ex);
                }
            }
            if (connection != null){
                try {
                    connection.close();
                }
                catch (SQLException ex) {
                    System.out.println(ex);
                }
            }
        }    
        
    return oldBalance;
    }
}
