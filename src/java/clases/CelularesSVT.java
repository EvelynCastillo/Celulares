
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


@WebServlet(name = "ClularesSVT", urlPatterns = {"/CelularesSVT"})
public class CelularesSVT extends HttpServlet {
  
    private Celulares celulares;
    private ConexionDatos cd;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        
            celulares = new Celulares();
        
            celulares.setIdCelular(request.getParameter("txtidCelular"));
            celulares.setMarca(request.getParameter("txtMarca"));
            celulares.setModelo(request.getParameter("txtModelo"));
            celulares.setPrecio(request.getParameter("txtPrecio"));
            celulares.setIdTelefonia(request.getParameter("txtidTelefonia"));


            cd = new ConexionDatos();
            String sql = "insert into celulares values('"
                    +celulares.getIdCelular()+ "'"
                    + ", '" + celulares.getMarca()+ "'"
                    + ", '" + celulares.getModelo()+ "'"
                    + ", '" + celulares.getPrecio()+ "'"
                    + ", '" + celulares.getIdTelefonia()+ "')";
            
            cd.ejecutarSQL(sql);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CelularesSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CelularesSVT.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
        
            response.sendRedirect("celulares.jsp");
            
        }
    }
}
