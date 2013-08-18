 SELECT * 
 FROM delivery
 WHERE date(datetime(import_date / 1000, 'unixepoch')) = strftime(date('NOW', '-1 day'))
