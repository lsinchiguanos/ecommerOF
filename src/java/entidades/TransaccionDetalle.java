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
public class TransaccionDetalle extends Transaccion {
    private int transd_producto_id;
    private int trans_cantidad;
    private double trans_precio;
    private double trans_descuento;

    public TransaccionDetalle() {
    }

    public int getTransd_producto_id() {
        return transd_producto_id;
    }

    public void setTransd_producto_id(int transd_producto_id) {
        this.transd_producto_id = transd_producto_id;
    }

    public int getTrans_cantidad() {
        return trans_cantidad;
    }

    public void setTrans_cantidad(int trans_cantidad) {
        this.trans_cantidad = trans_cantidad;
    }

    public double getTrans_precio() {
        return trans_precio;
    }

    public void setTrans_precio(double trans_precio) {
        this.trans_precio = trans_precio;
    }

    public double getTrans_descuento() {
        return trans_descuento;
    }

    public void setTrans_descuento(double trans_descuento) {
        this.trans_descuento = trans_descuento;
    }
    
}
