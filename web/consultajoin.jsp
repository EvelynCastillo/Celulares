
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
    <center><h1>Consulta(Mustra los campos marca, modelo, id telefonia del celular de la venta con el id 2</h1> </center>
        
        <% 
            
            ConexionDatos cd = new ConexionDatos();
            ResultSet rsCelulares = cd.consultar("select marca, modelo, idtelefonia from celulares left join ventas on celulares.idcelular = ventas.idventas where ventas.idventas = 2");
            
        
        %>
        
        <center><table border="1">
            
            <th>
            <tr>
              
                 <td>Marca</td>
                <td>Modelo</td>
                <td>idTelefonia</td>
            </tr>
            </th>
            
            <%
            
            while(rsCelulares.next()){
                
                out.print("<tr>");
                
                out.print("<td>" + rsCelulares.getString(1) + "</td>");
                out.print("<td>" + rsCelulares.getString(2) + "</td>");
                out.print("<td>" + rsCelulares.getString(3) + "</td>");
          
                
                out.print("</tr>");
            }
            
            %>
            
            </table> </center>
        
            <center> <p> <a href="index.jsp">Inicio</a> </p> </center>        
    </body>
</html>
