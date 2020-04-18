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
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slicknav.css">

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

<!-- bradcam_area  -->
<div class="bradcam_area bradcam_bg_2">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text text-center">
                    <h3>Destinations</h3>
                    <p>Choississez la ville de vos reves</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ bradcam_area  -->

<!-- where_togo_area_start  -->
<%@include file="search_disponibility.jsp" %>
<!-- where_togo_area_end  -->


<div class="popular _places_area">
    <div class="container">
        <div class="row">

            <div class="col-lg-4">
                <div class="filter_result_wrap">
                    <h3>Filtre Recherche</h3>
                    <div class="filter_bordered">
                        <div class="filter_inner">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="single_select">
                                        <select>
                                            <option data-display="Lieu">Lieu</option>
                                            <option value="1">Douala</option>
                                            <option value="2">Yaounde</option>
                                            <option value="3">Kribi</option>
                                            <option value="4">Limbe</option>
                                            <option value="5">Maroua</option>
                                            <option value="6">Ebolowa</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="single_select">
                                        <select>
                                            <option data-display="Type de transport">Type de transport</option>
                                            <option value="1">Classic</option>
                                            <option value="2">Prestige</option>
                                            <option value="3">premium</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="range_slider_wrap">
                                        <span class="range">Prix</span>
                                        <div id="slider-range"></div>
                                        <p>
                                            <input type="text" id="" readonly
                                                   style="border:0; color:#7A838B; font-weight:400;">
                                        </p>
                                    </div>
                                </div>
                            </div>


                        </div>

                        <div class="reset_btn">
                            <button class="boxed-btn4" type="submit">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="single_place">
                            <div class="thumb">
                                <img src="img/place/dla.png" alt="">
                                <a href="#" class="prise">6000frs</a>
                            </div>
                            <div class="place_info">
                                <a href="destination_details.jsp"><h3>Douala</h3></a>
                                <p>Capitale economique du cameroun</p>
                                <div class="rating_days d-flex justify-content-between">
                                        <span class="d-flex justify-content-center align-items-center">
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i>
                                        </span>
                                    <div class="days">
                                        <i class="fa fa-clock-o"></i>
                                        <a href="#">5 Days</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="single_place">
                            <div class="thumb">
                                <img src="img/place/kribii.jpg" alt="">
                                <a href="#" class="prise">5000frs</a>
                            </div>
                            <div class="place_info">
                                <a href="destination_details.jsp"><h3>Kribi</h3></a>
                                <p>Ville touristique</p>
                                <div class="rating_days d-flex justify-content-between">
                                        <span class="d-flex justify-content-center align-items-center">
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i>
                                        </span>
                                    <div class="days">
                                        <i class="fa fa-clock-o"></i>
                                        <a href="#">5 Days</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="single_place">
                            <div class="thumb">
                                <img src="img/place/yde.jpg" alt="">
                                <a href="#" class="prise">6000frs</a>
                            </div>
                            <div class="place_info">
                                <a href="destination_details.jsp"><h3>Yaounde</h3></a>
                                <p>Capitale politique</p>
                                <div class="rating_days d-flex justify-content-between">
                                        <span class="d-flex justify-content-center align-items-center">
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i>
                                        </span>
                                    <div class="days">
                                        <i class="fa fa-clock-o"></i>
                                        <a href="#">5 Days</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="single_place">
                            <div class="thumb">
                                <img src="img/place/limbe.jpg" alt="">
                                <a href="#" class="prise">5000frs</a>
                            </div>
                            <div class="place_info">
                                <a href="destination_details.jsp"><h3>Limbe</h3></a>
                                <p>La ville de vos reves</p>
                                <div class="rating_days d-flex justify-content-between">
                                        <span class="d-flex justify-content-center align-items-center">
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i>
                                        </span>
                                    <div class="days">
                                        <i class="fa fa-clock-o"></i>
                                        <a href="#">5 Days</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="single_place">
                            <div class="thumb">
                                <img src="img/place/ebol.jpg" alt="">
                                <a href="#" class="prise">8000frs</a>
                            </div>
                            <div class="place_info">
                                <a href="destination_details.jsp"><h3>Ebolowa</h3></a>
                                <p>Venez vous n'allez pas etre deçu</p>
                                <div class="rating_days d-flex justify-content-between">
                                        <span class="d-flex justify-content-center align-items-center">
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i>
                                        </span>
                                    <div class="days">
                                        <i class="fa fa-clock-o"></i>
                                        <a href="#">5 Days</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="single_place">
                            <div class="thumb">
                                <img src="img/place/mar.jpg" alt="">
                                <a href="#" class="prise">10000frs</a>
                            </div>
                            <div class="place_info">
                                <a href="destination_details.jsp"><h3>Maroua</h3></a>
                                <p>United State of America</p>
                                <div class="rating_days d-flex justify-content-between">
                                        <span class="d-flex justify-content-center align-items-center">
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i> 
                                             <i class="fa fa-star"></i>
                                        </span>
                                    <div class="days">
                                        <i class="fa fa-clock-o"></i>
                                        <a href="#">5 Days</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="more_place_btn text-center">
                            <a class="boxed-btn4" href="#">More Places</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%@include file="footer.jsp" %>


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
<script src="js/jquery-ui.min.js"></script>
<script src="js/nice-select.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/range.js"></script>
<!-- <script src="js/gijgo.min.js"></script> -->
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