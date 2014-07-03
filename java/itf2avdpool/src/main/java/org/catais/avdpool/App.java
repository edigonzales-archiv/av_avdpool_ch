package org.catais.avdpool;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;

import static java.nio.file.StandardCopyOption.*;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

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
	
    @SuppressWarnings("unchecked")
    public static void main( String[] args )
    {
    	logger.setLevel(Level.DEBUG);

    	try {
	    	// read log4j properties file
	    	File tempDir = IOUtils.createTempDirectory("itf2avdool");
			InputStream is =  App.class.getResourceAsStream("log4j.properties");
			File log4j = new File(tempDir, "log4j.properties");
			IOUtils.copy(is, log4j);
	
			// configure log4j with properties file
			PropertyConfigurator.configure(log4j.getAbsolutePath());
	
			// begin logging
			logger.info("Start: "+ new Date());
			
			// read the properties file with all the things we need to know
			// filename is itf2avdpool.properties
			String iniFileName = (String) args[0];
			ReadProperties ini = new ReadProperties(iniFileName);
			HashMap params = ini.read();
			
			logger.debug(params);
			logger.debug(params.get("srcdir"));
			logger.debug(params.get("all"));
			
			String srcDir = (String) params.get("srcdir");			
			Path dir = Paths.get(srcDir);
			logger.debug(dir);

			try (DirectoryStream<Path> stream = Files.newDirectoryStream(dir, "*.itf")) {
			    for (Path entry : stream) {                    
                    // Es werden nur itf Dateien importiert, die heute geändert/geliefert wurden.
                    BasicFileAttributes attrs = Files.readAttributes(entry, BasicFileAttributes.class);
                    long millis = attrs.lastModifiedTime().toMillis();
                    
                    Calendar c = Calendar.getInstance(); 
                    c.setTimeInMillis(millis);
                    int fYear = c.get(Calendar.YEAR);
                    int fDay = c.get(Calendar.DAY_OF_MONTH);
                    
                    long today = new Date().getTime();
                    
                    c.setTimeInMillis(today);
                    int mYear = c.get(Calendar.YEAR);
                    int mDay = c.get(Calendar.DAY_OF_MONTH);
                    
                    // Mit "all = true" werden alle itf Dateien importiert.
                    boolean all = false;
                    all = (boolean) params.get("all");
                    if (!all)
                    {
                        if (fYear != mYear || fDay != mDay) {
                            continue;
                        }
                    }
                    
                    String f = entry.getFileName().toString();
                    int bfsnr = Integer.valueOf(f.substring(3, 7)).intValue();
                    int los = Integer.valueOf(f.substring(7, 9)).intValue();

                    String prefix = Integer.toString(bfsnr) + Integer.toString(los);
                    logger.debug(prefix);
                    logger.debug(entry.toAbsolutePath());
                    
                    try {
                        IliReader iliReader = new IliReader(entry.toAbsolutePath().toString(), "21781", params);
                        iliReader.setTidPrefix(prefix);
                        iliReader.startTransaction();
                        iliReader.delete(bfsnr, los);
                        iliReader.read(bfsnr, los);  
                        iliReader.commitTransaction();
                    } catch (Ili2cException e) {
                        logger.fatal(e.getMessage());
                    } catch (IllegalArgumentException e) {
                        logger.fatal(e.getMessage());
                    } 
			    } 
			} catch (IOException e) {
				e.printStackTrace();
			    logger.fatal(e.getMessage());
                throw new IOException(e.getMessage());
			} catch (NumberFormatException e) {
				e.printStackTrace();
	            logger.fatal(e.getMessage());
			    throw new NumberFormatException(e.getMessage());
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
                logger.fatal(e.getMessage());
                throw new Exception(e.getMessage());
            } catch (SQLException e) {
            	e.printStackTrace();
                logger.fatal(e.getMessage());
            } catch (Exception e) {
            	e.printStackTrace();
                logger.fatal(e.getMessage());
            }                 

			// reindex tables
            logger.info("Start Reindexing...");
            Reindex reindex = new Reindex(params);
//            reindex.run();
            logger.info("End Reindexing.");
			
			// vacuum tables
            logger.info("Start Vacuum...");
            Vacuum vacuum = new Vacuum(params);
//            vacuum.run();
            logger.info("End Vacuum.");
			
			logger.info("Should not reach here in case of errors..");
			
    	} catch (IOException e) {
    		e.printStackTrace();
			logger.fatal(e.getMessage());
    	} catch (NumberFormatException e) {
            e.printStackTrace();
            logger.fatal(e.getMessage());
        } catch (Exception e) {
            logger.fatal(e.getMessage());
        } finally {
			logger.info("Ende: "+ new Date());
    	}
        System.out.println( "Hello Stefan!" );
    }
}

