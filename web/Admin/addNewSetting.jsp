<%-- 
    Document   : Index_Admin
    Created on : May 26, 2022, 10:36:30 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Children's Care Admin</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <link rel="stylesheet" href="assets/vendors/jvectormap/jquery-jvectormap.css">
        <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
        <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.theme.default.min.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <!-- endinject -->
        <!-- Layout styles -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- End layout styles -->
        <link rel="shortcut icon" href="assets/images/favicon.png" />
        <style>
            .form-control{
                background-color: wheat;
                color: black;
            }
            @media (min-width: 1025px) {
                .h-custom {
                    height: 100vh !important;
                }
            }
        </style>
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_sidebar.html -->
            <jsp:include page="assets/module/Header_Admin.jsp" flush="true"/> 
            <main id="main" style="padding: 100px 0 0;">

                <!-- ======= Breadcrumbs Section ======= -->
                <div class="container">
                    <div class="row ">

                        <section class="" style="background-color: #8fc4b7;">
                            <div class="container py-5">
                                <div class="row d-flex justify-content-center align-items-center h-100">
                                    <div class="col-lg-8 col-xl-6">
                                        <div class="card rounded-3">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
                                                 class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                                                 alt="Sample photo">
                                            <div class="card-body p-4 p-md-5">
                                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">NEW SETTING</h3>

                                                <form class="px-md-2">

                                                    <div class="form-outline mb-4">
                                                        <input type="text" id="form3Example1q" class="form-control" />
                                                        <label class="form-label" for="form3Example1q">Name</label>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-6 mb-4">

                                                            <div class="form-outline datepicker">
                                                                <input type="number" class="form-control" id="exampleDatepicker1" />
                                                                <label for="exampleDatepicker1" class="form-label">Value</label>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <div class="mb-4">

                                                        <select class="select">
                                                            <option value="1">Show</option>
                                                            <option value="0">Hide</option>
                                                        </select>

                                                    </div>

                                                    <div class="row mb-4 pb-2 pb-md-0 mb-md-5">
                                                        <div class="col-md-12">

                                                            <textarea id="form_name" name="desciption" class="form-control" placeholder="Description" rows="4" required="required" data-error="Please, leave us a message."></textarea
                                                            >

                                                        </div>
                                                    </div>

                                                    <button type="submit" class="btn btn-success btn-lg mb-1">Submit</button>

                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                    </div>
                </div>

            </main><!-- End #main -->

        </div>
        <!-- page-body-wrapper ends -->
        <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script src="assets/vendors/chart.js/Chart.min.js"></script>
        <script src="assets/vendors/progressbar.js/progressbar.min.js"></script>
        <script src="assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
        <script src="assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script src="assets/js/off-canvas.js"></script>
        <script src="assets/js/hoverable-collapse.js"></script>
        <script src="assets/js/misc.js"></script>
        <script src="assets/js/settings.js"></script>
        <script src="assets/js/todolist.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page -->
        <script src="assets/js/dashboard.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

        <!-- End custom js for this page -->
    </body>
</html>
