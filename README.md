COFFEE SALES DATA BASE:  
To build the database using the set of commands in the "SQLCMD" file make sure to update the "BULK INSERT" command directory in the "02 - STAGING_TABLE.SQL" file with the FOLDER_PATH. Do the same for the directory in the "SQLCMD" file.

COFFEE SALES DATA BASE:  
To build the data warehouse using the set of commands in the "SQLCMD" file make sure to update the "SQLCMD" directory in the "SQLCMD" file with the FOLDER_PATH. Must be done after building the "COFFEE SALES DATA BASE"  

COFFEE SALES POS (POINT OF SALE):  
To run the POS you will need to establish a .env file in the local directory with the following variables:  
  
  DATA_BASE_DRIVER = "ODBC Driver 17 for SQL Server"  
  DATA_BASE_SERVER = "<ENTER_SERVER_NAME_HERE>"  
  DATA_BASE_DATABASE = "<ENTER_DATABASE_NAME_HERE>"  
  TRUSTED_CONNECTION = "YES"  
  UID = "<ENTER_SQL_SERVER_USER_NAME_HERE>"  
  
COFFEE SALES POWER BI DASHBOARD:  
Update the Database connections to point to your server and database

-- Justin Osborne
