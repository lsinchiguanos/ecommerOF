/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Lemmar Dell
 */
public class ConexionDB implements Serializable{
    private final String user = "postgres";
    private final String pass = "12345";
    private final String url = "jdbc:postgresql://localhost:5432/cyclestore";
    private Connection conecction;
    private static final long serialVersionUID = 1L;

    public ConexionDB() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println(e.getMessage());
        }
    }

    public synchronized Connection getConecction() {
        try {
            if (conecction == null || conecction.isClosed()) {
                conecction = DriverManager.getConnection(url, user, pass);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return conecction;
    }

    public boolean isConected() {
        try {
            if (conecction == null) {
                return false;
            } else return !conecction.isClosed();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}