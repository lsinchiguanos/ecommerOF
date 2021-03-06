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
                            <li class="nav-item"><a class="nav-link" href="">Iniciar Sesi�n</a></li>
                            <li class="nav-item"><a class="nav-link" href="checkout.jsp">Cat�logo</a></li>
                            <li class="nav-item"><a class="nav-link" href="">Acerca de</a></li>
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
        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Ventas</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Shop</a></li>
                            <li class="breadcrumb-item active">Cart</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="cart-box-main">
            <div class="container">
                <div class="row new-account-login">
                    <div class="col-sm-6 col-lg-6 mb-3">
                        <div class="title-left">
                            <h3>Account Login</h3>
                        </div>
                        <h5><a data-toggle="collapse" href="#formLogin" role="button" aria-expanded="false">Click here to Login</a></h5>
                        <form class="mt-3 collapse review-form-box" id="formLogin">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="InputEmail" class="mb-0">Email Address</label>
                                    <input type="email" class="form-control" id="InputEmail" placeholder="Enter Email"> </div>
                                <div class="form-group col-md-6">
                                    <label for="InputPassword" class="mb-0">Password</label>
                                    <input type="password" class="form-control" id="InputPassword" placeholder="Password"> </div>
                            </div>
                            <button type="submit" class="btn hvr-hover">Login</button>
                        </form>
                    </div>
                    <div class="col-sm-6 col-lg-6 mb-3">
                        <div class="title-left">
                            <h3>Create New Account</h3>
                        </div>
                        <h5><a data-toggle="collapse" href="#formRegister" role="button" aria-expanded="false">Click here to Register</a></h5>
                        <form class="mt-3 collapse review-form-box" id="formRegister">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="InputName" class="mb-0">First Name</label>
                                    <input type="text" class="form-control" id="InputName" placeholder="First Name"> </div>
                                <div class="form-group col-md-6">
                                    <label for="InputLastname" class="mb-0">Last Name</label>
                                    <input type="text" class="form-control" id="InputLastname" placeholder="Last Name"> </div>
                                <div class="form-group col-md-6">
                                    <label for="InputEmail1" class="mb-0">Email Address</label>
                                    <input type="email" class="form-control" id="InputEmail1" placeholder="Enter Email"> </div>
                                <div class="form-group col-md-6">
                                    <label for="InputPassword1" class="mb-0">Password</label>
                                    <input type="password" class="form-control" id="InputPassword1" placeholder="Password"> </div>
                            </div>
                            <button type="submit" class="btn hvr-hover">Register</button>
                        </form>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-lg-6 mb-3">
                            <div class="checkout-address">
                                <div class="title-left">
                                    <h3>Billing address</h3>
                                </div>
                                <form class="needs-validation" novalidate>
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="firstName">First name *</label>
                                            <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                                            <div class="invalid-feedback"> Valid first name is required. </div>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="lastName">Last name *</label>
                                            <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                                            <div class="invalid-feedback"> Valid last name is required. </div>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="username">Username *</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="username" placeholder="" required>
                                            <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="email">Email Address *</label>
                                        <input type="email" class="form-control" id="email" placeholder="">
                                        <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="address">Address *</label>
                                        <input type="text" class="form-control" id="address" placeholder="" required>
                                        <div class="invalid-feedback"> Please enter your shipping address. </div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="address2">Address 2 *</label>
                                        <input type="text" class="form-control" id="address2" placeholder=""> </div>
                                    <div class="row">
                                        <div class="col-md-5 mb-3">
                                            <label for="country">Country *</label>
                                            <select class="wide w-100" id="country">
                                                <option value="Choose..." data-display="Select">Choose...</option>
                                                <option value="United States">United States</option>
                                            </select>
                                            <div class="invalid-feedback"> Please select a valid country. </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="state">State *</label>
                                            <select class="wide w-100" id="state">
                                                <option data-display="Select">Choose...</option>
                                                <option>California</option>
                                            </select>
                                            <div class="invalid-feedback"> Please provide a valid state. </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="zip">Zip *</label>
                                            <input type="text" class="form-control" id="zip" placeholder="" required>
                                            <div class="invalid-feedback"> Zip code required. </div>
                                        </div>
                                    </div>
                                    <hr class="mb-4">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="same-address">
                                        <label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="save-info">
                                        <label class="custom-control-label" for="save-info">Save this information for next time</label>
                                    </div>
                                    <hr class="mb-4">
                                    <div class="title"> <span>Payment</span> </div>
                                    <div class="d-block my-3">
                                        <div class="custom-control custom-radio">
                                            <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                            <label class="custom-control-label" for="credit">Credit card</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                                            <label class="custom-control-label" for="debit">Debit card</label>
                                        </div>
                                        <div class="custom-control custom-radio">
                                            <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                                            <label class="custom-control-label" for="paypal">Paypal</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="cc-name">Name on card</label>
                                            <input type="text" class="form-control" id="cc-name" placeholder="" required> <small class="text-muted">Full name as displayed on card</small>
                                            <div class="invalid-feedback"> Name on card is required </div>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="cc-number">Credit card number</label>
                                            <input type="text" class="form-control" id="cc-number" placeholder="" required>
                                            <div class="invalid-feedback"> Credit card number is required </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 mb-3">
                                            <label for="cc-expiration">Expiration</label>
                                            <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                                            <div class="invalid-feedback"> Expiration date required </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="cc-expiration">CVV</label>
                                            <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                                            <div class="invalid-feedback"> Security code required </div>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <div class="payment-icon">
                                                <ul>
                                                    <li><img class="img-fluid" src="images/payment-icon/1.png" alt=""></li>
                                                    <li><img class="img-fluid" src="images/payment-icon/2.png" alt=""></li>
                                                    <li><img class="img-fluid" src="images/payment-icon/3.png" alt=""></li>
                                                    <li><img class="img-fluid" src="images/payment-icon/5.png" alt=""></li>
                                                    <li><img class="img-fluid" src="images/payment-icon/7.png" alt=""></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="mb-1"> </form>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-6 mb-3">
                            <div class="row">
                                <div class="col-md-12 col-lg-12">
                                    <div class="shipping-method-box">
                                        <div class="title-left">
                                            <h3>Shipping Method</h3>
                                        </div>
                                        <div class="mb-4">
                                            <div class="custom-control custom-radio">
                                                <input id="shippingOption1" name="shipping-option" class="custom-control-input" checked="checked" type="radio">
                                                <label class="custom-control-label" for="shippingOption1">Standard Delivery</label> <span class="float-right font-weight-bold">FREE</span> </div>
                                            <div class="ml-4 mb-2 small">(3-7 business days)</div>
                                            <div class="custom-control custom-radio">
                                                <input id="shippingOption2" name="shipping-option" class="custom-control-input" type="radio">
                                                <label class="custom-control-label" for="shippingOption2">Express Delivery</label> <span class="float-right font-weight-bold">$10.00</span> </div>
                                            <div class="ml-4 mb-2 small">(2-4 business days)</div>
                                            <div class="custom-control custom-radio">
                                                <input id="shippingOption3" name="shipping-option" class="custom-control-input" type="radio">
                                                <label class="custom-control-label" for="shippingOption3">Next Business day</label> <span class="float-right font-weight-bold">$20.00</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-12">
                                    <div class="odr-box">
                                        <div class="title-left">
                                            <h3>Shopping cart</h3>
                                        </div>
                                        <div class="rounded p-2 bg-light">
                                            <div class="media mb-2 border-bottom">
                                                <div class="media-body"> <a href="detail.html"> Lorem ipsum dolor sit amet</a>
                                                    <div class="small text-muted">Price: $80.00 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $80.00</div>
                                                </div>
                                            </div>
                                            <div class="media mb-2 border-bottom">
                                                <div class="media-body"> <a href="detail.html"> Lorem ipsum dolor sit amet</a>
                                                    <div class="small text-muted">Price: $60.00 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $60.00</div>
                                                </div>
                                            </div>
                                            <div class="media mb-2">
                                                <div class="media-body"> <a href="detail.html"> Lorem ipsum dolor sit amet</a>
                                                    <div class="small text-muted">Price: $40.00 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $40.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-12">
                                    <div class="order-box">
                                        <div class="title-left">
                                            <h3>Your order</h3>
                                        </div>
                                        <div class="d-flex">
                                            <div class="font-weight-bold">Product</div>
                                            <div class="ml-auto font-weight-bold">Total</div>
                                        </div>
                                        <hr class="my-1">
                                        <div class="d-flex">
                                            <h4>Sub Total</h4>
                                            <div class="ml-auto font-weight-bold"> $ 440 </div>
                                        </div>
                                        <div class="d-flex">
                                            <h4>Discount</h4>
                                            <div class="ml-auto font-weight-bold"> $ 40 </div>
                                        </div>
                                        <hr class="my-1">
                                        <div class="d-flex">
                                            <h4>Coupon Discount</h4>
                                            <div class="ml-auto font-weight-bold"> $ 10 </div>
                                        </div>
                                        <div class="d-flex">
                                            <h4>Tax</h4>
                                            <div class="ml-auto font-weight-bold"> $ 2 </div>
                                        </div>
                                        <div class="d-flex">
                                            <h4>Shipping Cost</h4>
                                            <div class="ml-auto font-weight-bold"> Free </div>
                                        </div>
                                        <hr>
                                        <div class="d-flex gr-total">
                                            <h5>Grand Total</h5>
                                            <div class="ml-auto h5"> $ 388 </div>
                                        </div>
                                        <hr> </div>
                                </div>
                                <div class="col-12 d-flex shopping-box"> <a href="checkout.html" class="ml-auto btn hvr-hover">Place Order</a> </div>
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
                                <p>Somos una empresa dedicada a la venta de accesorios de bicicletas, de todo tipo contamos con excelentes precios c�modos para la econom�a de cada cliente.
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
        <div class="footer-copyright">
            <p class="footer-company">CycleShop All Rights Reserved. &copy; 2020 <a href="#">Grupo  D</a></p>
            <a href="https://html.design/">html design</a></p>
    </div>
    <!-- copyright  -->
    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/inewsticker.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/baguetteBox.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>


</body>
</html>
