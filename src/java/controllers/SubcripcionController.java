/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entidades.Subcripcion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Lemmar Dell
 */
public class SubcripcionController extends conexion.ConexionDB {

    private String sql_command = "";
    private PreparedStatement pst = null;
    private ResultSet rs = null;

    public String newSubcripcion(Subcripcion subcripcion) throws SQLException {
        String mensaje = "La suscripción fue registrada con éxito";
        sql_command = "INSERT INTO public.subcripcion(\n"
                + "	sub_descripcion, sub_detalle, sub_precio)\n"
                + "	VALUES ('" + subcripcion.getSub_descripcion() + "','" + subcripcion.getSub_detalle() + "'," + subcripcion.getSub_precio() + ");";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String UpdateSubcripcion(Subcripcion subcripcion) throws SQLException {
        String mensaje = "La suscripción fue actualizada con éxito";
        sql_command = "UPDATE public.subcripcion\n"
                + "	sub_descripcion='" + subcripcion.getSub_descripcion() + "', sub_detalle='" + subcripcion.getSub_detalle() + "', sub_precio=" + subcripcion.getSub_precio() + ", "
                + "     sub_estado=" + subcripcion.getSub_estado() + ", created_at='" + subcripcion.getCreated_at() + "', updated_at='" + subcripcion.getUpdated_at() + "'\n"
                + "	WHERE SET sub_id=" + subcripcion.getSub_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String DeleteSubcripcion(Subcripcion subcripcion) throws SQLException {
        String mensaje = "La suscripción fue eliminada con éxito";
        sql_command = "DELETE FROM public.subcripcion\n"
                + "	WHERE SET sub_id=" + subcripcion.getSub_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchSubcripcion(Subcripcion subcripcion) throws SQLException {
        String mensaje = "La suscripción fue encontrada con éxito";
        sql_command = "SELECT sub_id, sub_descripcion, sub_detalle, sub_precio, sub_estado, created_at, updated_at\n"
                + "	FROM public.subcripcion;";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchSubcripcionId(Subcripcion subcripcion) throws SQLException {
        String mensaje = "La suscripción fue encontrada con éxito";
        sql_command = "SELECT sub_id, sub_descripcion, sub_detalle, sub_precio, sub_estado, created_at, updated_at\n"
                + "	FROM public.subcripcion WHERE SET sub_id=" + subcripcion.getSub_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }
}
