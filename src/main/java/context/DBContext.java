
package context;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.jsp.tagext.TryCatchFinally;

public class DBContext {

    /*
     * USE BELOW METHOD FOR YOUR DATABASE CONNECTION FOR BOTH SINGLE AND MULTILPE
     * SQL SERVER INSTANCE(s)
     */
    /*
     * DO NOT EDIT THE BELOW METHOD, YOU MUST USE ONLY THIS ONE FOR YOUR DATABASE
     * CONNECTION
     */
    public Connection getConnection() throws Exception {
        Connection conn = null;
        try {
            String url = "jdbc:sqlserver://" + serverName + /* ":"+portNumber + */"\\" + instance + ";databaseName="
                    + dbName;
            if (instance == null || instance.trim().isEmpty())
                url = "jdbc:sqlserver://" + serverName + /* ":"+portNumber + */";databaseName=" + dbName;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(url, userID, password);
            System.out.println("Connected");
        } catch (Exception ex) {
            System.out.println("Connect failure!");
            ex.printStackTrace();
        }

        return conn;
    }

    /* Insert your other code right after this comment */
    /*
     * Change/update information of your database connection, DO NOT change name of
     * instance variables in this class
     */
    private final String serverName = "localhost";
    private final String dbName = "QuanLyBanGiay";

<<<<<<< HEAD
=======
<<<<<<< HEAD
    //private final String portNumber = "1433";
    private final String instance="SQLEXPRESS";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final String userID = "sa";
    private final String password = "Webserver123";

=======
>>>>>>> d814be8b72d86079b5f0fa0f2a7399253726d3bc
    // private final String portNumber = "1433";
    private final String instance = "LOGANZ";// LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final String userID = "sa";
<<<<<<< HEAD
    private final String password = "yendaika";
=======
    private final String password = "12345678";
>>>>>>> 74b08158b11b39b9ee07126a0d286fcd7f39fe1d

>>>>>>> d814be8b72d86079b5f0fa0f2a7399253726d3bc
}