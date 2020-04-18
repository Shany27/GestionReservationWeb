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
<div class="destination_banner_wrap overlay">
    <div class="destination_text text-center">
        <h3>Douala CAMEROUN</h3>
        <p>La destination de vos reves</p>
    </div>
</div>

<div class="destination_details_info">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-9">
                <div class="destination_info">
                    <h3>Description</h3>
                    <p>Decouvrez cette destination de reve. Douala est une ville chaleureuse et accueillante dans
                        laquelle nous vous promettons confort et serinite. La fete est au rendez-vous chaque soir dans
                        les divers bistros de la place.</p>
                </div>
                <div class="bordered_1px"></div>
                <div class="contact_join">
                    <h3>Formulaire de reservation</h3>
                    <form action="enregistrerrereservationservlet"  method="post">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="single-input">
                                    <input type="text" placeholder="Votre piece d'identite" id="piece" name="piece">
                                </div>
                            </div>
                            <BR>
                            <div class="col-lg-8">
                                <div class="single_input">
                                    <input type="text" placeholder="Votre numero d'identite" id="numero" name="numero">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="single_input">
                                    <input type="text" placeholder="Votre nom" id="nom" name="nom">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="single_input">
                                    <input type="text" placeholder="Votre prenom" id="prenom" name="prenom">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="single_input">
                                    <input type="text" placeholder="Votre numero de téléphone" id="telephone" name="telephone">
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="submit_btn">
                                    <button class="boxed-btn4" type="submit">Reserver</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

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