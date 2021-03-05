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
public class ClienteSubcip {
    private int client_sub;
    private int cliente_id;
    private int subcripcion_id;
    private String sub_fecha_compra;
    private String sub_fecha_vencimiento;
    private int sub_estado;
    private String created_at;
    private String updated_at;

    public ClienteSubcip() {
    }

    public int getClient_sub() {
        return client_sub;
    }

    public void setClient_sub(int client_sub) {
        this.client_sub = client_sub;
    }

    public int getCliente_id() {
        return cliente_id;
    }

    public void setCliente_id(int cliente_id) {
        this.cliente_id = cliente_id;
    }

    public int getSubcripcion_id() {
        return subcripcion_id;
    }

    public void setSubcripcion_id(int subcripcion_id) {
        this.subcripcion_id = subcripcion_id;
    }

    public String getSub_fecha_compra() {
        return sub_fecha_compra;
    }

    public void setSub_fecha_compra(String sub_fecha_compra) {
        this.sub_fecha_compra = sub_fecha_compra;
    }

    public String getSub_fecha_vencimiento() {
        return sub_fecha_vencimiento;
    }

    public void setSub_fecha_vencimiento(String sub_fecha_vencimiento) {
        this.sub_fecha_vencimiento = sub_fecha_vencimiento;
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
