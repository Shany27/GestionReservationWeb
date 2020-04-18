<%--
  Created by IntelliJ IDEA.
  User: cena
  Date: 01/03/2020
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Travelo</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">

    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- header-start -->
<%@include file="menu.jsp" %>
<!-- header-end -->

<!-- slider_area_start -->
<div class="slider_area">
    <div class="slider_active owl-carousel">
        <div class="single_slider  d-flex align-items-center slider_bg_1 overlay">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-12 col-md-12">
                        <div class="slider_text text-center">
                            <h3>Kribi</h3>
                            <p>Allez ou vous voulez au meilleur prix</p>
                            <a href="#" class="boxed-btn3">Explore Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="single_slider  d-flex align-items-center slider_bg_2 overlay">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-12 col-md-12">
                        <div class="slider_text text-center">
                            <h3>Maroua</h3>
                            <p>Allez ou vous voulez au meilleur prix</p>
                            <a href="#" class="boxed-btn3">Explorez</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="single_slider  d-flex align-items-center slider_bg_3 overlay">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-12 col-md-12">
                        <div class="slider_text text-center">
                            <h3>Yaounde</h3>
                            <p>Allez ou vous voulez au meilleur prix</p>
                            <a href="#" class="boxed-btn3">Explorez</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- slider_area_end -->

<!-- where_togo_area_start  -->
<%@include file="search_disponibility.jsp" %>
<!-- where_togo_area_end  -->

<!-- popular_destination_area_start  -->
<div class="popular_destination_area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section_title text-center mb_70">
                    <h3>Destinations Populaires</h3>
                    <p>Les destinations les plus en vogues du moments.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="single_destination">
                    <div class="thumb">
                        <img src="img/place/kribii.jpg" alt="">
                    </div>
                    <div class="content">
                        <p class="d-flex align-items-center">Kribi <a href="travel_destination.jsp"> 07 Places</a></p>

                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single_destination">
                    <div class="thumb">
                        <img src="img/place/dla.jpg" alt="">
                    </div>
                    <div class="content">
                        <p class="d-flex align-items-center">Douala <a href="travel_destination.jsp"> 03 Places</a></p>

                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single_destination">
                    <div class="thumb">
                        <img src="img/place/limbe.jpg" alt="">
                    </div>
                    <div class="content">
                        <p class="d-flex align-items-center">Limbe <a href="travel_destination.jsp"> 10 Places</a></p>

                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single_destination">
                    <div class="thumb">
                        <img src="img/place/yde.jpg" alt="">
                    </div>
                    <div class="content">
                        <p class="d-flex align-items-center">Yaounde <a href="travel_destination.jsp"> 02 Places</a></p>

                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single_destination">
                    <div class="thumb">
                        <img src="img/place/ebol.jpg" alt="">
                    </div>
                    <div class="content">
                        <p class="d-flex align-items-center">Ebolowa <a href="travel_destination.jsp"> 02 Places</a></p>

                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single_destination">
                    <div class="thumb">
                        <img src="img/place/mar.jpg" alt="">
                    </div>
                    <div class="content">
                        <p class="d-flex align-items-center">Maroua <a href="travel_destination.jsp"> 05 Places</a></p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- popular_destination_area_end  -->

<!-- newletter_area_start  -->
<div class="newletter_area overlay">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-10">
                <div class="row align-items-center">
                    <div class="col-lg-5">
                        <div class="newsletter_text">
                            <h4>S'enregistrer A Notre Newsletter</h4>
                            <p>S'inscrire à la newsletter pour recevoir des information a propos
                                des nouvelles places a decouvrir.</p>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="mail_form">
                            <div class="row no-gutters">
                                <div class="col-lg-9 col-md-8">
                                    <div class="newsletter_field">
                                        <input type="email" placeholder="Votre mail">
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4">
                                    <div class="newsletter_btn">
                                        <button class="boxed-btn4 " type="submit">S'enregistrer</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- newletter_area_end  -->

<%@include file="footer.jsp" %>

<!--
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js"></script>

    <script src=" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"> </script> -->
<!-- JS here -->
<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/ajax-form.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/scrollIt.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/nice-select.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/gijgo.min.js"></script>
<script src="js/slick.min.js"></script>


<!--contact js-->
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>


<script src="js/main.js"></script>
<script>
    $('#datepicker').datepicker({
        iconsLibrary: 'fontawesome',
        icons: {
            rightIcon: '<span class="fa fa-caret-down"></span>'
        }
    });
</script>
</body>

</html>