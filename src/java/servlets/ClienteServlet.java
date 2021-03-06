/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.ClienteController;
import entidades.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lemmar Dell
 */
public class ClienteServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ClienteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
            PrintWriter out = response.getWriter();
            Cliente cliente;
            String mensaje = "";
            String accion = request.getParameter("accion");
            String cliente_dni = request.getParameter("cliente_dni");
            String cliente_apellido_materno = request.getParameter("cliente_apellido_materno");
            String cliente_apellido_paterno = request.getParameter("cliente_apellido_paterno");
            String cliente_nombre = request.getParameter("cliente_nombre");
            String cliente_fecha_nacimiento = request.getParameter("cliente_fecha_nacimiento");
            String cliente_direccion = request.getParameter("cliente_direccion");
            String cliente_email = request.getParameter("cliente_email");
            String cliente_pass = request.getParameter("cliente_pass");
            String cliente_telefono = request.getParameter("cliente_telefono");
            switch (accion) {
                case "registro":
                    cliente = new Cliente(cliente_pass, cliente_dni, cliente_apellido_materno, cliente_apellido_paterno, cliente_nombre, cliente_fecha_nacimiento, cliente_direccion, cliente_telefono, cliente_email);
                    mensaje = new ClienteController().newCliente(cliente);
                    break;
                case "buscar":

                    break;
                case "eliminar":

                    break;
            }
            out.print(mensaje);
        } catch (SQLException ex) {
            Logger.getLogger(ClienteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
