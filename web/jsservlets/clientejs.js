/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/* global Swal */

var clienteObj;
var cliente_id;
var cliente_dni;
var cliente_apellido_paterno;
var cliente_apellido_materno;
var cliente_fecha_nacimiento;
var cliente_direccion;
var cliente_telefono;
var cliente_email;
var cliente_pass;
var cliente_estado;
var created_at;
var updated_at;
var accionProceso = 'registro';


function clearObjects() {
    $('#DNI').val('');
    $('#ApellidoPaterno').val('');
    $('#ApellidoMaterno').val('');
    $('#Nombre').val('');
    $('#FechaNaci').val('');
    $('#Direccion').val('');
    $('#email').val('');
    $('#pass').val('');
    $('#Telefono').val('');
}
;

function getData() {
    clienteObj = {
        cliente_dni: $('#DNI').val(),
        cliente_apellido_paterno: $('#ApellidoPaterno').val(),
        cliente_apellido_materno: $('#ApellidoMaterno').val(),
        cliente_nombre: $('#Nombre').val(),
        cliente_fecha_nacimiento: $('#FechaNaci').val(),
        cliente_direccion: $('#Direccion').val(),
        cliente_email: $('#email').val(),
        cliente_pass: $('#pass').val(),
        cliente_telefono: $('#Telefono').val()
    };
}
;

function sendBD() {
    $.ajax({
        type: 'POST',
        url: "ClienteServlet?accion=" + accionProceso,
        data: clienteObj,
        success: function (msg) {
            mensaje = msg;
            if (mensaje === 'true') {
                swal("Good job!", "You clicked the button!", "success");
            } else {
                swal("Good job!", "You clicked the button!", "error");
            }
        },
        error: function () {
            swal("Good job!", "You clicked the button!", "error");
        }
    });
}
;

$('#btnRegistrarUsuario').click(function () {
    getData();
    sendBD();
});