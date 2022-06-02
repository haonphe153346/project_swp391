<%-- 
    Document   : inner-page
    Created on : May 25, 2022, 11:13:16 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <main id="main">

            <!-- ======= Breadcrumbs Section ======= -->
            <section class="breadcrumbs">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div>
                                <h5>SEARCH</h5>
                                <nav class="navbar navbar-light bg-light">
                                    <form action="filteruser" method="get" class="form-inline" style="display: flex">
                                        <input name="search" class="form-control mr-sm-2" style="margin-right: 8px " type="search" placeholder="Search" aria-label="Search">
                                        <button  class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                                    </form>
                                </nav>
                            </div>
                            <div style="margin-top:15px ">
                                <h5>FILTER
                                    <div class="btn-group position-relative" role="group" aria-label="Basic mixed styles example">
                                        <button type="button" class="btn btn-outline-success"><a href="userlist">Clear Filter</a></button>
                                    </div>
                                </h5>
                                <!--FILTER By Role-->
                                <div class="row input-group mb-3">

                                    <div class="mb-2 col-md-12">
                                        <input readonly="readonly" type="text" value="Role" class="form-control" aria-label="Text input with checkbox">
                                    </div>
                                    <c:set var="role_check" value="${role_check}" />
                                    <c:set var="list_role" value="${list_role}"/>
                                    <form action="filteruser" method="get">
                                        <c:forEach begin="0" end="${list_role.size()-1}" var="i">
                                            <div class="form-check form-check-inline">
                                                <input name="role" ${role_check[i]?"checked":""} onclick="this.form.submit()" value="${list_role.get(i).role_id}" class="form-check-input" type="checkbox" id="inlineCheckbox1" value="1" />
                                                <label class="form-check-label" for="inlineCheckbox1">${list_role.get(i).role_name}</label>
                                            </div>
                                        </c:forEach> 
                                    </form>

                                </div>
                                <!--FILTER By Status-->
                                <div class="input-group mb-3">
                                    <div class="mb-2 col-md-12">
                                        <input readonly="readonly" type="text"  value="Status" class="form-control" aria-label="Text input with checkbox">
                                    </div>
                                    <c:set var="check" value="${check}" />
                                    <form action="filteruser" method="get">
                                        <div class="form-check form-check-inline">
                                            <input ${check[0]?"checked":""} name="status" ${status_check[i]?"checked":""} onclick="this.form.submit()" class="form-check-input" type="checkbox" id="inlineCheckbox1" value="1" />
                                            <label class="form-check-label" for="inlineCheckbox1">Is activated</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input ${check[1]?"checked":""} name="status" ${status_check[i]?"checked":""} onclick="this.form.submit()" class="form-check-input" type="checkbox" id="inlineCheckbox2" value="0" />
                                            <label class="form-check-label" for="inlineCheckbox2">Not activated</label>
                                        </div>
                                    </form>
                                </div>
                                <!--FILTER By Gender-->
                                <div class="input-group mb-3">
                                    <div class="mb-2 col-md-12">
                                        <input readonly="readonly" type="text"  value="Gender" class="form-control" aria-label="Text input with checkbox">
                                    </div>
                                    <form action="filteruser" method="get">
                                        <div class="form-check form-check-inline">
                                            <input ${check[2]?"checked":""} name="gender" onclick="this.form.submit()" class="form-check-input" type="checkbox" id="inlineCheckbox1" value="1" />
                                            <label class="form-check-label" for="inlineCheckbox1">Male</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input ${check[3]?"checked":""} name="gender" onclick="this.form.submit()" class="form-check-input" type="checkbox" id="inlineCheckbox2" value="0" />
                                            <label class="form-check-label" for="inlineCheckbox2">Female</label>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div style="margin-top: 15px">
                                <h5>ORDER BY</h5>
                                <form action="filteruser" method="get"> 
                                    <div class="custom-control custom-radio">
                                    <input type="radio" ${sort=="id"?"checked":""} onclick="this.form.submit()" value="id" id="customRadio1" name="sort" class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio1">ID</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" ${sort=="name"?"checked":""} onclick="this.form.submit()" value="name" id="customRadio2" name="sort" class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio2">NAME</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" ${sort=="gender"?"checked":""} onclick="this.form.submit()" value="gender" id="customRadio1" name="sort" class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio1">GENDER</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" ${sort=="email"?"checked":""} onclick="this.form.submit()" value="email" id="customRadio2" name="sort" class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio2">EMAIL</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" ${sort=="mobile"?"checked":""} onclick="this.form.submit()" value="mobile" id="customRadio1" name="sort" class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio1">MOBILE</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" ${sort=="role"?"checked":""} onclick="this.form.submit()" value="role" id="customRadio2" name="sort" class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio2">ROLE</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" ${sort=="status"?"checked":""} onclick="this.form.submit()" value="status" id="customRadio2" name="sort" class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio2">STATUS</label>
                                </div>
                                </form>
                            </div>

                        </div>
                        <div class="col-md-8">
                            <div class="mb-3">
                                <a href="addNewUser.jsp"><button type="button" class="btn btn-primary">ADD NEW</button></a>
                            </div>
                            <div class="row">
                                <c:forEach items="${list_user}" var="i">
                                    <div class="col-sm-6 mb-3">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">${i.user_id}
                                                    <c:choose>
                                                        <c:when test="${i.user_gender == true}">
                                                            <img width="30px" src="./assets/img/male.jpg">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img width="30px" src="./assets/img/female.jpg">
                                                        </c:otherwise>
                                                    </c:choose>
                                                </h5>
                                                <p class="card-text">${i.user_name}</p>
                                                <p class="card-text">${i.user_email}</p>
                                                <p class="card-text">${i.user_phone}</p>
                                                <c:forEach items="${list_role}" var="r">
                                                    <c:if test="${r.role_id == i.user_role}">
                                                        <p class="card-text">${r.role_name}</p>
                                                    </c:if>
                                                </c:forEach>
                                                <c:choose>
                                                    <c:when test="${i.user_status == true}">
                                                        <p style="color: green" class="card-text">Is activated</p> 
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p style="color: red" class="card-text">Not activated</p> 
                                                    </c:otherwise>
                                                </c:choose>      
                                                <c:set var="func1" value="view" />
                                                <c:set var="func2" value="edit" />
                                                <a href="user_detail?user_id=${i.user_id}&function=${func1}" class="btn btn-primary">View User</a>
                                                <a href="user_detail?user_id=${i.user_id}&function=${func2}" class="btn btn-success">Edit User</a>
                                            </div>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <c:set var="home" value="home"/>
                    <c:set var="filter" value="filter"/>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                            <li class="page-item">
                                <a style="pointer-events: ${page == 1?"none":""}" class="page-link" href="userlist?page=${page - 1}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>
                            <c:if test="${path == home}">
                                <c:forEach begin="1" end="${maxPage}" var="i">
                                    <li class="page-item ${i==page?"active":""}"><a class="page-link" href="userlist?page=${i}">${i}</a></li>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${path == filter}">
                                    <c:forEach begin="1" end="${maxPage}" var="i">
                                    <li class="page-item ${i==page?"active":""}"><a class="page-link" href="filteruser?page=${i}">${i}</a></li>
                                    </c:forEach>
                                </c:if>

                            <li class="page-item">
                                <a style="pointer-events: ${page == maxPage?"none":""}" class="page-link" href="userlist?page=${page + 1}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
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