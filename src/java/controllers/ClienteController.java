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
        String mensaje = "";
        sql_command = "INSERT INTO public.cliente(\n"
                + "	cliente_dni, cliente_apellido_paterno, cliente_apellido_materno, cliente_nombre, cliente_fecha_nacimiento, cliente_direccion, cliente_email, cliente_pass, cliente_telefono)\n"
                + "	VALUES ('" + cliente.getPersona_dni() + "', '" + cliente.getPersona_apellido_paterno() + "', '" + cliente.getPersona_apellido_materno() + "', '" + cliente.getPersona_nombre() + "', '" + cliente.getPersona_fecha_nacimiento() + "', '" + cliente.getPersona_direccion() + "', '" + cliente.getPersona_email() + "', '" + cliente.getCliente_pass() + "', '" + cliente.getPersona_telefono() + "');";
        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

}