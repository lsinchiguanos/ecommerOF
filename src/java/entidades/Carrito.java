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
public class Carrito {
    
    private int car_cliente_id;
    private int car_producto_id;
    private int car_cantidad;
    private double car_precio;
    private int car_estado;
    private String created_at;
    private String updated_at;

    public Carrito() {
    }

    public int getCar_cliente_id() {
        return car_cliente_id;
    }

    public void setCar_cliente_id(int car_cliente_id) {
        this.car_cliente_id = car_cliente_id;
    }

    public int getCar_producto_id() {
        return car_producto_id;
    }

    public void setCar_producto_id(int car_producto_id) {
        this.car_producto_id = car_producto_id;
    }

    public int getCar_cantidad() {
        return car_cantidad;
    }

    public void setCar_cantidad(int car_cantidad) {
        this.car_cantidad = car_cantidad;
    }

    public double getCar_precio() {
        return car_precio;
    }

    public void setCar_precio(double car_precio) {
        this.car_precio = car_precio;
    }

    public int getCar_estado() {
        return car_estado;
    }

    public void setCar_estado(int car_estado) {
        this.car_estado = car_estado;
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
