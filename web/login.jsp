<%-- 
    Document   : login
    Created on : 03-mar-2021, 12:26:27
    Author     : Lemmar Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>CycleShop | Tienda Online</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
                            <li class="nav-item active"><a class="nav-link" href="">Home</a></li>
                            <li id="iniciosesionop" class="nav-item" ><a class="nav-link" href="login.jsp">Iniciar Sesión</a></li>
                            <li class="nav-item"><a class="nav-link" href="shop.jsp">Catálogo</a></li>
                            <li class="nav-item"><a class="nav-link" href="">Acerca de</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div class="limiter" >
            <div class="container-login100" style="background-image: url('images/index.jpg');" style="opacity: 0.8">
                <div class="wrap-login100 p-t-190 p-b-30">
                    <form class="login100-form validate-form" action="LoginServlet">
                        <div class="login100-form-avatar" style="margin-top:-160px">
                            <img src="images/icons.gif" alt="AVATAR">
                        </div>

                        <span class="login100-form-title p-t-20 p-b-45" style="margin-top:-50px">
                            Cycleshop
                        </span>

                        <div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required" style="margin-top:-20px">
                            <input class="input100" type="text" name="username" id="username" placeholder="Email">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-user"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
                            <input class="input100" type="password" name="pass" id="pass" placeholder="Contraseña">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-lock"></i>
                            </span>
                        </div>

                        <div class="container-login100-form-btn p-t-10">
                            <button class="login100-form-btn">
                                Iniciar Sessíon
                            </button>
                        </div>

                        <div class="text-center w-full p-t-25 p-b-230" style="margin-top:-15px">
                            <a href="#" class="txt1">
                                Olvidaste Usuario / Contraseña?
                            </a>
                        </div>

                        <div class="text-center w-full" style="margin-top:-230px">
                            <a href="registro.jsp" class="txt1">
                                Crear nueva cuenta					
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--===============================================================================================-->	
        <script src="Login/vendor/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="Login/vendor/bootstrap/js/popper.js" type="text/javascript"></script>
        <script src="Login/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="Login/vendor/select2/select2.min.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script src="Login/js/main.js" type="text/javascript"></script>
        <!--===============================================================================================-->
        <script type="text/javascript">
            var sesion_id;
            function ocultarControles() {
                sesion_id = <%=session.getAttribute("cliente_id")%>
                console.log(sesion_id);
                if (sesion_id > 0) {
                    console.log('Si esta logeado');
                    document.getElementById('iniciosesionop').style.display = 'none';
                }
            }
            ;

            $(document).ready(ocultarControles());
        </script>
    </body>
</html>