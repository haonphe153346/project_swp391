<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Children's Care</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <style>

            /*--------------------------------------------------------------
            # Team
            --------------------------------------------------------------*/
            .team .member {
                margin-bottom: 20px;
                overflow: hidden;
                text-align: center;
                border-radius: 5px;
                background: #fff;
                box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
            }
            .team .member .member-img {
                position: relative;
                overflow: hidden;
            }
            .team .member .social {
                position: absolute;
                left: 0;
                bottom: 0;
                right: 0;
                height: 40px;
                opacity: 0;
                transition: ease-in-out 0.3s;
                background: rgba(255, 255, 255, 0.85);
                display: inline-flex;
                justify-content: center;
                align-items: center;
            }
            .team .member .social a {
                transition: color 0.3s;
                color: #222222;
                margin: 0 10px;
                display: inline-flex;
                justify-content: center;
                align-items: center;
            }
            .team .member .social a i {
                line-height: 0;
            }
            .team .member .social a:hover {
                color: #3498db;
            }
            .team .member .social i {
                font-size: 18px;
                margin: 0 2px;
            }
            .team .member .member-info {
                padding: 25px 15px;
            }
            .team .member .member-info h4 {
                font-weight: 700;
                margin-bottom: 5px;
                font-size: 18px;
                color: #222222;
            }
            .team .member .member-info span {
                display: block;
                font-size: 13px;
                font-weight: 400;
                color: #aaaaaa;
            }
            .team .member .member-info p {
                font-style: italic;
                font-size: 14px;
                line-height: 26px;
                color: #777777;
            }
            .team .member:hover .social {
                opacity: 1;
            }
            .col-2dot4, // extra small
            .col-sm-2dot4, // small
            .col-md-2dot4, // medium
            .col-lg-2dot4, // large
            .col-xl-2dot4 { // extra large
                            position: relative;
                            width: 100%;
                            min-height: 1px;
                            padding-right: 15px;
                            padding-left: 15px;
            }
            .col-2dot4 {
                -webkit-box-flex: 0;
                -ms-flex: 0 0 20%;
                flex: 0 0 20%;
                max-width: 20%;
            }
            @media (min-width: 540px) {
                .col-sm-2dot4 {
                    -webkit-box-flex: 0;
                    -ms-flex: 0 0 20%;
                    flex: 0 0 20%;
                    max-width: 20%;
                }
            }
            @media (min-width: 720px) {
                .col-md-2dot4 {
                    -webkit-box-flex: 0;
                    -ms-flex: 0 0 20%;
                    flex: 0 0 20%;
                    max-width: 20%;
                }
            }
            @media (min-width: 960px) {
                .col-lg-2dot4 {
                    -webkit-box-flex: 0;
                    -ms-flex: 0 0 20%;
                    flex: 0 0 20%;
                    max-width: 20%;
                }
            }
            @media (min-width: 1140px) {
                .col-xl-2dot4 {
                    -webkit-box-flex: 0;
                    -ms-flex: 0 0 20%;
                    flex: 0 0 20%;
                    max-width: 20%;
                }
            }
            /*--------------------------------------------------------------
            # Featured Services Section
            --------------------------------------------------------------*/
            .featured-services .service-item {
                padding: 30px;
                transition: all ease-in-out 0.4s;
                background: var(--color-white);
                height: 100%;
            }
            .featured-services .service-item .icon {
                margin-bottom: 10px;
            }
            .featured-services .service-item .icon i {
                color: var(--color-primary);
                font-size: 36px;
                transition: 0.3s;
            }
            .featured-services .service-item h4 {
                font-weight: 600;
                margin-bottom: 15px;
                font-size: 24px;
            }
            .featured-services .service-item h4 a {
                color: var(--color-secondary);
                transition: ease-in-out 0.3s;
            }
            .featured-services .service-item p {
                line-height: 24px;
                font-size: 14px;
                margin-bottom: 0;
            }
            .featured-services .service-item:hover {
                transform: translateY(-10px);
                box-shadow: 0px 0 60px 0 rgba(var(--color-secondary-rgb), 0.1);
            }
            .featured-services .service-item:hover h4 a {
                color: var(--color-primary);
            }

            /*--------------------------------------------------------------
            # About Section
            --------------------------------------------------------------*/
            .about .about-img {
                position: relative;
                margin: 60px 0 0 60px;
            }
            .about .about-img:before {
                position: absolute;
                inset: -60px 0 0 -60px;
                z-index: -1;
                content: "";
                background: url("../img/about-bg.png") top left;
                background-repeat: no-repeat;
            }
            @media (max-width: 575px) {
                .about .about-img {
                    margin: 30px 0 0 30px;
                }
                .about .about-img:before {
                    inset: -30px 0 0 -30px;
                }
            }
            .about h3 {
                color: var(--color-secondary);
                font-family: var(--font-secondary);
                font-weight: 300;
                font-size: 32px;
                margin-bottom: 20px;
            }
            @media (max-width: 768px) {
                .about h3 {
                    font-size: 28px;
                }
            }
            .about .nav-pills {
                border-bottom: 1px solid rgba(var(--color-secondary-rgb), 0.2);
            }
            .about .nav-pills li + li {
                margin-left: 40px;
            }
            .about .nav-link {
                background: none;
                font-size: 18px;
                font-weight: 400;
                color: var(--color-secondary);
                padding: 12px 0;
                margin-bottom: -2px;
                border-radius: 0;
                font-family: var(--font-secondary);
            }
            .about .nav-link.active {
                color: var(--color-primary);
                background: none;
                border-bottom: 3px solid var(--color-primary);
            }
            @media (max-width: 575px) {
                .about .nav-link {
                    font-size: 16px;
                }
            }
            .about .tab-content h4 {
                font-size: 18px;
                margin: 0;
                font-weight: 700;
                color: var(--color-secondary);
            }
            .about .tab-content i {
                font-size: 22px;
                line-height: 0;
                margin-right: 8px;
                color: var(--color-primary);
            }

            /*--------------------------------------------------------------
            # Clients Section
            --------------------------------------------------------------*/
            .clients {
                padding: 0 0 60px 0;
            }
            .clients .swiper-slide img {
                opacity: 0.5;
                transition: 0.3s;
                filter: grayscale(100);
            }
            .clients .swiper-slide img:hover {
                filter: none;
                opacity: 1;
            }
            /*--------------------------------------------------------------
            # Features Section
            --------------------------------------------------------------*/
            .features .nav-tabs {
                border: 0;
            }
            .features .nav-link {
                border: 0;
                padding: 25px 20px;
                color: #485664;
                box-shadow: 5px 5px 25px rgba(72, 86, 100, 0.15);
                border-radius: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                transition: 0s;
                cursor: pointer;
                height: 100%;
            }
            .features .nav-link i {
                font-size: 32px;
                line-height: 0;
            }
            .features .nav-link h4 {
                font-size: 20px;
                font-weight: 600;
                margin: 10px 0 0 0;
                color: var(--color-secondary);
            }
            .features .nav-link:hover {
                color: var(--color-primary);
            }
            .features .nav-link.active {
                transition: 0.3s;
                background: var(--color-secondary) linear-gradient(rgba(var(--color-primary-rgb), 0.95), rgba(var(--color-primary-rgb), 0.6));
                border-color: var(--color-primary);
            }
            .features .nav-link.active h4 {
                color: var(--color-white);
            }

            .features .tab-content {
                margin-top: 30px;
            }
            .features .tab-pane.active {
                -webkit-animation: fadeIn 0.5s ease-out;
                animation: fadeIn 0.5s ease-out;
            }
            .features .tab-pane h3 {
                font-weight: 600;
                font-size: 36px;
                color: var(--color-secondary);
            }
            .features .tab-pane ul {
                list-style: none;
                padding: 0;
            }
            .features .tab-pane ul li {
                padding-bottom: 10px;
            }
            .features .tab-pane ul i {
                font-size: 24px;
                margin-right: 4px;
                color: var(--color-primary);
            }
            .features .tab-pane p:last-child {
                margin-bottom: 0;
            }

            @keyframes fadeIn {
                0% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }
            /*--------------------------------------------------------------
            # Services Section
            --------------------------------------------------------------*/
            .services .img {
                border-radius: 8px;
                overflow: hidden;
            }
            .services .img img {
                transition: 0.6s;
            }
            .services .details {
                padding: 50px 30px;
                margin: -100px 30px 0 30px;
                transition: all ease-in-out 0.3s;
                background: var(--color-white);
                position: relative;
                background: rgba(var(--color-white-rgb), 0.9);
                text-align: center;
                border-radius: 8px;
                box-shadow: 0px 0 25px rgba(var(--color-black-rgb), 0.1);
            }
            .services .details .icon {
                margin: 0;
                width: 72px;
                height: 72px;
                background: var(--color-primary);
                border-radius: 50px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 20px;
                color: var(--color-white);
                font-size: 28px;
                transition: ease-in-out 0.3s;
                position: absolute;
                top: -36px;
                left: calc(50% - 36px);
                border: 6px solid var(--color-white);
            }
            .services .details h3 {
                color: var(--color-default);
                font-weight: 700;
                margin: 10px 0 15px 0;
                font-size: 22px;
                transition: ease-in-out 0.3s;
            }
            .services .details p {
                line-height: 24px;
                font-size: 14px;
                margin-bottom: 0;
            }
            .services .service-item:hover .details h3 {
                color: var(--color-primary);
            }
            .services .service-item:hover .details .icon {
                background: var(--color-white);
                border: 2px solid var(--color-primary);
            }
            .services .service-item:hover .details .icon i {
                color: var(--color-primary);
            }
            .services .service-item:hover .img img {
                transform: scale(1.2);
            }

            /*--------------------------------------------------------------
            # Testimonials Section
            --------------------------------------------------------------*/
            .testimonials {
                padding: 80px 0;
                background: url("../img/testimonials-bg.jpg") no-repeat;
                background-position: center center;
                background-size: cover;
                position: relative;
            }
            .testimonials::before {
                content: "";
                position: absolute;
                inset: 0;
                background: rgba(var(--color-secondary-dark-rgb), 0.8);
            }
            .testimonials .section-header {
                margin-bottom: 40px;
            }
            .testimonials .testimonials-carousel, .testimonials .testimonials-slider {
                overflow: hidden;
            }
            .testimonials .testimonial-item {
                text-align: center;
                color: var(--color-white);
            }
            .testimonials .testimonial-item .testimonial-img {
                width: 100px;
                border-radius: 50%;
                border: 6px solid rgba(var(--color-white-rgb), 0.15);
                margin: 0 auto;
            }
            .testimonials .testimonial-item h3 {
                font-size: 20px;
                font-weight: bold;
                margin: 10px 0 5px 0;
                color: var(--color-white);
            }
            .testimonials .testimonial-item h4 {
                font-size: 14px;
                color: rgba(var(--color-white-rgb), 0.6);
                margin: 0 0 15px 0;
            }
            .testimonials .testimonial-item .stars {
                margin-bottom: 15px;
            }
            .testimonials .testimonial-item .stars i {
                color: var(--color-yellow);
                margin: 0 1px;
            }
            .testimonials .testimonial-item .quote-icon-left, .testimonials .testimonial-item .quote-icon-right {
                color: rgba(var(--color-white-rgb), 0.6);
                font-size: 26px;
                line-height: 0;
            }
            .testimonials .testimonial-item .quote-icon-left {
                display: inline-block;
                left: -5px;
                position: relative;
            }
            .testimonials .testimonial-item .quote-icon-right {
                display: inline-block;
                right: -5px;
                position: relative;
                top: 10px;
                transform: scale(-1, -1);
            }
            .testimonials .testimonial-item p {
                font-style: italic;
                margin: 0 auto 15px auto;
            }
            .testimonials .swiper-pagination {
                margin-top: 20px;
                position: relative;
            }
            .testimonials .swiper-pagination .swiper-pagination-bullet {
                width: 12px;
                height: 12px;
                background-color: rgba(var(--color-white-rgb), 0.4);
                opacity: 0.5;
            }
            .testimonials .swiper-pagination .swiper-pagination-bullet-active {
                background-color: var(--color-white);
                opacity: 1;
            }
            @media (min-width: 992px) {
                .testimonials .testimonial-item p {
                    width: 80%;
                }
            }

            .color-indigo{
                color: #1769ff;
            }
            .color-cyan{
                color: #fd7e14;
            }
            .color-teal{
                color: #20c997;
            }
            .color-red{
                color: red;
            }
            .color-blue{
                color: #0d6efd;
            }
            .color-orange{
                color: #fd7e14;
            }
            /*--------------------------------------------------------------
# Pricing Section
--------------------------------------------------------------*/
            .pricing {
                background: rgba(72, 86, 100, 0.04);
            }
            .pricing .pricing-item {
                padding: 60px 40px;
                box-shadow: 0 3px 20px -2px rgba(108, 117, 125, 0.15);
                background: #ffffff;
                height: 100%;
                display: flex;
                flex-direction: column;
                border: 4px solid ffffff;
                border-radius: 10px;
                overflow: hidden;
            }
            .pricing .pricing-header {
                background: linear-gradient(rgba( 72, 86, 100, 0.9), rgba(var(--color-secondary-rgb), 0.9)), url("../img/pricing-bg.jpg") center center;
                background-size: cover;
                text-align: center;
                padding: 40px;
                margin: -60px -40px 0;
            }
            .pricing h3 {
                font-weight: 600;
                margin-bottom: 5px;
                font-size: 36px;
                color: var(--color-white);
            }
            .pricing h4 {
                font-size: 48px;
                color: #000;
                font-weight: 400;
                font-family: 'Source Sans Pro', sans-serif;;
                margin-bottom: 0;
            }
            .pricing h4 sup {
                font-size: 28px;
            }
            .pricing h4 span {
                color: #000;
                font-size: 24px;
            }
            .pricing ul {
                padding: 30px 0;
                list-style: none;
                color: #6c757d;
                text-align: left;
                line-height: 20px;
            }
            .pricing ul li {
                padding: 10px 0;
                display: flex;
                align-items: center;
            }
            .pricing ul i {
                color: #0ea2bd;
                font-size: 36px;
                padding-right: 3px;
                line-height: 0;
            }
            .pricing ul .na {
                color: rgba(108, 117, 125, 0.5);
            }
            .pricing ul .na i {
                color: rgba(108, 117, 125, 0.5);
                font-size: 24px;
                padding-left: 4px;
            }
            .pricing ul .na span {
                text-decoration: line-through;
            }
            .pricing .buy-btn {
                display: inline-block;
                padding: 12px 40px;
                border-radius: 6px;
                color: #0ea2bd;
                transition: none;
                font-size: 16px;
                font-weight: 700;
                transition: 0.3s;
                border: 1px solid #0ea2bd;
            }
            .pricing .buy-btn:hover {
                background: #0ea2bd;
                color: #fff;
            }
            .pricing .featured {
                border-color: #0ea2bd;
            }
            .pricing .featured .pricing-header {
                background: linear-gradient(rgba(14, 162, 189), 0.9), rgba(14, 162, 189, 0.9)), url("../img/pricing-bg.jpg") center center;
            }
            .pricing .featured .buy-btn {
                background: #0ea2bd;
                color: #fff;
            }
        </style>
        <!-- =======================================================
        * Template Name: Medilab - v4.7.1
        * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>

        <!-- ======= Top Bar ======= -->
        <div id="topbar" class="d-flex align-items-center fixed-top">
            <div class="container d-flex justify-content-between">
                <div class="contact-info d-flex align-items-center">
                    <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">Children's Care@fpt.edu.vn</a>
                    <i class="bi bi-phone"></i> +1 5589 55488 55
                </div>
                <div class="d-none d-lg-flex social-links align-items-center">
                    <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                    <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
                </div>
            </div>
        </div>

        <!-- ======= Header ======= -->
        <jsp:include page="assets/module/header.jsp" flush="true"/>
        <!-- End Header -->

        <!-- ======= Hero Slider Section ======= -->
        <section id="hero-slider" class="hero-slider">
            <div class="container-md" data-aos="fade-in">
                <div class="row">
                    <div class="col-12">
                        <div class="swiper sliderFeaturedPosts">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <a href="single-post.html" class="img-bg d-flex align-items-end" style="background-image: url('assets/img/post-slide-1.jpg');">
                                        <div class="img-bg-inner">
                                            <h2>The Best Homemade Masks for Face (keep the Pimples Away)</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem neque est mollitia! Beatae minima assumenda repellat harum vero, officiis ipsam magnam obcaecati cumque maxime inventore repudiandae quidem necessitatibus rem atque.</p>
                                        </div>
                                    </a>
                                </div>

                                <div class="swiper-slide">
                                    <a href="single-post.html" class="img-bg d-flex align-items-end" style="background-image: url('assets/img/post-slide-2.jpg');">
                                        <div class="img-bg-inner">
                                            <h2>17 Pictures of Medium Length Hair in Layers That Will Inspire Your New Haircut</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem neque est mollitia! Beatae minima assumenda repellat harum vero, officiis ipsam magnam obcaecati cumque maxime inventore repudiandae quidem necessitatibus rem atque.</p>
                                        </div>
                                    </a>
                                </div>

                                <div class="swiper-slide">
                                    <a href="single-post.html" class="img-bg d-flex align-items-end" style="background-image: url('assets/img/post-slide-3.jpg');">
                                        <div class="img-bg-inner">
                                            <h2>13 Amazing Poems from Shel Silverstein with Valuable Life Lessons</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem neque est mollitia! Beatae minima assumenda repellat harum vero, officiis ipsam magnam obcaecati cumque maxime inventore repudiandae quidem necessitatibus rem atque.</p>
                                        </div>
                                    </a>
                                </div>

                                <div class="swiper-slide">
                                    <a href="single-post.html" class="img-bg d-flex align-items-end" style="background-image: url('assets/img/post-slide-4.jpg');">
                                        <div class="img-bg-inner">
                                            <h2>9 Half-up/half-down Hairstyles for Long and Medium Hair</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem neque est mollitia! Beatae minima assumenda repellat harum vero, officiis ipsam magnam obcaecati cumque maxime inventore repudiandae quidem necessitatibus rem atque.</p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="custom-swiper-button-next">
                                <span class="bi-chevron-right"></span>
                            </div>
                            <div class="custom-swiper-button-prev">
                                <span class="bi-chevron-left"></span>
                            </div>

                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- End Hero Slider Section -->

        <main id="main">



            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container">

                    <div class="row">
                        <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch position-relative">
                            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox play-btn mb-4"></a>
                        </div>

                        <div class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
                            <h3>Welcome Children's Care System.</h3>
                            <p>Your child deserves quality education from the start! The quality of child care has a direct impact on a child’s ability to learn, to build healthy relationships, and to become the best they can be.
                            </p>
                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-fingerprint"></i></div>
                                <h4 class="title"><a href="">24/7</a></h4>
                                <p class="description">Always takes care your children anytime, anywhere.</p>
                            </div>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-gift"></i></div>
                                <h4 class="title"><a href="">Best Services</a></h4>
                                <p class="description">A team of prestigious and top quality doctors from Eastern Laos, Cambodia, Thailand, Malaysia...</p>
                            </div>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-atom"></i></div>
                                <h4 class="title"><a href="">Very Cheap</a></h4>
                                <p class="description">Don't worry about price. Here we have discount to 70% and sometimes free for broken children.</p>
                            </div>

                        </div>
                    </div>

                </div>
            </section><!-- End About Section -->

            <!-- ======= Counts Section ======= -->
            <section id="counts" class="counts">
                <div class="container">

                    <div class="row">

                        <div class="col-lg-3 col-md-6">
                            <div class="count-box">
                                <i class="fas fa-user-md"></i>
                                <span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Doctors</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
                            <div class="count-box">
                                <i class="far fa-hospital"></i>
                                <span data-purecounter-start="0" data-purecounter-end="18" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Departments</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                            <div class="count-box">
                                <i class="fas fa-flask"></i>
                                <span data-purecounter-start="0" data-purecounter-end="12" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Research Labs</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                            <div class="count-box">
                                <i class="fas fa-award"></i>
                                <span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Awards</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Counts Section -->
            <!-- ======= Features Section ======= -->
            <section id="services" class="features">
                <div class="container" data-aos="fade-up">
                    <div class="section-title">
                        <h2>All Services</h2>
                        <p>There are many servies in Children's Care</p>
                    </div>
                    <ul class="nav nav-tabs row gy-4 d-flex">

                        <li class="nav-item col-6 col-md-4 col-lg-2">
                            <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#tab-1">
                                <i class="bi bi-binoculars color-cyan"></i>
                                <h4>Eyes</h4>
                            </a>
                        </li><!-- End Tab 1 Nav -->

                        <li class="nav-item col-6 col-md-4 col-lg-2">
                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-2">
                                <i class="bi bi-box-seam color-indigo"></i>
                                <h4>Hands</h4>
                            </a>
                        </li><!-- End Tab 2 Nav -->

                        <li class="nav-item col-6 col-md-4 col-lg-2">
                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-3">
                                <i class="bi bi-brightness-high color-teal"></i>
                                <h4>Lungs</h4>
                            </a>
                        </li><!-- End Tab 3 Nav -->

                        <li class="nav-item col-6 col-md-4 col-lg-2">
                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-4">
                                <i class="bi bi-command color-red"></i>
                                <h4>Body</h4>
                            </a>
                        </li><!-- End Tab 4 Nav -->

                        <li class="nav-item col-6 col-md-4 col-lg-2">
                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-5">
                                <i class="bi bi-easel color-blue"></i>
                                <h4>Foot</h4>
                            </a>
                        </li><!-- End Tab 5 Nav -->

                        <li class="nav-item col-6 col-md-4 col-lg-2">
                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-6">
                                <i class="bi bi-map color-orange"></i>
                                <h4>Face</h4>
                            </a>
                        </li><!-- End Tab 6 Nav -->

                    </ul>

                    <div class="tab-content">

                        <div class="tab-pane active show" id="tab-1">
                            <div class="row gy-4">
                                <div class="col-lg-8 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="100">
                                    <h3>Kiểm tra mắt</h3>
                                    </br>

                                    <p>
                                        Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                        culpa qui officia deserunt mollit anim id est laborum
                                    </p>
                                    <p class="fst-italic">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                        magna aliqua.
                                    </p>
                                    <ul>
                                        <li><i class="bi bi-check-circle-fill"></i><a href="service-single">ĐAU MẮT ĐỎ</a></li>
                                        <li><i class="bi bi-check-circle-fill"></i><a href="service-single">ĐAU GIÁC MẠC </a></li>
                                        <li><i class="bi bi-check-circle-fill"></i><a href="service-single">VIÊM MẮT</a></li>
                                        <li><i class="bi bi-check-circle-fill"></i><a href="service-single">MẮT SƯNG</a></li>
                                        <li><i class="bi bi-check-circle-fill"></i><a href="service-single">More...</a></li>

                                    </ul>
                                    <div class="text-center mt-auto">
                                        <a href="#" class="buy-btn"><h5>MORE DETAILS ...</h5></a>
                                    </div>
                                </div>
                                <div class="col-lg-4 order-1 order-lg-2 text-center" data-aos="fade-up" data-aos-delay="200">
                                    <img src="assets/img/blog-1.jpg" alt="" class="img-fluid">
                                </div>
                            </div>
                        </div><!-- End Tab Content 1 -->

                        <div class="tab-pane" id="tab-2">
                            <div class="row gy-4">
                                <div class="col-lg-8 order-2 order-lg-1">
                                    </br>

                                    <h3>Kiểm tra tay</h3>
                                    </br>

                                    <p>
                                        Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                        culpa qui officia deserunt mollit anim id est laborum
                                    </p>
                                    <p class="fst-italic">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                        magna aliqua.
                                    </p>
                                    <ul>
                                        <li><i class="bi bi-check-circle-fill"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                                    </ul>
                                    <div class="text-center mt-auto">
                                        <a href="#" class="buy-btn"><h5>MORE DETAILS ...</h5></a>
                                    </div>
                                </div>
                                <div class="col-lg-4 order-1 order-lg-2 text-center">

                                    <img src="assets/img/departments-2.jpg" alt="" class="img-fluid">
                                </div>
                            </div>
                        </div><!-- End Tab Content 2 -->

                        <div class="tab-pane" id="tab-3">
                            <div class="row gy-4">
                                <div class="col-lg-8 order-2 order-lg-1">
                                    <h3>Pariatur</h3>
                                    <p>
                                        Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                        culpa qui officia deserunt mollit anim id est laborum
                                    </p>
                                    <ul>
                                        <li><i class="bi bi-check-circle-fill"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed.</li>
                                    </ul>
                                    <p class="fst-italic">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                        magna aliqua.
                                    </p>
                                    <div class="text-center mt-auto">
                                        <a href="#" class="buy-btn"><h5>MORE DETAILS ...</h5></a>
                                    </div>
                                </div>
                                <div class="col-lg-4 order-1 order-lg-2 text-center">
                                    <img src="assets/img/departments-3.jpg" alt="" class="img-fluid">
                                </div>
                            </div>
                        </div><!-- End Tab Content 3 -->

                        <div class="tab-pane" id="tab-4">
                            <div class="row gy-4">
                                <div class="col-lg-8 order-2 order-lg-1">
                                    <h3>Nostrum</h3>
                                    <p>
                                        Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                        culpa qui officia deserunt mollit anim id est laborum
                                    </p>
                                    <p class="fst-italic">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                        magna aliqua.
                                    </p>
                                    <ul>
                                        <li><i class="bi bi-check-circle-fill"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                                    </ul>
                                    <div class="text-center mt-auto">
                                        <a href="#" class="buy-btn"><h5>MORE DETAILS ...</h5></a>
                                    </div>
                                </div>
                                <div class="col-lg-4 order-1 order-lg-2 text-center">
                                    <img src="assets/img/departments-4.jpg" alt="" class="img-fluid">
                                </div>
                            </div>
                        </div><!-- End Tab Content 4 -->

                        <div class="tab-pane" id="tab-5">
                            <div class="row gy-4">
                                <div class="col-lg-8 order-2 order-lg-1">
                                    <h3>Adipiscing</h3>
                                    <p>
                                        Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                        culpa qui officia deserunt mollit anim id est laborum
                                    </p>
                                    <p class="fst-italic">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                        magna aliqua.
                                    </p>
                                    <ul>
                                        <li><i class="bi bi-check-circle-fill"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                                    </ul>
                                    <div class="text-center mt-auto">
                                        <a href="#" class="buy-btn"><h5>MORE DETAILS ...</h5></a>
                                    </div>
                                </div>
                                <div class="col-lg-4 order-1 order-lg-2 text-center">
                                    <img src="assets/img/departments-5.jpg" alt="" class="img-fluid">
                                </div>
                            </div>
                        </div><!-- End Tab Content 5 -->

                        <div class="tab-pane" id="tab-6">
                            <div class="row gy-4">
                                <div class="col-lg-8 order-2 order-lg-1">
                                    <h3>Reprehit</h3>
                                    <p>
                                        Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                                        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                        culpa qui officia deserunt mollit anim id est laborum
                                    </p>
                                    <p class="fst-italic">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                                        magna aliqua.
                                    </p>
                                    <ul>
                                        <li><i class="bi bi-check-circle-fill"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                                        <li><i class="bi bi-check-circle-fill"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                                    </ul>
                                    <div class="text-center mt-auto">
                                        <a href="#" class="buy-btn"><h5>MORE DETAILS ...</h5></a>
                                    </div>
                                </div>
                                <div class="col-lg-4 order-1 order-lg-2 text-center">
                                    <img src="assets/img/departments-4.jpg" alt="" class="img-fluid">
                                </div>
                            </div>
                        </div><!-- End Tab Content 6 -->

                    </div>

                </div>
            </section><!-- End Features Section -->

            <!-- ======= Pricing Section ======= -->
            <section id="hotservices" class="pricing">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>HOT SERVICES</h2>
                        <p>There are best services people usually buy.</p>
                    </div>

                    <div class="row gy-4">

                        <div class="col-lg-3" data-aos="zoom-in" data-aos-delay="200">
                            <div class="pricing-item">

                                <div class="pricing-header">
                                    <h3>Eyes</h3>
                                    </br>
                                    <h4><sup>$</sup>0<span>3̶̶9̶̶9̶$</span></h4>
                                </div>

                                <ul>
                                    <li><i class="bi bi-dot"></i> <span>Kiểm tra độ cận thị </span></li>
                                    <li><i class="bi bi-dot"></i> <span>Miễn Phí Thuốc Nhỏ Mắt</span></li>
                                    <li><i class="bi bi-dot"></i> <span>Miễn Phí Khám Cận Thị</span></li>
                                    <li class="na"><i class="bi bi-x"></i> <span>không được dùng dịch vụ luxury</span></li>
                                    <li class="na"><i class="bi bi-x"></i> <span>được chăm sóc bởi bác sĩ mới vào nghề</span></li>
                                </ul>

                                <div class="text-center mt-auto">
                                    <a href="#" class="buy-btn">Buy Now</a>
                                </div>

                            </div>
                        </div><!-- End Pricing Item -->
                        <div class="col-lg-3" data-aos="zoom-in" data-aos-delay="200">
                            <div class="pricing-item">

                                <div class="pricing-header">
                                    <h3>Hand</h3>
                                    </br>

                                    <h4><sup>$</sup>299$<span> 3̶̶9̶̶9̶$</span></h4>
                                </div>

                                <ul>
                                    <li><i class="bi bi-dot"></i> <span>Quam adipiscing vitae proin</span></li>
                                    <li><i class="bi bi-dot"></i> <span>Nec feugiat nisl pretium</span></li>
                                    <li><i class="bi bi-dot"></i> <span>Nulla at volutpat diam uteera</span></li>
                                    <li class="na"><i class="bi bi-x"></i> <span>Pharetra massa massa ultricies</span></li>
                                    <li class="na"><i class="bi bi-x"></i> <span>Massa ultricies mi quis hendrerit</span></li>
                                </ul>

                                <div class="text-center mt-auto">
                                    <a href="#" class="buy-btn">Buy Now</a>
                                </div>

                            </div>
                        </div><!-- End Pricing Item -->
                        <div class="col-lg-3" data-aos="zoom-in" data-aos-delay="200">
                            <div class="pricing-item">

                                <div class="pricing-header">
                                    <h3>Lungs</h3>
                                    </br>

                                    <h4><sup>$</sup>4.999<span> 5̶̶9̶̶9̶$</span></h4>
                                </div>

                                <ul>
                                    <li><i class="bi bi-dot"></i> <span>Quam adipiscing vitae proin</span></li>
                                    <li><i class="bi bi-dot"></i> <span>Nec feugiat nisl pretium</span></li>
                                    <li><i class="bi bi-dot"></i> <span>Nulla at volutpat diam uteera</span></li>
                                    <li class="na"><i class="bi bi-x"></i> <span>Pharetra massa massa ultricies</span></li>
                                    <li class="na"><i class="bi bi-x"></i> <span>Massa ultricies mi quis hendrerit</span></li>
                                </ul>

                                <div class="text-center mt-auto">
                                    <a href="#" class="buy-btn">Buy Now</a>
                                </div>

                            </div>
                        </div><!-- End Pricing Item -->
                        <div class="col-lg-3" data-aos="zoom-in" data-aos-delay="400">
                            <div class="pricing-item featured">

                                <div class="pricing-header">
                                    <h3>Full Services</h3>
                                    </br>

                                    <h4><sup>$</sup>6.999<span> 3̶̶9̶̶9̶$</span></h4>
                                </div>

                                <ul>
                                    <li><i class="bi bi-dot"></i> <span>Quam adipiscing vitae proin</span></li>
                                    <li><i class="bi bi-dot"></i> <span>Nec feugiat nisl pretium</span></li>
                                    <li><i class="bi bi-dot"></i> <span>Nulla at volutpat diam uteera</spa>
                                    </li>
                                    <li><i class="bi bi-dot"></i> <span>Pharetra massa massa ultricies</spa>
                                    </li>
                                    <li><i class="bi bi-dot"></i> <span>Massa ultricies mi quis hendrerit</span></li>
                                </ul>

                                <div class="text-center mt-auto">
                                    <a href="#" class="buy-btn">Buy Now</a>
                                </div>

                            </div>
                        </div><!-- End Pricing Item -->



                    </div>

                </div>
            </section><!-- End Pricing Section -->


            <!-- ======= Recent Blog Posts Section ======= -->
            <section id="blogs" class="recent-blog-posts">

                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Blogs</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <div class="row">

                        <div class="col-lg-3" data-aos="fade-up" data-aos-delay="200">
                            <div class="post-box">
                                <div class="post-img"><img src="assets/img/departments-2.jpg" class="img-fluid" alt=""></div>
                                <div class="meta">
                                    <span class="post-date">Tue, December 12</span>
                                    <span class="post-author"> / Julia Parker</span>
                                </div>
                                <h4 class="post-title">The Children’s Heart Center in March 2021.</h4>
                                <p>Illum voluptas ab enim placeat. Adipisel omnis periores eum ipsa est officiis. Modi cupiditate exercitationem qui magni est...</p>
                                <a href="blog-details.html" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                            </div>
                        </div>
                        <br>
                        <div class="col-lg-3" data-aos="fade-up" data-aos-delay="400">
                            <div class="post-box">
                                <div class="post-img"><img src="assets/img/departments-3.jpg" class="img-fluid" alt=""></div>
                                <div class="meta">
                                    <span class="post-date">Fri, September 05</span>
                                    <span class="post-author"> / Mario Douglas</span>
                                </div>
                                <h4 class="post-title">Et repellendus molestiae qui est sed omnis</h4>
                                <p>Voluptatem nesciunt omnis libero autem tempora enim ut ipsam id. Odit quia ab eum assumenda. Quisquam omnis aliquid necessitatibus tempora consectetur doloribus...</p>
                                <a href="blog-details.html" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                            </div>
                        </div>
<br>
                        <div class="col-lg-3" data-aos="fade-up" data-aos-delay="600">
                            <div class="post-box">
                                <div class="post-img"><img src="assets/img/departments-5.jpg" class="img-fluid" alt=""></div>
                                <div class="meta">
                                    <span class="post-date">Tue, July 27</span>
                                    <span class="post-author"> / Lisa Hunter</span>
                                </div>
                                <h4 class="post-title">Quia assumenda est et veritatis aut quae</h4>
                                <p>Quia nam eaque omnis explicabo similique eum quaerat similique laboriosam. Quis omnis repellat sed quae consectetur magnam veritatis dicta nihil...</p>
                                <a href="blog-details.html" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                            </div>
                        </div>
<br>
                        <div class="col-lg-3" data-aos="fade-up" data-aos-delay="600">
                            <div class="post-box">
                                <div class="post-img"><img src="assets/img/departments-3.jpg" class="img-fluid" alt=""></div>
                                <div class="meta">
                                    <span class="post-date">Tue, July 27</span>
                                    <span class="post-author"> / Lisa Hunter</span>
                                </div>
                                <h4 class="post-title">Quia assumenda est et veritatis aut quae</h4>
                                <p>Quia nam eaque omnis explicabo similique eum quaerat similique laboriosam. Quis omnis repellat sed quae consectetur magnam veritatis dicta nihil...</p>
                                <a href="blog-details.html" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                            </div>
                        </div>
<br>
                        <div class="col-lg-3" data-aos="fade-up" data-aos-delay="600">
                            <div class="post-box">
                                <div class="post-img"><img src="assets/img/departments-3.jpg" class="img-fluid" alt=""></div>
                                <div class="meta">
                                    <span class="post-date">Tue, July 27</span>
                                    <span class="post-author"> / Lisa Hunter</span>
                                </div>
                                <h4 class="post-title">Quia assumenda est et veritatis aut quae</h4>
                                <p>Quia nam eaque omnis explicabo similique eum quaerat similique laboriosam. Quis omnis repellat sed quae consectetur magnam veritatis dicta nihil...</p>
                                <a href="blog-details.html" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                            </div>
                        </div>
<br>
                        <div class="col-lg-3" data-aos="fade-up" data-aos-delay="600">
                            <div class="post-box">
                                <div class="post-img"><img src="assets/img/departments-5.jpg" class="img-fluid" alt=""></div>
                                <div class="meta">
                                    <span class="post-date">Tue, July 27</span>
                                    <span class="post-author"> / Lisa Hunter</span>
                                </div>
                                <h4 class="post-title">Quia assumenda est et veritatis aut quae</h4>
                                <p>Quia nam eaque omnis explicabo similique eum quaerat similique laboriosam. Quis omnis repellat sed quae consectetur magnam veritatis dicta nihil...</p>
                                <a href="blog-details.html" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-3" data-aos="fade-up" data-aos-delay="600">
                            <div class="post-box">
                                <div class="post-img"><img src="assets/img/departments-3.jpg" class="img-fluid" alt=""></div>
                                <div class="meta">
                                    <span class="post-date">Tue, July 27</span>
                                    <span class="post-author"> / Lisa Hunter</span>
                                </div>
                                <h4 class="post-title">Quia assumenda est et veritatis aut quae</h4>
                                <p>Quia nam eaque omnis explicabo similique eum quaerat similique laboriosam. Quis omnis repellat sed quae consectetur magnam veritatis dicta nihil...</p>
                                <a href="blog-details.html" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-3" data-aos="fade-up" data-aos-delay="600">
                            <div class="post-box">
                                <div class="post-img"><img src="assets/img/departments-1.jpg" class="img-fluid" alt=""></div>
                                <div class="meta">
                                    <span class="post-date">Tue, July 27</span>
                                    <span class="post-author"> / Lisa Hunter</span>
                                </div>
                                <h4 class="post-title">Quia assumenda est et veritatis aut quae</h4>
                                <p>Quia nam eaque omnis explicabo similique eum quaerat similique laboriosam. Quis omnis repellat sed quae consectetur magnam veritatis dicta nihil...</p>
                                <a href="blog-details.html" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                            </div>
                        </div>

                    </div>

                </div>
                </br>
                </br>
                </br>
                <div class="text-center mt-auto">
                    <a href="Blogs" class="buy-btn"><h5>MORE BLOGS ...</h5></a>
                </div>
            </section><!-- End Recent Blog Posts Section -->



            <!-- ======= Doctors Section ======= -->
            <section id="doctors" class="doctors">
                <div class="container">

                    <div class="section-title">
                        <h2>Doctors</h2>
                        <p>A team of professional doctors with many achievements and research awards with Master's and Doctoral degrees from all over Southeast Asia such as Eastern Laos, Cambodia, Thailand, Malaysia,... high quality stars with a great team of technicians.</p>
                    </div>

                    <div class="row">

                        <div class="col-lg-6">
                            <div class="member d-flex align-items-start">
                                <div class="pic"><img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
                                <div class="member-info">
                                    <h4>Bác sĩ Hào</h4>
                                    <span>Chief Medical Officer</span>
                                    <p>TOP 5 Bác sĩ chuyên khoa phổi hàng đầu thế giới.</p>
                                    <div class="social">
                                        <a href=""><i class="ri-twitter-fill"></i></a>
                                        <a href=""><i class="ri-facebook-fill"></i></a>
                                        <a href=""><i class="ri-instagram-fill"></i></a>
                                        <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 mt-4 mt-lg-0">
                            <div class="member d-flex align-items-start">
                                <div class="pic"><img src="assets/img/doctors/doctors-2.jpg" class="img-fluid" alt=""></div>
                                <div class="member-info">
                                    <h4>Bác sĩ Khoa</h4>
                                    <span>Anesthesiologist</span>
                                    <p>TOP 5 Bác sĩ cứu người giỏi nhất châu Á.</p>
                                    <div class="social">
                                        <a href=""><i class="ri-twitter-fill"></i></a>
                                        <a href=""><i class="ri-facebook-fill"></i></a>
                                        <a href=""><i class="ri-instagram-fill"></i></a>
                                        <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 mt-4">
                            <div class="member d-flex align-items-start">
                                <div class="pic"><img src="assets/img/doctors/doctors-3.jpg" class="img-fluid" alt=""></div>
                                <div class="member-info">
                                    <h4>Bác sĩ Hoàn</h4>
                                    <span>Cardiology</span>
                                    <p>Quisquam facilis cum velit laborum corrupti fuga rerum quia</p>
                                    <div class="social">
                                        <a href=""><i class="ri-twitter-fill"></i></a>
                                        <a href=""><i class="ri-facebook-fill"></i></a>
                                        <a href=""><i class="ri-instagram-fill"></i></a>
                                        <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 mt-4">
                            <div class="member d-flex align-items-start">
                                <div class="pic"><img src="assets/img/doctors/doctors-4.jpg" class="img-fluid" alt=""></div>
                                <div class="member-info">
                                    <h4>Bác sĩ Trường</h4>
                                    <span>Neurosurgeon</span>
                                    <p>Dolorum tempora officiis odit laborum officiis et et accusamus</p>
                                    <div class="social">
                                        <a href=""><i class="ri-twitter-fill"></i></a>
                                        <a href=""><i class="ri-facebook-fill"></i></a>
                                        <a href=""><i class="ri-instagram-fill"></i></a>
                                        <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Doctors Section -->






            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container">
                    <div class="container">

                        <div class="section-title">
                            <h2>Feedback About Children's Care</h2>
                            <p>There are some random feedback about services of Children's Care System, Thanks every body so much for love their system.</p>
                        </div>
                    </div>
                    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                        <h3>Saul Goodman</h3>
                                        <h4>Ceo &amp; Founder</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                        <h3>Sara Wilsson</h3>
                                        <h4>Designer</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                        <h3>Jena Karlis</h3>
                                        <h4>Store Owner</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                        <h3>Matt Brandon</h3>
                                        <h4>Freelancer</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">

                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                                        <h3>John Larson</h3>
                                        <h4>Entrepreneur</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>

                </div>
            </section><!-- End Testimonials Section -->

            <!-- ======= Team Section ======= -->
            <section id="team" class="team section-bg">
                <div class="container">

                    <div class="section-title" data-aos="fade-up">
                        <h2>Our Developer Team</h2>
                        <p>There are many developer from FPT University with love.</p>
                    </div>

                    <div class="row">

                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="100">
                                <div class="member-img">
                                    <img src="assets/img/team/team-1.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Ngọc Khoa</h4>
                                    <span>Chief Executive Officer</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="200">
                                <div class="member-img">
                                    <img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Ngọc Hoàn</h4>
                                    <span>Product Manager</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="200">
                                <div class="member-img">
                                    <img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Phong Hào</h4>
                                    <span>Product Manager</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="300">
                                <div class="member-img">
                                    <img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Trịnh Xuân Trường</h4>
                                    <span>CTO</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="400">
                                <div class="member-img">
                                    <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Kiều Minh Đạt</h4>
                                    <span>Accountant</span>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Team Section -->



        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <jsp:include page="assets/module/footer.jsp"  flush="true"/>
        <!-- END FOOTER -->
        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>

</html>