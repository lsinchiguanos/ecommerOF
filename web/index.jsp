<%-- 
    Document   : index
    Created on : 03-mar-2021, 12:26:20
    Author     : Lemmar Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>CycleShop | Tienda Online</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
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
                            <li class="nav-item active"><a class="nav-link" href="">Home</a></li>
                            <li id="iniciosesionop" class="nav-item" ><a class="nav-link" href="login.jsp">Iniciar Sesi??n</a></li>
                            <li class="nav-item"><a class="nav-link" href="shop.jsp">Cat??logo</a></li>
                            <li id="sugerencia" class="nav-item" style="display: none;" ><a class="nav-link" href="contact.jsp">Sugerencias</a></li>
                            <li class="nav-item"><a class="nav-link" href="acercade.jsp">Acerca de</a></li>
                        </ul>
                    </div>
                    <div class="attr-nav">
                        <ul>
                            <li class="side-menu"><a href="carrito.jsp"><i class="fa fa-shopping-bag"></i></a></li>
                            <li class="side-menu"><a href="#"><img src="images/cerrar-sesion.png" style="height:20px; margin-left: 8px" alt=""/></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div id="slides-shop" class="cover-slides">
            <ul class="slides-container">
                <li class="text-left">
                    <img src="images/index.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Welcome To <br> Cycleshop</strong></h1>
                                <p class="m-b-40">Amor por la vida en dos ruedas <br> Piensa en las bicicletas como arte que se puede montar y que puede salvar al mundo..</p>
                                <p><a class="btn hvr-hover" href="#">M??s informaci??n</a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="text-center">
                    <img src="images/index2.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Welcome To <br> Cycleshop</strong></h1>
                                <p class="m-b-40">Sal a rodar.. Divi??rtete <br> Para m??, no importa si est?? lloviendo o si brilla el sol o lo que sea: mientras conduzca una bicicleta, s?? que soy el tipo m??s afortunado del mundo</p>
                                <p><a class="btn hvr-hover" href="#">M??s informaci??n</a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="text-right">
                    <img src="images/index3.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Welcome To <br> Cycleshop</strong></h1>
                                <p class="m-b-40">Sue??a en grande <br> Cuando te duele, es cuando puedes marcar la diferencia.</p>
                                <p><a class="btn hvr-hover" href="#">M??s informaci??n</a></p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="slides-navigation">
                <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
            </div>
        </div>
        <div class="categories-shop">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="img-fluid" src="images/t-shirts-img.jpg" alt="" />
                            <a class="btn hvr-hover" href="#">RUTA</a>
                        </div>
                        <div class="shop-cat-box">
                            <img class="img-fluid" src="images/shirt-img.jpg" alt="" />
                            <a class="btn hvr-hover" href="#">MONTA??A</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="img-fluid" src="images/wallet-img.jpg" alt="" />
                            <a class="btn hvr-hover" href="#">NI??OS</a>
                        </div>
                        <div class="shop-cat-box">
                            <img class="img-fluid" src="images/women-bag-img.jpg" style="height:230px "alt="" />
                            <a class="btn hvr-hover" href="#">EL??CTRICAS</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="img-fluid" src="images/shoes-img.jpg" alt="" />
                            <a class="btn hvr-hover" href="#">PROFESIONAL</a>
                        </div>
                        <div class="shop-cat-box">
                            <img class="img-fluid" src="images/women-shoes-img.jpg" alt="" />
                            <a class="btn hvr-hover" href="#">CL??SICAS</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="products-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1>Accesorios</h1>
                            <p>Contamos con los mejores precios del mercado.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="special-menu text-center">
                            <div class="button-group filter-button-group">
                                <button class="active" data-filter="*">Todos</button>
                                <button data-filter=".top-featured">Lo m??s destacado</button>
                                <button data-filter=".best-seller">Lo m??s vendido</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row special-list">
                    <div class="col-lg-3 col-md-6 special-grid best-seller">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/accesorio.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Aceite de ruedas</h4>
                                <h5> $5.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="new">New</p>
                                </div>
                                <img src="images/accesorio2.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Luces Led</h4>
                                <h5> $3.75</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/accesorio3.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Focos</h4>
                                <h5> $10.79</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/accesorio3.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Focos</h4>
                                <h5> $10.79</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/accesorio3.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Lorem ipsum dolor sit amet</h4>
                                <h5> $10.79</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/accesorio3.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Lorem ipsum dolor sit amet</h4>
                                <h5> $10.79</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/accesorio3.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Lorem ipsum dolor sit amet</h4>
                                <h5> $10.79</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 special-grid best-seller">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <div class="type-lb">
                                    <p class="sale">Sale</p>
                                </div>
                                <img src="images/accesorio4.jpg" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <a class="cart" href="#">Add to Cart</a>
                                </div>
                            </div>
                            <div class="why-text">
                                <h4>Lorem ipsum dolor sit amet</h4>
                                <h5> $15.79</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="instagram-box">
            <div class="main-instagram owl-carousel owl-theme">
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-01.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-02.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-03.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-04.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-05.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-06.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-07.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-08.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-09.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-05.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
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
                                <p>Somos una empresa dedicada a la venta de accesorios de bicicletas, de todo tipo contamos con excelentes precios c??modos para la econom??a de cada cliente.
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
                                    <li>Galarza Cerrufo Josimar Emilio</li>
                                    <li>Hurtado Becerra Steven</li>
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
        <div class="footer-copyright">
            <p class="footer-company">CycleShop All Rights Reserved. &copy; 2020 <a href="#">Grupo  D</a></p>
        </div>
        <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>
        <!--  JS  -->
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!--  PLUGINS -->
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
            $(document).ready(ocultarControles());
        </script>
    </body>
</html>
