
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>CELULARES</title>
    </head>
    <body>
    <center> <h1>AGREGAR CELULAR</h1> </center>
    <center> <p> <a href="index.jsp">Inicio</a>            <a href="listacelulares.jsp">Lista De Celulares</a> </p> </center>

        <form name="frmCelulares" method="post" action="CelularesSVT">
            <fieldset> 
                
                <legend> Datos Generales </legend>
                
                <label for="txtidCelulat">idCelular</label> 
                <input name="txtidCelular" type="text"  placeholder="idCelular"/>
                    
                <label for="txtMarca">Marca</label>
                   <select name="txtMarca">
                   <option value="Alcatel">Alcatel</option>
                   <option value="Apple">Apple</option>
                   <option value="Blue">Blue</option>
                   <option value="Lg">Lg</option> 
                   <option value="Samsung">Samsung</option>
                   <option value="Nokia">Nokia</option>
                   <option value="Motorola">Motorola</option>
                   <option value="Samsung">Samsung</option>
                   <option value="Zte">Zte</option>
              
                </select>
                
                <label for="txtModelo">Modelo</label>
                <input name="txtModelo" type="text" placeholder="Modelo"/>
                
                   <label for="txtPrecio">Precio</label>
                <input name="txtPrecio" type="text" placeholder="Precio"/>
                
                 <label for="txtidTelefonia">idTelefonia</label>
                <input name="txtidTelefonia" type="text" placeholder="idTelefonia"/>
                
                <input name="cmd" type="submit" value="Agregar"/>
                
            </fieldset>
            
            
        </form>
      
    </body>
</html>
