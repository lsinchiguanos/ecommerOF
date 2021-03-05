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
public class Transaccion {
    private int trans_id;
    private String trans_fecha;
    private int trans_cliente_id;
    private String trans_uid;
    private String created_at;
    private String updated_at;

    public Transaccion() {
    }

    public int getTrans_id() {
        return trans_id;
    }

    public void setTrans_id(int trans_id) {
        this.trans_id = trans_id;
    }

    public String getTrans_fecha() {
        return trans_fecha;
    }

    public void setTrans_fecha(String trans_fecha) {
        this.trans_fecha = trans_fecha;
    }

    public int getTrans_cliente_id() {
        return trans_cliente_id;
    }

    public void setTrans_cliente_id(int trans_cliente_id) {
        this.trans_cliente_id = trans_cliente_id;
    }

    public String getTrans_uid() {
        return trans_uid;
    }

    public void setTrans_uid(String trans_uid) {
        this.trans_uid = trans_uid;
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