package org.catais.avdpool.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.*;
import static java.nio.file.StandardCopyOption.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

public class PrepareFiles 
{
    private static Logger logger = Logger.getLogger( PrepareFiles.class );

    private HashMap params = null;
    private HashMap whitelist = null;
    private Connection conn = null;
    
    public PrepareFiles( HashMap params, HashMap whitelist ) throws ClassNotFoundException, SQLException 
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
    
    public ArrayList moveFiles() throws SQLException
    {
        ArrayList<HashMap> list = new ArrayList();

        try 
        {
            conn.setAutoCommit(false);
            
            Statement stmt1 = conn.createStatement();
            String sql = "SELECT filename, path, bfsnr, los, lieferdatum FROM waitlist ORDER BY lieferdatum ASC";
            ResultSet rs = stmt1.executeQuery(sql);
            
            Statement stmt2 = conn.createStatement();
            
            while( rs.next() )
            {
                try 
                {    
                    // Dateien in ein temporaeres Verzeichnis kopieren/verschieben.
                    // Somit ist es möglich, dass die Dateien durch den
                    // upload-Prozess überschrieben werden können ohne
                    // dass ein komplettes Chaos entsteht.
               
                    String srcPath = rs.getString( "path" );
                    String shortFileName = rs.getString( "filename" );
                    
                    String dstPath = (String) params.get( "tmpdstdir" );
                    
                    String fileName = dstPath + File.separatorChar + rs.getString( "filename" );
                    
                    Path source = Paths.get( srcPath + File.separatorChar + shortFileName );
                    Path target = Paths.get( dstPath + File.separatorChar + rs.getString( "filename" ) );
                                    
                    Files.copy(source, target, REPLACE_EXISTING);
                    
                    // Map mit allen wichtigen Informationen abfuellen.
                    
                    String fos = rs.getString( "bfsnr" );
                    String lot = rs.getString( "los" );
                    String date = rs.getString( "lieferdatum" );

                    HashMap map = new HashMap();
                      
                    if (lot.length() < 2) 
                    {
                        lot = "0" + lot;
                    }
                    
                    String foslot = fos + lot;
                    if ( whitelist.get( foslot ) != null ) 
                    {
                        map.put( "bfsnr", fos );
                        map.put( "los", lot );
                        map.put( "short_filename", shortFileName);
                        map.put( "filename", fileName );
                        list.add(map);
                    }
                    else 
                    {
                        logger.error(fileName + " is not in whitelist.");
                    }
                    
                    // Row in Datebank gleich loeschen.
                    // rs.deleteRow nicht im SQlite Treiber implementiert.
                    stmt2.executeUpdate( "DELETE FROM waitlist WHERE bfsnr = " + fos + " AND los = " +  lot + " AND lieferdatum = " + date );
                }
                catch ( IOException ex )
                {
                    logger.error( ex.getMessage() );
                }
            }
            
            conn.commit();

            stmt1.close();
            stmt2.close();
            
        }
        catch ( SQLException ex )
        {
            if ( conn != null ) 
            {
                try
                {
                    conn.rollback();
                }
                catch( SQLException e )
                {
                    logger.error( e.getMessage() );
                }
            }
            logger.error( ex.getMessage() );
            
            // Aha: ohne diese Exception wird Programm zu Ende gefuehrt.
            // In diesem Fall ist es aber sinnlos, das Programm weiter
            // auszufuehren.
            throw new java.sql.SQLException("commit error");
        }
        finally 
        {
            if ( conn != null ) 
            {
                try
                {
                    conn.close();
                }
                catch( SQLException e )
                {
                    logger.error( e.getMessage() );
                }
            }
        }
        return list;
    }

}