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
public class Cliente extends Persona{
    
    private int cliente_id;
    private String cliente_pass;
    private int cliente_estado;
    private String created_at;
    private String updated_at;

    public Cliente() {
    }    
    
    public Cliente(int cliente_id, String cliente_pass, int cliente_estado, String created_at, String updated_at, String persona_dni, String persona_apellido_materno, String persona_apellido_paterno, String persona_nombre, String persona_fecha_nacimiento, String persona_direccion, String persona_telefono, String persona_email) {
        super(persona_dni, persona_apellido_materno, persona_apellido_paterno, persona_nombre, persona_fecha_nacimiento, persona_direccion, persona_telefono, persona_email);
        this.cliente_id = cliente_id;
        this.cliente_pass = cliente_pass;
        this.cliente_estado = cliente_estado;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public Cliente(String cliente_pass, String persona_dni, String persona_apellido_materno, String persona_apellido_paterno, String persona_nombre, String persona_fecha_nacimiento, String persona_direccion, String persona_telefono, String persona_email) {
        super(persona_dni, persona_apellido_materno, persona_apellido_paterno, persona_nombre, persona_fecha_nacimiento, persona_direccion, persona_telefono, persona_email);
        this.cliente_pass = cliente_pass;
    }

    public int getCliente_id() {
        return cliente_id;
    }

    public void setCliente_id(int cliente_id) {
        this.cliente_id = cliente_id;
    }    

    public String getCliente_pass() {
        return cliente_pass;
    }

    public void setCliente_pass(String cliente_pass) {
        this.cliente_pass = cliente_pass;
    }

    public int getCliente_estado() {
        return cliente_estado;
    }

    public void setCliente_estado(int cliente_estado) {
        this.cliente_estado = cliente_estado;
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