
<%@page import="java.sql.ResultSet"%>
<%@page import="clases.ConexionDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <center><h1>LISTA DE VENTAS</h1> </center>
        
        <% 
            
            ConexionDatos cd = new ConexionDatos();
            ResultSet rsVentas = cd.consultar("select * from ventas");
            
        
        %>
        
        <center><table border="1">
            
            <th>
            <tr>
                <td>IdVentas</td>
                <td>IdCelular</td>
                <td>Cantidad</td>
                <td>Precio</td>
                <td>Fecha</td>
            </tr>
            </th>
            
            <%
            
            while(rsVentas.next()){
                
                out.print("<tr>");
                
                out.print("<td>" + rsVentas.getString(1) + "</td>");
                out.print("<td>" + rsVentas.getString(2) + "</td>");
                out.print("<td>" + rsVentas.getString(3) + "</td>");
                out.print("<td>" + rsVentas.getString(4) + "</td>");
                out.print("<td>" + rsVentas.getString(5) + "</td>");
             
                
                out.print("</tr>");
            }
            
            %>
            
            </table> </center>
        
            <center> <p><a href="ventas.jsp">Agregar Venta</a> </p></center>
        
    </body>
</html>
