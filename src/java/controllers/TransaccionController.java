/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entidades.Transaccion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Lemmar Dell
 */
public class TransaccionController extends conexion.ConexionDB {

    private String sql_command = "";
    private PreparedStatement pst = null;
    private ResultSet rs = null;

    public String newTransaccion(Transaccion transaccion) throws SQLException {
        String mensaje = "La transacción fue registrada con éxito";
        sql_command = "INSERT INTO public.transaccion(\n"
                + "	trans_cliente_id, trans_uid)\n"
                + "	VALUES (" + transaccion.getTrans_cliente_id() + ", '" + transaccion.getTrans_uid() + "');";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String UpdateTransaccion(Transaccion transaccion) throws SQLException {
        String mensaje = "La transacción fue actualizada con éxito";
        sql_command = "UPDATE public.transaccion\n"
                + "	trans_fecha='" + transaccion.getTrans_fecha() + "', trans_cliente_id=" + transaccion.getTrans_cliente_id() + ", trans_uid='" + transaccion.getTrans_uid() + "', created_at='" + transaccion.getCreated_at() + "', updated_at='" + transaccion.getUpdated_at() + "'\n"
                + "	WHERE trans_id=" + transaccion.getTrans_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String DeleteTransaccion(Transaccion transaccion) throws SQLException {
        String mensaje = "La transacción fue eliminada con éxito";
        sql_command = "DELETE FROM public.transaccion\n"
                + "	WHERE trans_id=" + transaccion.getTrans_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchTransaccion(Transaccion transaccion) throws SQLException {
        String mensaje = "La transacción fue encontrada con éxito";
        sql_command = "SELECT trans_fecha, trans_cliente_id, trans_uid, created_at, updated_at\n"
                + "	FROM public.transaccion;";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }
}
