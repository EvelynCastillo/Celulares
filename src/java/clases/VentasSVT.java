
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

/**
 *
 * @author Evelyn
 */
@WebServlet(name = "VentasSVT", urlPatterns = {"/VentasSVT"})
public class VentasSVT extends HttpServlet {
        private Venta ventas;
    private ConexionDatos cd;

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
                ventas = new Venta();
         
                ventas.setIdVentas(request.getParameter("txtidVentas"));
                ventas.setIdCelular(request.getParameter("txtidCelular"));
                ventas.setCantidad(request.getParameter("txtCantidad"));
                ventas.setPrecio(request.getParameter("txtPrecio"));
                ventas.setFecha(request.getParameter("txtFecha"));
              
                cd = new ConexionDatos();
                String sql = "insert into ventas values('"
                        + ventas.getIdVentas()+ "'"
                        + ", '" +ventas.getIdCelular()+ "'"
                        + ", '" +ventas.getCantidad()+ "'"
                        + ", '" +ventas.getPrecio()+ "'"
                        + ", '" +ventas.getFecha()+ "')";
                
                 
                cd.ejecutarSQL(sql);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(VentasSVT.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(VentasSVT.class.getName()).log(Level.SEVERE, null, ex);
            }finally{
            

       response.sendRedirect("ventas.jsp");
            }
  
    }

}
