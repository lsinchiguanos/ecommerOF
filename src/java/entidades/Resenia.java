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
public class Resenia {
    
    private int resenia_id;
    private int cliente_id;
    private String resenia_descripcion;
    private int resenia_calificacion;
    private String created_at;
    private String updated_at;

    public Resenia() {
    }

    public Resenia(int cliente_id, String resenia_descripcion, int resenia_calificacion) {
        this.cliente_id = cliente_id;
        this.resenia_descripcion = resenia_descripcion;
        this.resenia_calificacion = resenia_calificacion;
    }

    public int getResenia_id() {
        return resenia_id;
    }

    public void setResenia_id(int resenia_id) {
        this.resenia_id = resenia_id;
    }

    public int getCliente_id() {
        return cliente_id;
    }

    public void setCliente_id(int cliente_id) {
        this.cliente_id = cliente_id;
    }

    public String getResenia_descripcion() {
        return resenia_descripcion;
    }

    public void setResenia_descripcion(String resenia_descripcion) {
        this.resenia_descripcion = resenia_descripcion;
    }

    public int getResenia_calificacion() {
        return resenia_calificacion;
    }

    public void setResenia_calificacion(int resenia_calificacion) {
        this.resenia_calificacion = resenia_calificacion;
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
