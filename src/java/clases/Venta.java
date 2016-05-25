
package clases;

public class Venta {
       private String idVentas;
    private String idCelular;
    private String cantidad;
    private String precio;
    private String fecha;

    public Venta() {
    }

    public String getIdVentas() {
        return idVentas;
    }

    public void setIdVentas(String idVentas) {
        this.idVentas = idVentas;
    }

    public String getIdCelular() {
        return idCelular;
    }

    public void setIdCelular(String idCelular) {
        this.idCelular = idCelular;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
}
