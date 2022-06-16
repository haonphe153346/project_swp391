<%-- 
    Document   : inner-page
    Created on : May 25, 2022, 11:13:16 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Inner Page - Medilab Bootstrap Template</title>
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

        <!-- =======================================================
        * Template Name: Medilab - v4.7.1
        * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
        <style>
            .imagebig{
                width: 1000px;
                height: 500px;
            }
            p img{
                border: 2px solid white;
                width: 120px;
            }

            p img:hover {
                border: 2px solid red;
                cursor: pointer;
            }
        </style>

    </head>

    <body>

        <!-- ======= Top Bar ======= -->
        <div id="topbar" class="d-flex align-items-center fixed-top">
            <div class="container d-flex justify-content-between">
                <div class="contact-info d-flex align-items-center">
                    <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
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

        <main id="main" style="padding: 85px">

            <!-- ======= Breadcrumbs Section ======= -->


            <section class="breadcrumbs">

                <div class="container-fluid ">
                    <div class="row">
                        <div class="col-md-3 col-lg-3">
                            <!-- Side widgets-->
                            <!-- Search widget-->
                            <div class="card mb-4">
                                <div class="card-header">Search</div>
                                <div class="card-body">
                                    <div class="input-group">
                                        <input class="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" />
                                        <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                                    </div>
                                </div>
                            </div>
                            <!-- Categories widget-->
                            <div class="card mb-4">
                                <div class="card-header">Categories</div>
                                <div class="card-body">
                                    <div class="list-group">
                                        <c:forEach items="${requestScope.listService}" var="C">
                                            <a href="filter-service?categoryId=${C.category_id}" class="list-group-item list-group-item-action">${C.category_name}</a>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- Side widget-->
                            <div class="card mb-4">
                                <div class="card-header">Side Widget</div>
                                <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="container mt-5">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <!-- Post content-->



                                        <article>
                                            <!-- Post header-->
                                            <header class="mb-4">
                                                <!-- Post title-->
                                                <h1 class="fw-bolder mb-1">Service title: ${service.service_title}</h1>
                                                <i> <h3 class="fw-bolder mb-1">Service brief: ${service.services_bi}</h3></i>
                                                <!-- Post meta content-->
                                                <div class="text-muted fst-italic mb-2">Posted on January 1, 2022 by Start Bootstrap</div>
                                                <!-- Post categories-->

                                            </header>
                                            <!-- Preview image figure-->

                                            <figure class="mb-4">
                                                <!--<img class="img-fluid rounded" src="assets/img/mat.jpg" alt="..." />-->




                                                <img id="main-img" class="imagebig img-fluid rounded" src="assets/img/service/eye1.jpg" alt="..." />
                                                <p>
                                                    <img class="img-fluid rounded" src="assets/img/service/eye1.jpg" alt="..." style="height: 100px; margin-top: 15px" />
                                                    <img class="img-fluid rounded" src="assets/img/service/eye2.jpg" alt="..." style="height: 100px; margin-top: 15px"/>
                                                    <img class="img-fluid rounded" src="assets/img/service/eye3.jpg" alt="..." style="height: 100px; margin-top: 15px"/>
                                                    <img class="img-fluid rounded" src="assets/img/service/eye4.jpg" alt="..." style="height: 100px; margin-top: 15px"/>
                                                    <img class="img-fluid rounded" src="assets/img/service/eye5.jpg" alt="..." style="height: 100px; margin-top: 15px"/>
                                                </p>




                                            </figure>
                                            <!-- Post content-->
                                            <section class="mb-5">
                                                <p class="fs-5 mb-4">Rate star: ${service.service_rateStar}/5 <i style="color: yellow" class="bi bi-star-fill"></i></p>
                                                <p class="fs-5 mb-4">Old Price: ${service.service_price}$</p>
                                                <p class="fs-5 mb-4">Discount Price: <i class="text-danger">${service.service_discount}$</i></p>
                                                <h2 class="fw-bolder mb-4 mt-5">Service description: ${service.service_detail}</h2>
                                                <p class="fs-5 mb-4">   </p>
                                            </section>
                                        </article>









                                        <section class="mb-5">
                                            <div class="card bg-light">
                                                <div class="card-body">
                                                    <!-- Comment form-->
                                                    <c:forEach items="${listloadcomment}" var="CM"> 
                                                        <div class="d-flex">
                                                            <div class="flex-shrink-0"><img style="height: 50px; width: 50px;" class="rounded-circle" src="./resouce/image/${CM.user_image}" alt="..." /></div>
                                                            <div class="ms-3">
                                                                <div class="fw-bold">${CM.user_fullname}</div>
                                                                <p> ${CM.content}When I look at the universe and all the ways the universe wants to kill us, I find it hard to reconcile that with statements of beneficence.</p>
                                                                <p>${CM.comment_date}</p>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>

                                               
                                                    <form style="margin-top: 100px" class="mb-4" action="commentsubmit" method="POST">
                                                        <h2>${messe}</h2>
                                                        <input type="hidden" >
                                                        <textarea class="form-control" rows="3" name="contentComment" placeholder="Join the discussion and leave a comment!"></textarea>
                                                        <input type="submit" value="Submit"/>
                                                        Comment with nested comments
                                                    </form>
                                         
                                            </div>











                                        </section>








                                        <!-- Comments section-->
                                        <!--                                        <section class="mb-5">
                                                                                    <div class="card bg-light">
                                                                                        <div class="card-body">
                                                                                             Comment form
                                                                                            <form class="mb-4"><textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea></form>
                                                                                             Comment with nested comments
                                                                                            <div class="d-flex mb-4">
                                                                                                 Parent comment
                                                                                                <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                                                                <div class="ms-3">
                                                                                                    <div class="fw-bold">Commenter Name</div>
                                                                                                    If you're going to lead a space frontier, it has to be government; it'll never be private enterprise. Because the space frontier is dangerous, and it's expensive, and it has unquantified risks.
                                                                                                     Child comment 1
                                                                                                    <div class="d-flex mt-4">
                                                                                                        <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                                                                        <div class="ms-3">
                                                                                                            <div class="fw-bold">Commenter Name</div>
                                                                                                            And under those conditions, you cannot establish a capital-market evaluation of that enterprise. You can't get investors.
                                                                                                        </div>
                                                                                                    </div>
                                                                                                     Child comment 2
                                                                                                    <div class="d-flex mt-4">
                                                                                                        <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                                                                        <div class="ms-3">
                                                                                                            <div class="fw-bold">Commenter Name</div>
                                                                                                            When you put money directly to a problem, it makes a good headline.
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                             Single comment
                                                                                            <div class="d-flex">
                                                                                                <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                                                                <div class="ms-3">
                                                                                                    <div class="fw-bold">Commenter Name</div>
                                                                                                    When I look at the universe and all the ways the universe wants to kill us, I find it hard to reconcile that with statements of beneficence.
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </section>-->
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </section>




        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <jsp:include page="assets/module/footer.jsp" flush="true"/>
        <!-- End Footer -->

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


        <script src="http://code.jquery.com/jquery-3.5.0.min.js"></script>
        <script>
            $(() => {
                $('p img').click(function () {
                    let imgPath = $(this).attr('src');
                    $('#main-img').attr('src', imgPath);
                })
            })
        </script>
    </body>

</html>