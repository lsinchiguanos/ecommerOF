/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entidades.Transaccion;
import entidades.TransaccionDetalle;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Yosimar
 */
public class TransaccionDetalleController extends conexion.ConexionDB {

    private String sql_command = "";
    private PreparedStatement pst = null;
    private ResultSet rs = null;

    public String newTransaccion(TransaccionDetalle transaccionD) throws SQLException {
        String mensaje = "La transacción fue registrada con éxito";
        sql_command = "INSERT INTO public.transaccion_detalle(\n"
                + "	transd_producto_id, trans_cantidad, trans_precio, trans_descuento, transd_trans_id)\n"
                + "	VALUES (" + transaccionD.getTransd_producto_id() + "," + transaccionD.getTrans_cantidad() + "," + transaccionD.getTrans_precio() + ", " + transaccionD.getTrans_descuento() + "," + transaccionD.getTrans_id() + ", ?);";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String UpdateTransaccion(TransaccionDetalle transaccionD) throws SQLException {
        String mensaje = "La transacción fue actualizada con éxito";
        sql_command = "UPDATE public.transaccion_detalle\n"
                + "	SET transd_producto_id=" + transaccionD.getTransd_producto_id() + ", trans_cantidad=" + transaccionD.getTrans_cantidad() + ", trans_precio=" + transaccionD.getTrans_precio() + ", trans_descuento=" + transaccionD.getTrans_descuento() + "\n"
                + "	WHERE transd_id=" + transaccionD.getTrans_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String DeleteTransaccion(TransaccionDetalle transaccionD) throws SQLException {
        String mensaje = "La transacción fue eliminada con éxito";
        sql_command = " DELETE FROM public.transaccion_detalle\n"
                + "	WHERE trans_id=" + transaccionD.getTrans_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchTransaccion(TransaccionDetalle transaccionD) throws SQLException {
        String mensaje = "La transacción fue encontrada con éxito";
        sql_command = "SELECT transd_producto_id, trans_cantidad, trans_precio, trans_descuento, transd_trans_id\n"
                + "	FROM public.transaccion_detalle;";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }
}
