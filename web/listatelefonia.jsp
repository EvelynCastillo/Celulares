
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
    <center><h1>LISTA DE TELEFONIA</h1> </center>
        
        <% 
            
            ConexionDatos cd = new ConexionDatos();
            ResultSet rsTelefonia = cd.consultar("select * from telefonia");
            
        
        %>
        
        <center><table border="1">
            
            <th>
            <tr>
                <td>idTelefonia</td>
                <td>Nombre</td>
                <td>Direccion</td>
                <td>Telefono</td>
              
            </tr>
            </th>
            
            <%
            
            while(rsTelefonia.next()){
                
                out.print("<tr>");
                
                out.print("<td>" + rsTelefonia.getString(1) + "</td>");
                out.print("<td>" + rsTelefonia.getString(2) + "</td>");
                out.print("<td>" + rsTelefonia.getString(3) + "</td>");
                out.print("<td>" + rsTelefonia.getString(4) + "</td>");
              
                
                out.print("</tr>");
            }
            
            %>
            
            </table> </center>
        
            <center><p><a href="telefonia.jsp">Agregar Telefonia</a> </p></center>
        
    </body>
</html>
