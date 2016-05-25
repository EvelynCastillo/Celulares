
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>TELEFONIA</title>
    </head>
    <body>
        
    <center>  <h1>AGREGAR TELEFONIA</h1> </center>
                <center> <p> <a href="index.jsp">Inicio</a>            <a href="listatelefonia.jsp">Lista De Telefonia</a> </p> </center>

        <form name="frmTelefonia" method="post" action="TelefoniaSVT">
            <fieldset> 
                
                <legend> Datos Generales </legend>
                
              
                
                 
                 <label for="txtTelefonia">idTelefonia</label>
                <input name="txtidTelefonia" type="text" placeholder="idTelefonia"/>
                
                
                 <label for="Nombre">Nombre</label>
                   <select name="txtNombre">
                   <option value="Telcel">Telcel</option> 
                   <option value="Movistar">Movistar</option> 
                   <option value="Unefon">Unefon</option>
              
                </select>
         
                 
              
                <label for="txtDireccion">Direccion</label>
                <input name="txtDireccion" type="text" placeholder="Direccion"/>
                
                <label for="txtTelefono">Telefono</label>
                <input name="txtTelefono" type="text" placeholder="Telefono"/>
                 
                <input name="cmd" type="submit" value="Agregar"/>
            </fieldset>

           
            
        </form>
    </body>
</html>
