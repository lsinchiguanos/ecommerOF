/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function getCarrito() {

    //let id_cliente = <%=session.getAttribute("cliente_id")%>;
    $('#contentTableA tbody tr').remove();
    /*$.getJSON('CarritoOperaciones?op=all&id=0&id_cliente='id_cliente, function (data) {
     $.each(data, function (k, v) {
     let new_block_productos = '<tr><td class="thumbnail-img"><a href="#"><img class="img-fluid" src="' + v.ids + '" alt="" /></a></td><td class="name-pr"><a href="#">' + v.nombre + ' </a></td><td class="price-pr"><p>$ ' + v.precio + '</p></td><td class="quantity-box"><input type="number" size="4" value="1" max="99" min="0" step="1" class="c-input-text qty text"></td><td class="total-pr"><p id="precio">$ 80.0</p></td><td class="remove-pr"><a onclick="eliminarItem(' + v.ids + ')"><i class="fas fa-times"></i></a></td></tr>';
     $("#contentTableA > tbody").append(new_block_productos);
     });
     }
     );*/
}
;

function eliminarItem(producto) {
    console.log(producto);
}
;

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
;