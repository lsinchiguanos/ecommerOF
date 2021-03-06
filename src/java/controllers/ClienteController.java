/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entidades.Cliente;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Lemmar Dell
 */
public class ClienteController extends conexion.ConexionDB {

    private String sql_command = "";
    private PreparedStatement pst = null;
    private ResultSet rs = null;

    public String newCliente(Cliente cliente) throws SQLException {
        String mensaje = "El cliente ha sigo registrado con éxito";
        sql_command = "INSERT INTO public.cliente(\n"
                + "	cliente_dni, cliente_apellido_paterno, cliente_apellido_materno, cliente_nombre, cliente_fecha_nacimiento, cliente_direccion, cliente_email, cliente_pass, cliente_telefono)\n"
                + "	VALUES ('" + cliente.getPersona_dni() + "', '" + cliente.getPersona_apellido_paterno() + "', '" + cliente.getPersona_apellido_materno() + "', '" + cliente.getPersona_nombre() + "', "
                + "     '" + cliente.getPersona_fecha_nacimiento() + "', '" + cliente.getPersona_direccion() + "', '" + cliente.getPersona_email() + "', '" + cliente.getCliente_pass() + "', '" + cliente.getPersona_telefono() + "');";
        try {
            pst = getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            if (rs.next()) {
                mensaje = "true";
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
            mensaje = "false";
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

    public String UpdateCliente(Cliente cliente) throws SQLException {
        String mensaje = "El cliente a sido actualizado con éxito";
        sql_command = "UPDATE public.cliente\n"
                + "	SET cliente_dni='" + cliente.getPersona_dni() + "', cliente_apellido_paterno='" + cliente.getPersona_apellido_paterno() + ", cliente_apellido_materno='" + cliente.getPersona_apellido_materno() + "', cliente_nombre='" + cliente.getPersona_nombre() + "', cliente_fecha_nacimiento='" + cliente.getPersona_fecha_nacimiento() + "', "
                + "cliente_direccion= '" + cliente.getPersona_direccion() + "', cliente_email='" + cliente.getPersona_email() + "', cliente_pass='" + cliente.getCliente_pass() + "',cliente_estado=" + cliente.getCliente_estado() + ", created_at='" + cliente.getCreated_at() + "', updated_at='" + cliente.getUpdated_at() + "', cliente_telefono='" + cliente.getPersona_telefono() + "'\n"
                + "	WHERE cliente_id=" + cliente.getCliente_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String DeleteCliente(Cliente cliente) throws SQLException {
        String mensaje = "El cliente a sido eliminado con éxito";
        sql_command = "DELETE FROM public.cliente\n"
                + "	WHERE cliente_id=" + cliente.getCliente_id() + ";";
        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchCliente(Cliente cliente) throws SQLException {
        String mensaje = "el cliente ha sido encontrado con éxito";
        sql_command = "SELECT cliente_id, cliente_dni, cliente_apellido_paterno, cliente_apellido_materno, cliente_nombre, cliente_fecha_nacimiento, cliente_direccion, cliente_email, cliente_pass, cliente_estado, created_at, updated_at, cliente_telefono\n"
                + "	FROM public.cliente;";
        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchClienteId(Cliente cliente) throws SQLException {
        String mensaje = "el cliente ha sido encontrado con éxito";
        sql_command = "SELECT cliente_dni, cliente_apellido_paterno, cliente_apellido_materno, cliente_nombre, cliente_fecha_nacimiento, cliente_direccion, cliente_email, cliente_pass, cliente_estado, created_at, updated_at, cliente_telefono\n"
                + "	FROM public.cliente WHERE cliente_id=" + cliente.getCliente_id() + ";";
        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchClienteNombre(Cliente cliente) throws SQLException {
        String mensaje = "el cliente ha sido encontrado con éxito";
        sql_command = "SELECT cliente_dni, cliente_apellido_paterno, cliente_apellido_materno, cliente_nombre, cliente_fecha_nacimiento, cliente_direccion, cliente_email, cliente_pass, cliente_estado, created_at, updated_at, cliente_telefono\n"
                + "	FROM public.cliente WHERE cliente_nombre='" + cliente.getPersona_nombre() + "';";
        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }
}
