/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function llenarProductos() {
    document.getElementById('container-grid-view').innerHTML = '';
    $.getJSON('ProductoServlet?opcion=all', function (data) {
        $.each(data, function (k, v) {
            let new_block_producto = '<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4"><div class="products-single fix"><div class="box-img-hover"><div class="type-lb"><p class="sale">Sale</p></div><img src="' + v.producto_imagen + '" class="img-fluid" alt="Image"><div class="mask-icon"><ul><li><a onclick="sendCard(' + v.producto_id + ')" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li><li><a onclick="sendCarrito(' + v.producto_id + ', 2,' + v.producto_precio + ')" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li></ul><a class="cart" onclick="sendCarrito(' + v.producto_id + ', 1, ' + v.producto_precio + ')">Add to Cart</a></div></div><div class="why-text"><h4>' + v.producto_nombre + '</h4><h5> $' + v.producto_precio + '</h5></div></div>';
            $("#container-grid-view").append(new_block_producto);
        });
    });

}
;

function sendCard(id_producto) {
    console.log(id_producto);
}
;

$(document).ready(llenarProductos());