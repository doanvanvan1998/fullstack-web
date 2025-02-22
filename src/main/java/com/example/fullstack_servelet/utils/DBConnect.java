package com.example.fullstack_servelet.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    public Connection openConnect()
    {

        String dbDriver = "com.mysql.jdbc.Driver";
        String dbURL = "jdbc:mysql:// localhost:3306/";
        String dbName = "shoppee?characterEncoding=utf8";
        String dbUsername = "root";
        String dbPassword = "1234";
        try {
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbURL + dbName,
                    dbUsername,
                    dbPassword);
            return con;
        }catch (Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
}
