<%-- 
    Document   : registro
    Created on : 04-mar-2021, 14:26:53
    Author     : Lemmar Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>CycleShop | Tienda Online</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="input, text, effect, focus, transition, interaction, inspiration, web design" />
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="Login/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login/vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="Login/vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login/vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login/css/util.css">
        <link rel="stylesheet" type="text/css" href="Login/css/main.css">
        <!--===============================================================================================-->
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">
        <!-- Materialize CSS -->
        <link href="css-text/css/demo.css" rel="stylesheet" type="text/css"/>
        <link href="css-text/css/set1.css" rel="stylesheet" type="text/css"/>
        <link href="css-text/css/normalize.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <%HttpSession s = request.getSession();%>
    
    <body>
        <header class="main-header">
            <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
                <div class="container">
                    <div class="navbar-header">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" class="logo" alt=""></a>
                    </div>

                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item "><a class="nav-link" href="index.jsp">Home</a></li>
                            <li id="iniciosesionop" class="nav-item" ><a class="nav-link" href="login.jsp">Iniciar Sesión</a></li>
                            <li class="nav-item"><a class="nav-link" href="">Catálogo</a></li>
                            <li class="nav-item"><a class="nav-link" href="">Acerca de</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
    </body>
    <div class="wrap-login1002 p-t-190 p-b-100">
        <form class="login100-form validate-form">
            <div class="limiter" >
                <center>
                    <p style="padding-top:30px; text-align:center; width:100%; font-size:50px; font-size:30px;color:#d33b33; margin-top:-230px; font-weight:bold; ">Registro Usuarios</p>
                </center>
                <hr style=" background-color:#d33b33; height: 5px; margin-left:10%; width: 86%;">
            </div>
            <section class="content"style="margin-left:95px;margin-top:-225px">
                <span class="input input--hoshi" style="width:300px" >
                    <input class="input__field input__field--hoshi" type="text" id="DNI" />
                    <label class="input__label input__label--hoshi input__label--hoshi-color-1" for="DNI">
                        <span class="input__label-content input__label-content--hoshi">DNI:</span>
                    </label>
                </span>
                <span class="input input--hoshi" style="margin-left:55px; width:300px ">
                    <input class="input__field input__field--hoshi" type="text" id="ApellidoPaterno" />
                    <label class="input__label input__label--hoshi input__label--hoshi-color-2" for="ApellidoPaterno">
                        <span class="input__label-content input__label-content--hoshi">Apellido Paterno:</span>
                    </label>
                </span>
                <span class="input input--hoshi" style="margin-left:55px; width:300px">
                    <input class="input__field input__field--hoshi" type="text" id="ApellidoMaterno" />
                    <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="ApellidoMaterno">
                        <span class="input__label-content input__label-content--hoshi">Apellido Materno:</span>
                    </label>
                </span>
                <span class="input input--hoshi" style="margin-top:3px; width:300px">
                    <input class="input__field input__field--hoshi" type="text" id="Nombre" />
                    <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="Nombre">
                        <span class="input__label-content input__label-content--hoshi">Nombre:</span>
                    </label>
                </span>
                <span class="input input--hoshi"style="margin-top:3px; margin-left:55px; width:300px">
                    <input class="input__field input__field--hoshi" type="date" id="FechaNaci" />
                    <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="FechaNaci">
                        <span class="input__label-content input__label-content--hoshi">Fecha Nacimiento:</span>
                    </label>
                </span>
                <span class="input input--hoshi"style="margin-top:3px; margin-left:55px; width:300px">
                    <input class="input__field input__field--hoshi" type="text" id="Direccion" />
                    <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="Direccion">
                        <span class="input__label-content input__label-content--hoshi">Dirección:</span>
                    </label>
                </span>
                <span class="input input--hoshi" style="margin-top:-20px; width:300px">
                    <input class="input__field input__field--hoshi" type="email" id="email" />
                    <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="email">
                        <span class="input__label-content input__label-content--hoshi">Email:</span>
                    </label>
                </span>
                <span class="input input--hoshi" style="margin-top:-20px; width:300px; margin-left:55px ">
                    <input class="input__field input__field--hoshi" type="password" id="pass" />
                    <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="pass">
                        <span class="input__label-content input__label-content--hoshi">Contraseña:</span>
                    </label>
                </span>
                <span class="input input--hoshi"style="margin-top:-20px; width:300px;margin-left: 55px" >
                    <input class="input__field input__field--hoshi" type="tels" id="Telefono" />
                    <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="Telefono">
                        <span class="input__label-content input__label-content--hoshi">Teléfono:</span>
                    </label>
                </span>
            </section>
        
                <div >
                    <button id="btnRegistrarUsuario" class="login100-form-btn" style="width: 200px; margin-left:550px;margin-top:-90px">
                        Registrarse
                    </button>
                </div>
        </form>
    </div>
    <script src="css-text/js/classie.js" type="text/javascript"></script>
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js" type="text/javascript"></script>
    <script src="jsservlets/clientejs.js" type="text/javascript"></script>
    <script>
        (function () {
            if (!String.prototype.trim) {
                (function () {
                    var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
                    String.prototype.trim = function () {
                        return this.replace(rtrim, '');
                    };
                })();
            }
            [].slice.call(document.querySelectorAll('input.input__field')).forEach(function (inputEl) {
                if (inputEl.value.trim() !== '') {
                    classie.add(inputEl.parentNode, 'input--filled');
                }
                // events:
                inputEl.addEventListener('focus', onInputFocus);
                inputEl.addEventListener('blur', onInputBlur);
            });
            function onInputFocus(ev) {
                classie.add(ev.target.parentNode, 'input--filled');
            }
            function onInputBlur(ev) {
                if (ev.target.value.trim() === '') {
                    classie.remove(ev.target.parentNode, 'input--filled');
                }
            }
        })();
    </script>
</html>