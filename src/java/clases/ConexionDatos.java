
package clases;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConexionDatos {
    private Connection conexion;
    private Statement st;
    

    //Constructor
    public ConexionDatos() throws ClassNotFoundException, SQLException {
        
        Class.forName("com.mysql.jdbc.Driver");
        
      conexion = DriverManager.getConnection(
              "jdbc:mysql://localhost/celular",
              "root",
              "root"
      );
    
    }
    //Metodo ejecutar instruccion sql en la Base de Datos
    public void ejecutarSQL(String sql) throws SQLException{
        
        st = conexion.createStatement();
        st.execute(sql);
        
    }
    //Metodo para la consulta de datos
    public ResultSet consultar(String sql) throws SQLException{
        
        st = conexion.createStatement();
        return st.executeQuery(sql);
        
    }
}
