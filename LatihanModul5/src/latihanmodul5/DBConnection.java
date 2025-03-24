/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package latihanmodul5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author Arip Ikbal Fadilah
 */
public class DBConnection {
    //konfigurasi koneksi ke databases
    private static final String URL = "jdbc:mysql://localhost:3306/pustakaloka";
    private static final String USER = "root";//sesuaikan usernya 
    private static final String PASSWORD = "";//sesuaikan password nya
    
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
    
    
}
