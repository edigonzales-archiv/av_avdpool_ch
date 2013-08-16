package org.catais.avdpool;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.*;
import static java.nio.file.StandardCopyOption.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.catais.avdpool.utils.IOUtils;
import org.catais.avdpool.utils.Delivery;
import org.catais.avdpool.utils.ReadProperties;
import org.catais.avdpool.utils.Reindex;
import org.catais.avdpool.utils.Vacuum;
import org.catais.avdpool.interlis.*;

import ch.interlis.ili2c.Ili2cException;


public class App 
{
	private static Logger logger = Logger.getLogger(App.class);
	
	String srcdir = null;
	
    public static void main( String[] args )
    {
    	logger.setLevel(Level.DEBUG);

    	try {
	    	// read log4j properties file
	    	File tempDir = IOUtils.createTempDirectory( "itf2avdool" );
			InputStream is =  App.class.getResourceAsStream( "log4j.properties" );
			File log4j = new File( tempDir, "log4j.properties" );
			IOUtils.copy(is, log4j);
	
			// configure log4j with properties file
			PropertyConfigurator.configure( log4j.getAbsolutePath() );
	
			// begin logging
			logger.info( "Start: "+ new Date() );
			
			// read the properties file with all the things we need to know
			// filename is itf2avdpool.properties
			String iniFileName = (String) args[0];
			ReadProperties ini = new ReadProperties(iniFileName);
			HashMap params = ini.read();
			logger.debug(params);
			
			Delivery delivery = new Delivery( params );
			ArrayList<HashMap> movedFiles = delivery.moveFiles();
			logger.debug(movedFiles);
			
			for ( HashMap map : movedFiles )
			{
			    logger.debug( map );
			    
			    String id = ( String ) map.get( "id" );
			    String shortFileName = ( String ) map.get( "short_filename" );
                String fileName = ( String ) map.get( "filename" );
			    String prefix = ( String ) map.get( "fosnr" ) + ( String ) map.get( "lot" );
                
			    int bfsnr = Integer.valueOf( ( String ) map.get( "fosnr" ) ).intValue();
                int los = Integer.valueOf( ( String ) map.get( "lot" ) ).intValue();
                
                String epsg = "21781";
                
                // status = 2 -> "Import laeuft"
                logger.debug("Update status: " + shortFileName + " -- 2 ");
                delivery.updateStatus( id, 2 );
                
                // Noch nicht wirklich perfekt, da nicht sauber wann, wie
                // und welcher Fehler wirklich hier landet. 
                // Wahrscheinlich werden noch viele Fehler im iliReader 
                // selbst gecatcht...
                try
                {
                    IliReader iliReader = new IliReader( fileName, epsg, params );
                    iliReader.setTidPrefix( prefix );

                    iliReader.delete( bfsnr, los );
                    iliReader.read( bfsnr, los );
                    
                    // status = 4 -> "Import erfolgreich"
                    delivery.updateStatus( id, 4 );
                    
                    // Datei in das definitive Verzeichnis verschieben/kopieren.
                    String dstPath = ( String ) params.get( "dstdir" );                    
                    Path source = Paths.get( fileName );
                    Path target = Paths.get( dstPath + File.separatorChar + shortFileName );
                                    
                    Files.move( source, target, REPLACE_EXISTING );            
                }
                catch ( Ili2cException ex )
                {
                    delivery.updateStatus( id, 3 );
                    ex.printStackTrace();
                    logger.fatal( ex.getMessage() );
                }
                catch ( IOException ex ) 
                {
                    delivery.updateStatus( id, 3 );
                    ex.printStackTrace();
                    logger.fatal( ex.getMessage() );
                } 
                catch ( NullPointerException ex ) 
                {
                    delivery.updateStatus( id, 3 );
                    ex.printStackTrace();
                    logger.fatal( ex.getMessage() );
                } 
                catch ( IllegalArgumentException ex ) 
                {
                    delivery.updateStatus( id, 3 );
                    ex.printStackTrace();
                    logger.fatal( ex.getMessage() );
                } 
                catch ( ClassNotFoundException ex )
                {
                    delivery.updateStatus( id, 3 );
                    ex.printStackTrace();
                    logger.fatal( ex.getMessage() );
                }
                catch ( SQLException ex )
                {
                    delivery.updateStatus( id, 3 );
                    ex.printStackTrace();
                    logger.fatal( ex.getMessage() );
                }
                catch ( Exception ex ) 
                {
                    delivery.updateStatus( id, 3 );
                    ex.printStackTrace();
                    logger.fatal( ex.getMessage() );
                }                 
			}
		
			// reindex tables
            logger.info("Start Reindexing...");
            Reindex reindex = new Reindex( params );
//            reindex.run();
            logger.info("End Reindexing.");
			
			// vacuum tables
            logger.info("Start Vacuum...");
            Vacuum vacuum = new Vacuum( params );
//            vacuum.run();
            logger.info("End Vacuum.");
			
			
			System.out.println ("should not reach here in case of errors.." );

    	} 
    	catch ( IOException ex ) 
    	{
    		ex.printStackTrace();
			logger.fatal( ex.getMessage() );
    	} 
    	catch ( NullPointerException ex ) 
    	{
    		ex.printStackTrace();
			logger.fatal( ex.getMessage() );
    	} 
    	catch ( IllegalArgumentException ex ) 
    	{
    		ex.printStackTrace();
			logger.fatal( ex.getMessage() );
    	} 
    	catch ( ClassNotFoundException ex )
    	{
    		ex.printStackTrace();
			logger.fatal( ex.getMessage() );
    	}
    	catch ( SQLException ex )
    	{
    		ex.printStackTrace();
			logger.fatal( ex.getMessage() );
    	}
    	finally {
			logger.info( "Ende: "+ new Date() );
    	}
        System.out.println( "Hello Stefan!" );
    }
}

