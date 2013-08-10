package org.catais.avdpool.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

public class WhiteList 
{
    private static Logger logger = Logger.getLogger( WhiteList.class );

    private HashMap params = null;
    private Connection conn = null;
    
    public WhiteList( HashMap params ) throws ClassNotFoundException, SQLException 
    {
        logger.setLevel( Level.DEBUG );

        this.params = params;
        String sqlite = (String) params.get("sqlite");
        
        // create database connection
        Class.forName( "org.sqlite.JDBC" ); 
        conn = DriverManager.getConnection( "jdbc:sqlite:" + sqlite );           
    }

    public HashMap getList() throws SQLException
    {
        HashMap list = new HashMap();
        
        Statement s = conn.createStatement();
        String sql = "SELECT gem_bfs, los FROM whitelist";
        ResultSet rs = s.executeQuery(sql);
        
        while( rs.next() )
        {
            String fos = rs.getString( 1 );
            String lot = rs.getString( 2 );
            
            if (lot.length() < 2) 
            {
                lot = "0" + lot;
            }
            String foslot = fos + lot;
            list.put( foslot, foslot );
        }
        
        s.close();
        conn.close(); 

        return list;
    }
    
}
