/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entidades.Producto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
                + "     producto_estado=" + producto.getProducto_estado()+ ", created_at='" + producto.getCreated_at()+ "', updated_at='" + producto.getUpdated_at()+ "', producto_categoria='" + producto.getProducto_categoria() + "', producto_descripcion='" + producto.getProducto_descripcion() + ", producto_aro=" + producto.getProducto_aro() + "\n"
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
}
