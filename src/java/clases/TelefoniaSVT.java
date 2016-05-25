
package clases;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "TelefoniaSVT", urlPatterns = {"/TelefoniaSVT"})
public class TelefoniaSVT extends HttpServlet {
   
    private Telefonia telefonia;
    private ConexionDatos cd;
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        try {
            telefonia = new Telefonia();
            
            telefonia.setIdTelefonia(request.getParameter("txtidTelefonia"));
            telefonia.setNombre(request.getParameter("txtNombre"));
            telefonia.setDireccion(request.getParameter("txtDireccion"));
            telefonia.setTelefono(request.getParameter("txtTelefono"));
        

            
            
            cd = new ConexionDatos();
            String sql = "insert into telefonia values('"
                    +telefonia.getIdTelefonia()+ "'"
                    + ", '" + telefonia.getNombre()+ "'"
                    + ", '" + telefonia.getDireccion()+ "'"
                    + ", '" + telefonia.getTelefono()+ "')";
            
            cd.ejecutarSQL(sql);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TelefoniaSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TelefoniaSVT.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
        
            response.sendRedirect("telefonia.jsp");
            
        }
    }
}
