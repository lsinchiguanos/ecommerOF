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
public class Subcripcion {
    private int sub_id;
    private String sub_descripcion;
    private String sub_detalle;
    private double sub_precio;
    private int sub_estado;
    private String created_at;
    private String updated_at;

    public Subcripcion() {
    }
    
    public int getSub_id() {
        return sub_id;
    }

    public void setSub_id(int sub_id) {
        this.sub_id = sub_id;
    }

    public String getSub_descripcion() {
        return sub_descripcion;
    }

    public void setSub_descripcion(String sub_descripcion) {
        this.sub_descripcion = sub_descripcion;
    }

    public String getSub_detalle() {
        return sub_detalle;
    }

    public void setSub_detalle(String sub_detalle) {
        this.sub_detalle = sub_detalle;
    }

    public double getSub_precio() {
        return sub_precio;
    }

    public void setSub_precio(double sub_precio) {
        this.sub_precio = sub_precio;
    }

    public int getSub_estado() {
        return sub_estado;
    }

    public void setSub_estado(int sub_estado) {
        this.sub_estado = sub_estado;
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
