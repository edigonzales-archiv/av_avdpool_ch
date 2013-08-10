package org.catais.avdpool.utils;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

public class ImportFiles 
{
    private static Logger logger = Logger.getLogger( ImportFiles.class );

    private HashMap params = null;
    private HashMap whitelist = null;
    private Connection conn = null;
    
    public ImportFiles( HashMap params, HashMap whitelist ) throws ClassNotFoundException, SQLException 
    {
        logger.setLevel( Level.DEBUG );

        this.params = params;
        this.whitelist = whitelist;
        String sqlite = (String) params.get("sqlite");
        
        // create database connection
        Class.forName( "org.sqlite.JDBC" ); 
        conn = DriverManager.getConnection( "jdbc:sqlite:" + sqlite );           
    }

    /*
     *  TODO: Anzahl limitieren und Operate aus DB löschen.
     */
    
    public ArrayList getList() throws SQLException
    {
        ArrayList<HashMap> list = new ArrayList();
        
        Statement s = conn.createStatement();
        String sql = "SELECT filename, path, bfsnr, los, lieferdatum FROM waitlist ORDER BY lieferdatum";
        ResultSet rs = s.executeQuery(sql);
        
        while( rs.next() )
        {
            HashMap map = new HashMap();

            String filename = rs.getString( "path" ) + File.separatorChar + rs.getString( "filename" );
            String fos = rs.getString( "bfsnr" );
            String lot = rs.getString( "los" );
            
            if (lot.length() < 2) 
            {
                lot = "0" + lot;
            }
            
            String foslot = fos + lot;
            if ( whitelist.get( foslot ) != null ) 
            {
                map.put("bfsnr", fos);
                map.put("los", lot);
                map.put("filename", filename);
                list.add(map);
            }
            else 
            {
                logger.error(filename + " is not in whitelist.");
            }

        }
        
        s.close();
        conn.close(); 

        return list;
    }

}