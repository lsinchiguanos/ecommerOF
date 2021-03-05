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
public class Sesion extends Cliente {
    
    private String sec_hora;
    private String sec_ip;

    public Sesion() {
    }

    public String getSec_hora() {
        return sec_hora;
    }

    public void setSec_hora(String sec_hora) {
        this.sec_hora = sec_hora;
    }

    public String getSec_ip() {
        return sec_ip;
    }

    public void setSec_ip(String sec_ip) {
        this.sec_ip = sec_ip;
    }  
    
}
