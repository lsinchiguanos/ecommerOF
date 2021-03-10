/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entidades.Carrito;
import entidades.CarritoModelView;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lemmar Dell
 */
public class CarritoController extends conexion.ConexionDB {

    private String sql_command = "";
    private PreparedStatement pst = null;
    private ResultSet rs = null;

    public String newCarrito(Carrito carrito) throws SQLException {
        String mensaje = "false";
        try {
            sql_command = "INSERT INTO public.carrito(\n"
                    + "	car_clien_id, car_producto_id, car_precio, car_estado)\n"
                    + "	VALUES (" + carrito.getCar_cliente_id() + ", " + carrito.getCar_producto_id() + ", " + carrito.getCar_precio() + ", " + carrito.getCar_estado() + ");";
            pst = getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                mensaje = "true";
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
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

    public String UpdateCarrito(Carrito carrito) throws SQLException {
        String mensaje = "El carrito de compra se actualizo con éxito";
        sql_command = "UPDATE public.carrito\n"
                + "	SET car_cantidad=" + carrito.getCar_cantidad() + ", car_precio=" + carrito.getCar_precio() + "\n"
                + "	car_estado=" + carrito.getCar_estado() + ", created_at='" + carrito.getCreated_at() + "', updated_at='" + carrito.getUpdated_at() + "',"
                + "     WHERE car_clien_id=" + carrito.getCar_cliente_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String DeleteCarrito(Carrito carrito) throws SQLException {
        String mensaje = "El carrito de compra se elimino con éxito";
        sql_command = "DELETE FROM public.carrito\n"
                + "	WHERE car_clien_id=" + carrito.getCar_cliente_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchCarrito(Carrito carrito) throws SQLException {
        String mensaje = "el carrito de compra fue encontrado con éxito";
        sql_command = "SELECT car_clien_id, car_producto_id, car_cantidad, car_precio, car_estado, created_at, updated_at\n"
                + "	FROM public.carrito;";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public List<CarritoModelView> ListProducto(int id_cliente) {
        List<CarritoModelView> destinos = new ArrayList<CarritoModelView>();
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT \n"
                    + "	car.car_producto_id as \"ids\",\n"
                    + "	pr.producto_imagen as \"imagen\",\n"
                    + "	pr.producto_nombre as \"nombre\",\n"
                    + "	car.car_precio as \"precio\",\n"
                    + "	car.car_cantidad as \"cantidad\"\n"
                    + "	FROM \n"
                    + "		carrito car, \n"
                    + "		producto pr\n"
                    + "	WHERE\n"
                    + "		car.car_producto_id = pr.producto_id AND\n"
                    + "		car.car_estado = 1 AND\n"
                    + "		car.car_clien_id = " + id_cliente;
            pst = getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                CarritoModelView newProducto = new CarritoModelView();
                newProducto.setIds(rs.getInt("ids"));
                newProducto.setImagen(String.valueOf(rs.getString("imagen")));
                newProducto.setNombre(String.valueOf(rs.getString("nombre")));
                newProducto.setPrecio(rs.getDouble("precio"));
                newProducto.setCantidad(rs.getInt("cantidad"));
                destinos.add(newProducto);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
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
        return destinos;
    }

}
