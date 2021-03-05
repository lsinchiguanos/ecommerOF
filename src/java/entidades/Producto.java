/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author Lemmar Dell
 */
public class Producto {
    private int producto_id;
    private String producto_codigo;
    private String producto_nombre;
    private String producto_imagen;
    private double producto_precio;
    private String producto_categoria;
    private String producto_descripcion;
    private int producto_aro;
    private int producto_estado;
    private String created_at;
    private String updated_at;

    public Producto() {
    }
    
    public int getProducto_id() {
        return producto_id;
    }

    public void setProducto_id(int producto_id) {
        this.producto_id = producto_id;
    }

    public String getProducto_codigo() {
        return producto_codigo;
    }

    public void setProducto_codigo(String producto_codigo) {
        this.producto_codigo = producto_codigo;
    }

    public String getProducto_nombre() {
        return producto_nombre;
    }

    public void setProducto_nombre(String producto_nombre) {
        this.producto_nombre = producto_nombre;
    }

    public String getProducto_imagen() {
        return producto_imagen;
    }

    public void setProducto_imagen(String producto_imagen) {
        this.producto_imagen = producto_imagen;
    }

    public double getProducto_precio() {
        return producto_precio;
    }

    public void setProducto_precio(double producto_precio) {
        this.producto_precio = producto_precio;
    }

    public String getProducto_categoria() {
        return producto_categoria;
    }

    public void setProducto_categoria(String producto_categoria) {
        this.producto_categoria = producto_categoria;
    }

    public String getProducto_descripcion() {
        return producto_descripcion;
    }

    public void setProducto_descripcion(String producto_descripcion) {
        this.producto_descripcion = producto_descripcion;
    }

    public int getProducto_aro() {
        return producto_aro;
    }

    public void setProducto_aro(int producto_aro) {
        this.producto_aro = producto_aro;
    }
    
    

    public int getProducto_estado() {
        return producto_estado;
    }

    public void setProducto_estado(int producto_estado) {
        this.producto_estado = producto_estado;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }
    
    
    
}
