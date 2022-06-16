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
                        
                        <div class="mx-auto text-center">
                            <button type="button" class="btn btn-success"><a href="addNewSetting.jsp">New Setting</a></button>
                            <div class="card mt-2 mx-auto p-4 bg-light">
                                <div class="card-body bg-light">
                                    
                                    <div class = "container">
                                        
                                        <form action="settingdetail" method="post" id="contact-form" role="form">
                                            <div class="controls">

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="form_name">Firstname *</label>
                                                            <input id="form_name" type="text" name="id" class="form-control" value="${setting.setting_id}" placeholder="Please enter your firstname *" required="required" data-error="Firstname is required.">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="form_name">Firstname *</label>
                                                            <input id="form_name" type="text" name="name" value="${setting.setting_name}" class="form-control" placeholder="Please enter your firstname *" required="required" data-error="Firstname is required.">

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="form_name">Firstname *</label>
                                                            <input id="form_name" type="text" name="value" value="${setting.setting_value}" class="form-control" placeholder="Please enter your firstname *" required="required" data-error="Firstname is required.">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="form_need">Please specify your need *</label>
                                                            <select  name="status" class="form-control" required="required" data-error="Please specify your need.">

                                                                <c:choose>
                                                                    <c:when test="${setting.setting_status == true}">
                                                                        <option value="1" selected="selected">Show item</option>
                                                                        <option value="0">Hide item</option>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <option value="1">Show item</option>
                                                                        <option value="0" selected="selected">Hide item</option>
                                                                    </c:otherwise>
                                                                </c:choose>

                                                            </select>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="form_message">Message *</label>
                                                            <textarea id="form_name" value="${setting.setting_description}" name="desciption" class="form-control" placeholder="${setting.setting_description}" rows="4" required="required" data-error="Please, leave us a message.">${setting.setting_description}</textarea
                                                            >
                                                        </div>

                                                    </div>


                                                    <div class="col-md-12">

                                                        <input type="submit" class="btn btn-success btn-send  pt-2 btn-block
                                                               " value="Send Message" >

                                                    </div>

                                                </div>


                                            </div>
                                        </form>
                                    </div>
                                </div>


                            </div>
                            <!-- /.8 -->

                        </div>
                        <!-- /.row-->

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
        <script>
            let all = []
            let success = []
            let date = []

            <c:forEach items="${requestScope.listAllRes}" var="p3">
            all.push("${p3.count}")
            date.push("${p3.date}")
            </c:forEach>

            <c:forEach items="${requestScope.listSuccessRes}" var="p4">
            success.push("${p4.count}")
            </c:forEach>

            var options = {
                series: [{
                        name: 'Success',
                        data: all
                    }, {
                        name: 'All',
                        data: success
                    }],
                chart: {
                    height: 350,
                    type: 'area'
                },
                dataLabels: {
                    enabled: false
                },
                stroke: {
                    curve: 'smooth'
                },
                xaxis: {
                    type: 'datetime',
                    categories: date},
                tooltip: {
                    x: {
                        format: 'dd/MM/yy'
                    },
                },
            };

            var chart = new ApexCharts(document.querySelector("#chart"), options);
            chart.render();

            let tt = []
            let cate = []

            <c:forEach items="${requestScope.cateList}" var="p">
            cate.push("${p.category_name}")
            </c:forEach>
            <c:forEach items="${requestScope.revenuesOfCate}" var="p1">
            tt.push("${p1}")
            </c:forEach>


            var options = {
                series: tt,
                chart: {
                    height: 400,
                    type: 'radialBar',
                },
                plotOptions: {
                    radialBar: {
                        offsetY: 0,
                        startAngle: 0,
                        endAngle: 270,
                        hollow: {
                            margin: 5,
                            size: '30%',
                            background: 'transparent',
                            image: undefined,
                        },
                        dataLabels: {
                            name: {
                                show: false,
                            },
                            value: {
                                show: false,
                            }
                        }
                    }
                },
                colors: ['#1ab7ea', '#0084ff', '#39539E', '#0077B5'],
                labels: cate,
                legend: {
                    show: true,
                    floating: true,
                    fontSize: '16px',
                    position: 'left',
                    offsetX: 1,
                    offsetY: 1,
                    labels: {
                        useSeriesColors: true,
                    },
                    markers: {
                        size: 0
                    },
                    formatter: function (seriesName, opts) {
                        return seriesName + ":  " + opts.w.globals.series[opts.seriesIndex] + " $"
                    },
                    itemMargin: {
                        vertical: 3
                    }
                },
                responsive: [{
                        breakpoint: 480,
                        options: {
                            legend: {
                                show: false
                            }
                        }
                    }]
            };

            var chart = new ApexCharts(document.querySelector("#chart1"), options);
            chart.render();



            var options = {
                series: [{
                        name: 'Net Profit',
                        data: [44, 55, 57, 56, 61, 58, 63, 60, 66]
                    }, {
                        name: 'Revenue',
                        data: [76, 85, 101, 98, 87, 105, 91, 114, 94]
                    }, {
                        name: 'Free Cash Flow',
                        data: [35, 41, 36, 26, 45, 48, 52, 53, 41]
                    }],
                chart: {
                    type: 'bar',
                    height: 350
                },
                plotOptions: {
                    bar: {
                        horizontal: false,
                        columnWidth: '55%',
                        endingShape: 'rounded'
                    },
                },
                dataLabels: {
                    enabled: false
                },
                stroke: {
                    show: true,
                    width: 2,
                    colors: ['transparent']
                },
                xaxis: {
                    categories: ['Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct'],
                },
                yaxis: {
                    title: {
                        text: '$ (thousands)'
                    }
                },
                fill: {
                    opacity: 1
                },
                tooltip: {
                    y: {
                        formatter: function (val) {
                            return "$ " + val + " thousands"
                        }
                    }
                }
            };

            var chart = new ApexCharts(document.querySelector("#chart2"), options);
            chart.render();

        </script>
        <!-- End custom js for this page -->
    </body>
</html>
