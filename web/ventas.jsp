
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/>
        <title>VENTAS</title>
    </head>
    <body>
         <center>  <h1>AGREGAR VENTAS</h1> </center>
                     <center> <p> <a href="index.jsp">Inicio</a>            <a href="listaventas.jsp">Lista De ventas</a> </p> </center>


       
        <form name="frmCelulares" method="post" action="VentasSVT">
            <fieldset> 
                
                <legend> Datos Generales </legend>
                
                <label for="txtidVenta">idVenta</label>
                <input name="txtidVentas" type="text"  placeholder="idVenta"/>
                
                 <label for="txtidCelular">idCelular</label>
                <input name="txtidCelular" type="text"  placeholder="idCelular"/>
                
                   <label for="txtCantidad">Cantidad</label>
                <input name="txtCantidad" type="text" placeholder="Cantidad"/>
                
                 <label for="txtPrecio">Precio</label>
                <input name="txtPrecio" type="text" placeholder="Precio"/>
                
                <label for="txtFecha">Fecha</label>
                <input name="txtFecha" type="date" placeholder="Fecha"/>
                     <input name="cmd" type="submit" value="Agregar"/>
                
                
                
            </fieldset>
            

            
        </form>
      
    </body>
</html>