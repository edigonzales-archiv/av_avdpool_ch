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
import java.util.Date;
import java.util.HashMap;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

public class Delivery 
{
    private static Logger logger = Logger.getLogger( Delivery.class );

    private HashMap params = null;
    private Connection conn = null;
    private String sqlite = null;
    
    public Delivery( HashMap params ) throws ClassNotFoundException, SQLException 
    {
        logger.setLevel( Level.DEBUG );

        this.params = params;
        this.sqlite = (String) params.get("sqlite");
        
        // create database connection
        Class.forName( "org.sqlite.JDBC" ); 
    }

    
    public void updateStatus( String id, int status )
    {
        try
        {
            // Gut ueberlegen was die Bedingung fuer das Update ist:
            // *id* wird vielleicht ueberschrieben? (falls das gleiche ITF nochmals hochgeladen wird??)
            // *short_filename* ist UNIQUE (noetig?) und waere auch sonst passend/logisch. ------> NEIN
            conn.setAutoCommit(false);
            
            Statement stmt = conn.createStatement();
            // WHERE fileName = ... kann man missbrauchen wenn man auch bei den aelteren (ueberschriebenen Dateien) Eintraege 
            // den Status aendern will.
//            stmt.executeUpdate( "UPDATE delivery SET status = " + status + ", import_date = " + new Date().getTime() + " WHERE filename = '" + shortFileName + "';");
            stmt.executeUpdate( "UPDATE delivery SET status = " + status + ", import_date = " + new Date().getTime() + " WHERE id = '" + id + "';");
                        
            conn.commit();
            stmt.close();
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
        }
//        finally 
//        {
//            if ( conn != null ) 
//            {
//                try
//                {
//                    conn.close();
//                }
//                catch( SQLException e )
//                {
//                    logger.error( e.getMessage() );
//                }
//            }
//        }
    }
    
    
    /*
     *  TODO: Anzahl limitieren in Abrage!
     */
    public ArrayList moveFiles() throws SQLException
    {
        ArrayList<HashMap> list = new ArrayList();

        try 
        {
            conn = DriverManager.getConnection( "jdbc:sqlite:" + sqlite );           
            conn.setAutoCommit(false);
                   
            // Vergleich mit Whiteliste kann gleich hier stattfinden mit Hilfe eines LEFT JOINS.
            // Falls Kombination fosnr+lot = NULL -> nicht in Whitelist.
            // Da jetzt saemtliche Lieferungen in der Tabelle vorhanden sind (also auch
            // doppelte, dh. gleiches Operate neueren Datums, darf die Abfrage nur ein 
            // Operat zurueckliefern. Es wird der Eintrag mit dem hoeheren (= neueren)
            // Datum genommen. Aber eigentlich egal, da ja sowieso nur noch das neue Operat
            // vorliegt.
            Statement stmt1 = conn.createStatement();
            String sql = "SELECT max(delivery_date), * FROM (SELECT * FROM delivery d LEFT JOIN whitelist w ON d.fosnr = w.gem_bfs AND d.lot = w.los WHERE d.status = 0 ORDER BY delivery_date ASC) GROUP BY filename ORDER BY delivery_date ASC;";
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
                    
                    // IST JA jetzt nicht mehr nötig, da ich einfach das vorhanden nehme!?
                    // Macht das was??
                    // Weiss nicht: Theoretisch werden neu hochgeladene ITF in das import-Verzeichnis
                    // verschoben. Wird auch verschoben, wenn File geöffnet ist?
                    // Falls ja, kann man das mit max(delivery_date) vergessen und man müsste eher min nehmen?
                    // Achtung: Beim Status-Update wird mit *id* gearbeitet.
                    
                    // Oder aber: Der "Verschiebe"-Prozess findet einfach während des Importierens nicht statt...
                    
                    String srcPath = rs.getString( "path" );
                    String shortFileName = rs.getString( "filename" );
                    
                    String dstPath = (String) params.get( "tmpdstdir" );
                    
                    String fileName = dstPath + File.separatorChar + rs.getString( "filename" );
                    
                    Path source = Paths.get( srcPath + File.separatorChar + shortFileName );
                    Path target = Paths.get( dstPath + File.separatorChar + rs.getString( "filename" ) );
                            
                    Files.move(source, target, REPLACE_EXISTING);
                    
                    // Map mit allen wichtigen Informationen abfuellen.
                    String id = rs.getString("id");
                    String fosnr = rs.getString( "fosnr" );
                    String lot = rs.getString( "lot" );
                    String date = rs.getString( "delivery_date" );
                    String gem_bfs = rs.getString( "gem_bfs" );

                    HashMap map = new HashMap();
                      
                    if (lot.length() < 2) 
                    {
                        lot = "0" + lot;
                    }
                    
                    String foslot = fosnr + lot;
                    // *gem_bfs* ist NULL, falls LEFT JOIN nichts gefunden hat.
                    if ( gem_bfs != null )
                    {
                        map.put( "id", id );
                        map.put( "fosnr", fosnr );
                        map.put( "lot", lot );
                        map.put( "short_filename", shortFileName);
                        map.put( "filename", fileName );
                        list.add(map);
                    }
                    else 
                    {
                        logger.warn(fileName + " is not in whitelist.");
                        // WHERE id = ... hier ok, da in Transaktion. 
                        // *id* kann durch einen anderen Prozess nicht ueberschrieben werden.
                        stmt2.executeUpdate( "UPDATE delivery SET status = 1, import_date = " + new Date().getTime() + " WHERE id = " + id + ";");
                    }
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
//        finally 
//        {
//            if ( conn != null ) 
//            {
//                try
//                {
//                    conn.close();
//                }
//                catch( SQLException e )
//                {
//                    logger.error( e.getMessage() );
//                }
//            }
//        }
        return list;
    }

}