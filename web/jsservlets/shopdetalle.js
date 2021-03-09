/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(obtenerDatos());

function obtenerDatos() {
    let id_producto = getParameterByName('id_producto');
    let opcion = getParameterByName('opcion');
    console.log(opcion);
    console.log(id_producto);
    document.getElementById('container-detalle_producto').innerHTML = '';
    $.getJSON('ProductoServlet?opcion=uno&id_producto=' + id_producto, function (data) {
        $.each(data, function (k, v) {
            let new_block_productos = '<div class="col-xl-5 col-lg-5 col-md-6"><div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel"><div class="carousel-inner" role="listbox"><div class="carousel-item active"> <img class="d-block w-100" src="' + v.producto_imagen + '" alt="First slide"> </div></div></div></div><div class="col-xl-7 col-lg-7 col-md-6"><div class="single-product-details"><h2>' + v.producto_nombre + '</h2><h5> $' + v.producto_precio + ' </h5><p class="available-stock"><span> ' + v.producto_codigo + '</span><p/><h4>Short Description:</h4><p>' + v.producto_descripcion + ' </p><h4>More Description:</h4><p>' + v.producto_categoria + ' </p><p>' + v.producto_aro + ' </p><div class="price-box-bar"><div class="cart-and-bay-btn"><a class="btn hvr-hover" data-fancybox-close="" onclick="sendCarrito(' + v.producto_id + ', 1, ' + v.producto_precio + ')>Add to cart</a></div></div></div></div>';
            $("#container-detalle_producto").append(new_block_productos);
        });
    });
}
;

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
;