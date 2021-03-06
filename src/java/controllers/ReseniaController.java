/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entidades.Resenia;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Lemmar Dell
 */
public class ReseniaController extends conexion.ConexionDB {

    private String sql_command = "";
    private PreparedStatement pst = null;
    private ResultSet rs = null;

    public String newResenia(Resenia resenia) throws SQLException {
        String mensaje = "La resenia se registro con éxito";
        sql_command = "INSERT INTO public.resenias(\n"
                + "	resenia_id, cliente_id, resenia_descripcion, resenia_calificacion)\n"
                + "	VALUES (" + resenia.getCliente_id() + ", '" + resenia.getResenia_descripcion() + "'," + resenia.getResenia_calificacion() + ");";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String UpdateResenia(Resenia resenia) throws SQLException {
        String mensaje = "La resenia se actualizo con éxito";
        sql_command = "UPDATE public.resenias\n"
                + "	SET cliente_id=" + resenia.getCliente_id() + ", resenia_descripcion='" + resenia.getResenia_descripcion() + "', created_at='" + resenia.getCreated_at() + "', updated_at=" + resenia.getUpdated_at() + ", resenia_calificacion=" + resenia.getResenia_calificacion() + "\n"
                + "	WHERE resenia_id=" + resenia.getCliente_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String DeleteResenia(Resenia resenia) throws SQLException {
        String mensaje = "La resenia se elimino con éxito";
        sql_command = "DELETE FROM public.resenias\n"
                + "	WHERE resenia_id=" + resenia.getCliente_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchResenia(Resenia resenia) throws SQLException {
        String mensaje = "La resenia fue encontrada con éxito";
        sql_command = "SELECT resenia_id, cliente_id, resenia_descripcion, created_at, updated_at, resenia_calificacion\n"
                + "	FROM public.resenias;";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }
     public String SearchReseniaId(Resenia resenia) throws SQLException {
        String mensaje = "La resenia fue encontrada con éxito";
        sql_command = "SELECT resenia_id, cliente_id, resenia_descripcion, created_at, updated_at, resenia_calificacion\n"
                + "	FROM public.resenias WHERE resenia_id=" + resenia.getCliente_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }
}
