/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entidades.Sesion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Lemmar Dell
 */
public class SesionController extends conexion.ConexionDB {

    private String sql_command = "";
    private PreparedStatement pst = null;
    private ResultSet rs = null;

    public String newSession(Sesion sesion) throws SQLException {
        String mensaje = "La sesion se registro con éxito";
        sql_command = "INSERT INTO public.cliente_sesiones(\n"
                + "	sec_clienteid, sec_hora, sec_ip, created_at)\n"
                + "	VALUES (" + sesion.getCliente_id() + ",'" + sesion.getSec_hora() + "','" + sesion.getSec_ip() + "','" + sesion.getCreated_at() + "');";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String UpdateSession(Sesion sesion) throws SQLException {
        String mensaje = "La sesion fue actualizada con éxito";
        sql_command = "UPDATE public.cliente_sesiones\n"
                + "	SET sec_hora='" + sesion.getSec_hora() + "', sec_ip='" + sesion.getSec_ip() + "', created_at='" + sesion.getCreated_at() + "'\n"
                + "	WHERE sec_clienteid=" + sesion.getCliente_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String DeleteSession(Sesion sesion) throws SQLException {
        String mensaje = "La sesion fue eliminada con éxito";
        sql_command = "DELETE FROM public.cliente_sesiones\n"
                + "	WHERE sec_clienteid=" + sesion.getCliente_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchSession(Sesion sesion) throws SQLException {
        String mensaje = "La sesion fue encontrada con éxito";
        sql_command = "SELECT sec_clienteid, sec_hora, sec_ip, created_at\n"
                + "	FROM public.cliente_sesiones;";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }
    
     public String SearchSessionId(Sesion sesion) throws SQLException {
        String mensaje = "La sesion fue encontrada con éxito";
        sql_command = "SELECT sec_clienteid, sec_hora, sec_ip, created_at\n"
                + "	FROM public.cliente_sesiones WHERE sec_clienteid=" + sesion.getCliente_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }
}
