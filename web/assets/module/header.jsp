
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

        <h1 class="logo me-auto"><a href="index">Children's Care</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>

                <li><a class="nav-link scrollto active" href="/project_swp391/index">Home</a></li>
                    <c:if test="${sessionScope.admin != null}">
                    <li><a class="nav-link scrollto" href="/project_swp391/Admin/AdminDashBoard">Admin</a></li>
                    </c:if>
                <li><a class="nav-link scrollto" href="#about">About</a></li>
                <li><a class="nav-link scrollto" href="servicelist">Services</a></li>
                <li><a class="nav-link scrollto" href="#hotservices">Hot Services</a></li>
                <li><a class="nav-link scrollto" href="#blogs">Blogs</a></li>
                <li><a class="nav-link scrollto" href="#doctors">Doctors</a></li>
                <li><a class="nav-link scrollto" href="feedback.jsp">Feedback</a></li>
                    <c:if test="${sessionScope.account.user_id != null || sessionScope.admin.user_id != null}">
                    <li class="dropdown"><a href="#"><span>User Manager</span><i class="bi bi-chevron-right"></i></a>
                        <ul>
                            <li><a href="user_profile">Edit profile</a></li>
                            <li><a href="changpassword">Change Password</a></li>
                            <li><a href="logout">Logout</a></li>
                        </ul>
                    </li>
                </c:if>

            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

        <!--      <a href="login" class="appointment-btn scrollto"><span class="d-none d-md-inline"></span>Login</a>-->

        <c:choose>
            <c:when test="${sessionScope.account != null || sessionScope.admin != null}">
                <c:choose>
                    <c:when test="${sessionScope.account != null}">
                        <a href="login" class="btn btn-#fff ms-lg-2">
                            <p><img style="height: 50px; width: 50px;" src="./resouce/image/${sessionScope.account.user_image}"></p> <p> ${sessionScope.account.user_name}</p></a>     
                            </c:when>
                            <c:otherwise>
                        <a href="login" class="btn btn-#fff ms-lg-2">
                            <p><img style="height: 50px; width: 50px;" src="./resouce/image/${sessionScope.admin.user_image}"></p> <p> ${sessionScope.admin.user_name}</p></a>
                            </c:otherwise>
                        </c:choose>
                    </c:when>
                    <c:otherwise>
                <a href="login" class="btn btn-outline-primary ms-lg-2"><img height="30" src="https://i.imgur.com/ZYzTdD0.png">
                    <p>Login</p></a>
                </c:otherwise>
            </c:choose>
        <a class="me-3" href="carts" >
                <i style="font-size: 30px;color:grey;" class="fas fa-shopping-cart"></i>
                <span id="cart-number" class="position-absolute bottom-50 start-99 translate-middle badge rounded-pill bg-danger">
                    <c:choose>
                        <c:when test="${sessionScope.carts.size() != null}">${sessionScope.carts.size()}</c:when>
                        <c:otherwise>0</c:otherwise>
                    </c:choose>
                        <span  class="visually-hidden">Cart item</span>
                </span>
            </a>
    </div>
</header>

