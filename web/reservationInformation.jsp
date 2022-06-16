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
        <link href="assets/css/reservationinformation.css" rel="stylesheet">

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

            <div class="col-12">
                <!-- ORDERS TABLE -->
                <div class="box" style="margin-top: 100px;">
                    <div class="box-header">
                        <h2>The receiver information: </h2>
                    </div>
                    <div class="box-body overflow-scroll">


                        <dl class="row">
                            <dt class="col-sm-3"><h3>Your name: </h3></dt>
                            <dd class="col-sm-9"><h3>${informationUserReservation.user_name}</h3></dd>
                            <dt class="col-sm-3 text-truncate"><h3>Your Gender: </h3></dt>
                            <c:if test="${informationUserReservation.user_gender == true}">
                                <dd class="col-sm-9"><h3>Male</h3></dd>
                            </c:if>
                            <c:if test="${informationUserReservation.user_gender == false}">
                                    <dd class="col-sm-9"><h3>Female</h3></dd>
                            </c:if>
                                    <dt class="col-sm-3"><h3>Your email: </h3></dt>
                                    <dd class="col-sm-9"><h3>${informationUserReservation.user_email}</h3></dd>
                                    <dt class="col-sm-3"><h3>Your Phone: </h3></dt>
                                    <dd class="col-sm-9"><h3>${informationUserReservation.user_phone}</h3></dd>
                        </dl>


                        <table style="margin-bottom: 50px;"> 

                            <div class="examples"> 
                                <button style="width: 100%;" class="btn btn-lg btn-success sweet-12"><h3>Your reservation information: </h3></button> 
                            </div> 
                            <thead>
                                <tr>
                                    <th>ID reservation</th>
                                    <th>Reservation date</th>
                                    <th>Time to check up</th>
                                    <th>Total cost</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                    <tr>
                                        <td>${informationReservation.reservation_id}</td>
                                        <td>
                                            ${informationReservation.created_date}
                                        </td>

                                        <c:if test="${informationReservation.reservation_slot==1}">
                                            <td>
                                                <span class="order-status order-ready">
                                                    (7h30 - 9h)
                                                </span>
                                            </td>
                                        </c:if>
                                        <c:if test="${informationReservation.reservation_slot==2}">
                                            <td>
                                                <span class="order-status order-ready">
                                                    ( 9h10 - 12h30 )
                                                </span>
                                            </td>
                                        </c:if>
                                        <c:if test="${informationReservation.reservation_slot==3}">
                                            <td>
                                                <span class="order-status order-ready">
                                                    ( 12h30 - 15h20 )
                                                </span>
                                            </td>
                                        </c:if>
                                        <c:if test="${informationReservation.reservation_slot==4}">
                                            <td>
                                                <span class="order-status order-ready">
                                                    ( 15h30 - 17h00 )
                                                </span>
                                            </td>
                                        </c:if>


                                        <td>
                                            ${informationReservation.total_price}$
                                        </td>


                                        <c:if test="${informationReservation.reservation_status==1}">
                                            <td>
                                                <div class="payment-status payment-pending">
                                                    <div class="dot"></div>
                                                    <span>Pending</span>
                                                </div>
                                            </td>
                                        </c:if>

                                        <c:if test="${informationReservation.reservation_status==2}">
                                            <td>
                                                <div class="payment-status payment-status">
                                                    <div class="dot"></div>
                                                    <span>Cancel</span>
                                                </div>
                                            </td>
                                        </c:if>

                                        <c:if test="${informationReservation.reservation_status==3}">
                                            <td>
                                                <div class="payment-status payment-paid">
                                                    <div class="dot"></div>
                                                    <span>Successful</span>
                                                </div>
                                            </td>
                                        </c:if>

                                        <td><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-calendar2-x" viewBox="0 0 16 16">
                                                <path d="M6.146 8.146a.5.5 0 0 1 .708 0L8 9.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 10l1.147 1.146a.5.5 0 0 1-.708.708L8 10.707l-1.146 1.147a.5.5 0 0 1-.708-.708L7.293 10 6.146 8.854a.5.5 0 0 1 0-.708z"/>
                                                <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
                                                <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
                                                </svg></a></td>
                                                <td><a href="reservation-detail"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
                                            <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                                            </svg></a></td>


                                    </tr>

                            </tbody>
                        </table>   


                        <table> 
                            <div class="examples"> 
                                <button style="width: 100%;" class="btn btn-lg btn-warning sweet-13"><h3>List of reserved services: </h3></button> 
                            </div> 
                            <thead>
                                <tr>
                                    <th>Thumbnail</th>
                                    <th>Service</th>
                                    <th>Unit price</th>
                                    <th>Number of person</th>
                                    <th>Total cost</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.listServiceOfReservation}" var="LR">
                                    <tr>
                                        <td>${LR.image}</td>
                                        <td>
                                            ${LR.service_title}
                                        </td>

                                        <td>${LR.service_price}$</td>

                                        <td>
                                            ${LR.num_of_person}
                                        </td>

                                        <td>
                                            ${LR.total_price}$
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table> 
                    </div>
                </div>
                <!-- END ORDERS TABLE -->
            </div>





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

    </body>

</html>