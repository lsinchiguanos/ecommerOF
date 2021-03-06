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
                + "	sec_clienteid, sec_ip)\n"
                + "	VALUES (" + sesion.getCliente_id() + ",'" + sesion.getSec_ip() + "');";

        try {
            pst = getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            if (rs.next()) {
                mensaje = "La sesion se registro con éxito";
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                if (isConected()) {
                    getConecction().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return mensaje;
    }
}
