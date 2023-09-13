package cl.tienda.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Braulio
 */
public class Conexion {
    
    private Connection conn;
    private String driver;
    private String dataBase;
    private String hostName;
    private String port;
    private String user;
    private String pass;
    private String url;

    public Conexion() {
        this.driver = "com.mysql.jdbc.Driver";
        this.dataBase = "hinojosa_store";
        this.hostName = "localhost";
        this.port = "3306";
        this.user = "root";
        this.pass = "12348";
        this.url = "jdbc:mysql://"+this.hostName+":"+this.port+"/"+this.dataBase+"?useSSL=false";
    }
    
    public Connection getConnection(){
        try {
            Class.forName(driver);
            this.conn = DriverManager.getConnection(url, user, pass);
            System.out.println("Conexion Exitosa");
        }catch(ClassNotFoundException | SQLException e){
            System.out.println("Conexion Fallida");
            e.printStackTrace();
        }
        return conn;
    }
    
    public void cerrarConexion(){
        try{
            this.conn.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
