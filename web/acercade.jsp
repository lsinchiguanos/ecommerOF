<%-- 
    Document   : shop
    Created on : 05-mar-2021, 23:27:49
    Author     : Mayra
--%>

<html lang="es">
    <!-- Basic -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Metas -->
        <title>CycleShop | Tienda Online</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

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
                            <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                            <li id="iniciosesionop" class="nav-item" ><a class="nav-link" href="login.jsp">Iniciar Sesión</a></li>
                            <li class="nav-item"><a class="nav-link" href="shop.jsp">Catálogo</a></li>
                            <li id="sugerencia" class="nav-item" style="display: none;" ><a class="nav-link" href="contact.jsp">Sugerencias</a></li>
                            <li class="nav-item"><a class="nav-link" href="acercade.jsp">Acerca de</a></li>
                        </ul>
                    </div>
                    <div class="attr-nav">
                        <ul>
                            <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                            <li class="side-menu"><a href="#">
                                    <i class="fa fa-shopping-bag"></i>
                                    <span class="badge">3</span>
                                </a></li>
                        </ul>
                    </div>
                </div>
                <div class="side">
                    <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                    <li class="cart-box">
                        <ul class="cart-list">
                            <li>
                                <a href="#" class="photo"><img src="images/index.jpg" class="cart-thumb" alt="" /></a>
                                <h6><a href="#">Delica omtantur </a></h6>
                                <p>1x - <span class="price">$80.00</span></p>
                            </li>
                            <li>
                                <a href="#" class="photo"><img src="images/index2.jpg" class="cart-thumb" alt="" /></a>
                                <h6><a href="#">Omnes ocurreret</a></h6>
                                <p>1x - <span class="price">$60.00</span></p>
                            </li>
                            <li>
                                <a href="#" class="photo"><img src="images/index3.jpg" class="cart-thumb" alt="" /></a>
                                <h6><a href="#">Agam facilisis</a></h6>
                                <p>1x - <span class="price">$40.00</span></p>
                            </li>
                            <li class="total">
                                <a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                                <span class="float-right"><strong>Total</strong>: $180.00</span>
                            </li>
                        </ul>
                    </li>
                </div>
            </nav>
        </header>
        <div class="services-box-main">
            <div class="top-search">
                <div class="container">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-search"></i></span>
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                    </div>
                </div>
            </div>
            <div class="all-title-box">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>Acerca de</h2>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                                <li class="breadcrumb-item active">Acerca de</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row my-4">
                    <div class="col-12">
                        <h2 class="noo-sh-title">Meet Our Team</h2>
                        <div class="row my-4">

                            <div class="col-sm-6 col-lg-3" style="width:120px">
                                <div class="hover-team">
                                    <div class="our-team"> <img src="images/45.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">Jean Carlos Almeida</h3> <span class="post">Back-End Developer</span> </div>
                                        <ul class="social">
                                            <li>
                                                <a href="#" class="fab fa-facebook"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-twitter"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-google-plus"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-youtube"></a>
                                            </li>
                                        </ul>
                                        <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                                    </div>

                                    <hr class="my-0"> </div>
                            </div>
                            <div class="col-sm-6 col-lg-3" style="width:120px">
                                <div class="hover-team">
                                    <div class="our-team"> <img src="images/1.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">Mayra Cevallos</h3> <span class="post">UI Design Developer</span> </div>
                                        <ul class="social">
                                            <li>
                                                <a href="#" class="fab fa-facebook"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-twitter"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-google-plus"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-youtube"></a>
                                            </li>
                                        </ul>
                                        <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                                    </div>

                                    <hr class="my-0"> </div>
                            </div>
                            <div class="col-sm-6 col-lg-3" style="width:120px">
                                <div class="hover-team">
                                    <div class="our-team"> <img src="images/3.jpeg"  alt="" />
                                        <div class="team-content">
                                            <h3 class="title">Steven Hurtado</h3> <span class="post">Project Manager</span> </div>
                                        <ul class="social">
                                            <li>
                                                <a href="#" class="fab fa-facebook"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-twitter"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-google-plus"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-youtube"></a>
                                            </li>
                                        </ul>
                                        <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                                    </div>

                                    <hr class="my-0"> </div>
                            </div>
                            <div class="col-sm-6 col-lg-3" style="width:120px">
                                <div class="hover-team">
                                    <div class="our-team"> <img src="images/2kjk.jpeg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">Leslie Sinchiguano </h3> <span class="post">Front-End Developer</span> </div>
                                        <ul class="social">
                                            <li>
                                                <a href="#" class="fab fa-facebook"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-twitter"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-google-plus"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-youtube"></a>
                                            </li>
                                        </ul>
                                        <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                                    </div>

                                    <hr class="my-0"> </div>
                            </div>
                            <div class="col-sm-4 col-lg-3" style="width:100px">
                                <div class="hover-team">
                                    <div class="our-team"> <img src="images/5.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">Josimar Galarza</h3> <span class="post">Tester Manager</span> </div>
                                        <ul class="social">
                                            <li>
                                                <a href="#" class="fab fa-facebook"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-twitter"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-google-plus"></a>
                                            </li>
                                            <li>
                                                <a href="#" class="fab fa-youtube"></a>
                                            </li>
                                        </ul>
                                        <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                                    </div>

                                    <hr class="my-0"> </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="footer-main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-widget">
                                <h4>Acerca de CycleShop</h4>
                                <p>Somos una empresa dedicada a la venta de accesorios de bicicletas, de todo tipo contamos con excelentes precios cómodos para la economía de cada cliente.
                                </p>
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-link">
                                <h4>Integrantes</h4>
                                <ul>
                                    <li>Almeida Murrillo Jean Carlos</li>
                                    <li>Cevallos Haro Mayra Alejandra</li>
                                    <li>Galarza Cerruffo Josimar Emilio</li>
                                    <li>Hurtado Becerra Steven David</li>
                                    <li>Sinchiguano Saltos Leslie Alexander</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-link-contact">
                                <h4>Contact Us</h4>
                                <ul>
                                    <li>
                                        <p><i class="fas fa-map-marker-alt"></i>Ecuador: Avenida Quito I. Days 3756 <br>Preston Street Wichita,<br> KS 67213 </p>
                                    </li>
                                    <li>
                                        <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705 770</a></p>
                                    </li>
                                    <li>
                                        <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">ventas_cycleshop@gmail.com</a></p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- copyright  -->
        <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- PLUGINS -->
        <script src="js/jquery.superslides.min.js" type="text/javascript"></script>
        <script src="js/bootstrap-select.js" type="text/javascript"></script>
        <script src="js/inewsticker.js" type="text/javascript"></script>
        <script src="js/bootsnav.js." type="text/javascript"></script>
        <script src="js/images-loded.min.js" type="text/javascript"></script>
        <script src="js/isotope.min.js" type="text/javascript"></script>
        <script src="js/owl.carousel.min.js" type="text/javascript"></script>
        <script src="js/baguetteBox.min.js" type="text/javascript"></script>
        <script src="js/form-validator.min.js" type="text/javascript"></script>
        <script src="js/contact-form-script.js" type="text/javascript"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        <script type="text/javascript">
            var sesion_id;
            function ocultarControles() {
                sesion_id = <%=session.getAttribute("cliente_id")%>
                console.log(sesion_id);
                if (sesion_id > 0) {
                    console.log('Si esta logeado');
                    document.getElementById('iniciosesionop').style.display = 'none';
                    document.getElementById('sugerencia').style.display = 'block';
                }
            }
            ;

            function sendCarrito(id_producto, valor, producto_precio) {
                /* 1 pendientes; 2 para favoritos */
                console.log(id_producto);
                console.log(valor);
                let dataobj = {
                    producto_id: id_producto,
                    opcion: valor,
                    cliente_id: <%=session.getAttribute("cliente_id")%>,
                    producto_precio: producto_precio
                };
                $.ajax({
                    type: 'POST',
                    url: 'CarritoServlet',
                    data: dataobj,
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

            $(document).ready(ocultarControles());
        </script>
        <script src="jsservlets/shopjs.js" type="text/javascript"></script>
    </body>
</html>