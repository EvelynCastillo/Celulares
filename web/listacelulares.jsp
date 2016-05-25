
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
    <center><h1>LISTA DE CELULARES</h1> </center>
        
        <% 
            
            ConexionDatos cd = new ConexionDatos();
            ResultSet rsCelulares = cd.consultar("select * from celulares");
            
        
        %>
        
    <center> <table border="1">
            
            <th>
            <tr>
                <td>idCelular</td>
                 <td>Marca</td>
                <td>Modelo</td>
                <td>Precio</td>
                <td>idTelefonia</td>
            </tr>
            </th>
            
            <%
            
            while(rsCelulares.next()){
                
                out.print("<tr>");
                
                out.print("<td>" + rsCelulares.getString(1) + "</td>");
                out.print("<td>" + rsCelulares.getString(2) + "</td>");
                out.print("<td>" + rsCelulares.getString(3) + "</td>");
                out.print("<td>" + rsCelulares.getString(4) + "</td>");
                out.print("<td>" + rsCelulares.getString(5) + "</td>");
                
                out.print("</tr>");
            }
            
            %>
            
        </table> </center>
        
            <center><p><a href="celulares.jsp">Agregar celular</a></p> </center>
        
    </body>
</html>
