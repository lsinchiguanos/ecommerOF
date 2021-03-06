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
public class Persona {
    
    private String persona_dni;
    private String persona_apellido_materno;
    private String persona_apellido_paterno;
    private String persona_nombre;
    private String persona_fecha_nacimiento;
    private String persona_direccion;
    private String persona_telefono;
    private String persona_email;

    public Persona() {
    }
    
    public Persona(String persona_dni, String persona_apellido_materno, String persona_apellido_paterno, String persona_nombre, String persona_fecha_nacimiento, String persona_direccion, String persona_telefono, String persona_email) {
        this.persona_dni = persona_dni;
        this.persona_apellido_materno = persona_apellido_materno;
        this.persona_apellido_paterno = persona_apellido_paterno;
        this.persona_nombre = persona_nombre;
        this.persona_fecha_nacimiento = persona_fecha_nacimiento;
        this.persona_direccion = persona_direccion;
        this.persona_telefono = persona_telefono;
        this.persona_email = persona_email;
    }
    
    
    
    public String getPersona_dni() {
        return persona_dni;
    }

    public void setPersona_dni(String persona_dni) {
        this.persona_dni = persona_dni;
    }

    public String getPersona_apellido_materno() {
        return persona_apellido_materno;
    }

    public void setPersona_apellido_materno(String persona_apellido_materno) {
        this.persona_apellido_materno = persona_apellido_materno;
    }

    public String getPersona_apellido_paterno() {
        return persona_apellido_paterno;
    }

    public void setPersona_apellido_paterno(String persona_apellido_paterno) {
        this.persona_apellido_paterno = persona_apellido_paterno;
    }

    public String getPersona_nombre() {
        return persona_nombre;
    }

    public void setPersona_nombre(String persona_nombre) {
        this.persona_nombre = persona_nombre;
    }

    public String getPersona_fecha_nacimiento() {
        return persona_fecha_nacimiento;
    }

    public void setPersona_fecha_nacimiento(String persona_fecha_nacimiento) {
        this.persona_fecha_nacimiento = persona_fecha_nacimiento;
    }

    public String getPersona_direccion() {
        return persona_direccion;
    }

    public void setPersona_direccion(String persona_direccion) {
        this.persona_direccion = persona_direccion;
    }

    public String getPersona_telefono() {
        return persona_telefono;
    }

    public void setPersona_telefono(String persona_telefono) {
        this.persona_telefono = persona_telefono;
    }

    public String getPersona_email() {
        return persona_email;
    }

    public void setPersona_email(String persona_email) {
        this.persona_email = persona_email;
    }

}