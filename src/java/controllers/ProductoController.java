/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entidades.Producto;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lemmar Dell
 */
public class ProductoController extends conexion.ConexionDB {

    private String sql_command = "";
    private PreparedStatement pst = null;
    private ResultSet rs = null;

    public String newProducto(Producto producto) throws SQLException {
        String mensaje = "El producto fue registrado con éxito";
        sql_command = "INSERT INTO public.producto(\n"
                + "	producto_codigo, producto_nombre, producto_imagen, producto_precio, producto_categoria, producto_descripcion, producto_aro)\n"
                + "	VALUES ('" + producto.getProducto_codigo() + "', '" + producto.getProducto_nombre() + "', '" + producto.getProducto_imagen() + "', "
                + "" + producto.getProducto_precio() + ", '" + producto.getProducto_categoria() + "', '" + producto.getProducto_descripcion() + "', " + producto.getProducto_aro() + ");";
        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String UpdateProducto(Producto producto) throws SQLException {
        String mensaje = "El producto fue actualizado con éxito";
        sql_command = "UPDATE public.producto\n"
                + "	SET producto_codigo='" + producto.getProducto_codigo() + "', producto_nombre= '" + producto.getProducto_nombre() + "', producto_imagen='" + producto.getProducto_imagen() + "', producto_precio=" + producto.getProducto_precio() + ","
                + "     producto_estado=" + producto.getProducto_estado() + ", created_at='" + producto.getCreated_at() + "', updated_at='" + producto.getUpdated_at() + "', producto_categoria='" + producto.getProducto_categoria() + "', producto_descripcion='" + producto.getProducto_descripcion() + ", producto_aro=" + producto.getProducto_aro() + "\n"
                + "	WHERE producto_id=" + producto.getProducto_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String DeleteProducto(Producto producto) throws SQLException {
        String mensaje = "El producto fue eliminado con éxito";
        sql_command = "DELETE FROM public.producto\n"
                + "	WHERE producto_id=" + producto.getProducto_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchProducto(Producto producto) throws SQLException {
        String mensaje = "El producto fue encontrado con éxito";
        sql_command = "SELECT producto_codigo, producto_nombre, producto_imagen, producto_precio, producto_estado, created_at, updated_at, producto_categoria, producto_descripcion, producto_aro\n"
                + "	FROM public.producto;";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchProductoId(Producto producto) throws SQLException {
        String mensaje = "El producto fue encontrado con éxito";
        sql_command = "SELECT producto_codigo, producto_nombre, producto_imagen, producto_precio, producto_estado, created_at, updated_at, producto_categoria, producto_descripcion, producto_aro\n"
                + "	FROM public.producto WHERE producto_id=" + producto.getProducto_id() + ";";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public String SearchProductoNombre(Producto producto) throws SQLException {
        String mensaje = "El producto fue encontrado con éxito";
        sql_command = "SELECT producto_codigo, producto_nombre, producto_imagen, producto_precio, producto_estado, created_at, updated_at, producto_categoria, producto_descripcion, producto_aro\n"
                + "	FROM public.producto WHERE producto_nombre='" + producto.getProducto_nombre() + "';";

        pst = getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public List<Producto> ListProducto() {
        List<Producto> destinos = new ArrayList<Producto>();
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT\n"
                    + "	producto_id,\n"
                    + "	producto_codigo,\n"
                    + "	producto_nombre,\n"
                    + "	producto_imagen,\n"
                    + "	producto_precio,\n"
                    + "	producto_categoria,\n"
                    + "	producto_descripcion,\n"
                    + "	producto_aro\n"
                    + "	FROM producto";
            pst = getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                Producto newProducto = new Producto();
                newProducto.setProducto_id(Integer.valueOf(rs.getString("producto_id")));
                newProducto.setProducto_codigo(String.valueOf(rs.getString("producto_codigo")));
                newProducto.setProducto_nombre(String.valueOf(rs.getString("producto_nombre")));
                newProducto.setProducto_imagen(String.valueOf(rs.getString("producto_imagen")));
                newProducto.setProducto_precio(rs.getDouble("producto_precio"));
                newProducto.setProducto_categoria(String.valueOf(rs.getString("producto_categoria")));
                newProducto.setProducto_descripcion(String.valueOf(rs.getString("producto_descripcion")));
                newProducto.setProducto_aro(rs.getInt("producto_aro"));
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
    
    public List<Producto> ListProducto(int id_productos) {
        List<Producto> destinos = new ArrayList<Producto>();
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT\n"
                    + "	producto_id,\n"
                    + "	producto_codigo,\n"
                    + "	producto_nombre,\n"
                    + "	producto_imagen,\n"
                    + "	producto_precio,\n"
                    + "	producto_categoria,\n"
                    + "	producto_descripcion,\n"
                    + "	producto_aro\n"
                    + "	FROM producto where producto_id = " + id_productos;
            pst = getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                Producto newProducto = new Producto();
                newProducto.setProducto_id(Integer.valueOf(rs.getString("producto_id")));
                newProducto.setProducto_codigo(String.valueOf(rs.getString("producto_codigo")));
                newProducto.setProducto_nombre(String.valueOf(rs.getString("producto_nombre")));
                newProducto.setProducto_imagen(String.valueOf(rs.getString("producto_imagen")));
                newProducto.setProducto_precio(rs.getDouble("producto_precio"));
                newProducto.setProducto_categoria(String.valueOf(rs.getString("producto_categoria")));
                newProducto.setProducto_descripcion(String.valueOf(rs.getString("producto_descripcion")));
                newProducto.setProducto_aro(rs.getInt("producto_aro"));
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
