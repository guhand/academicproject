package DB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.*;

/**
 *
 * @author David-Pc
 */
public class DB 
{
    public static Connection Con()
    {
        Connection con=null;
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/block_chain_medical","root","root");
        }
        catch (ClassNotFoundException | SQLException e) 
        { 
            System.out.println(e);
        }
        return con;
    }
}
