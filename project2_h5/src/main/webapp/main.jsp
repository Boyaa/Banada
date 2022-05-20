<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.smhrd.domain.UserDAO"%>
<%@page import="com.smhrd.domain.User"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Landing Page - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!--상단바-->
        <nav class="navbar navbar-light bg-light static-top" style = "border-bottom: 1px solid #eaeaea;">
            <div class="left">
                <a class="navbar-brand" style = "font-family : jalnan" href="main.html">바나다</a>
            </div>
            <div class="nav_but" style = "padding-top:40px;">
            <c:choose>
               <c:when test="${empty loginUser}">
                  <a href="login.jsp">로그인</a>
                  <a href="join.jsp">회원가입</a>
               </c:when>
             
               <c:otherwise>
                  <a href="LogoutCon">로그아웃</a>
               </c:otherwise>
            </c:choose>
            </div>
        </nav>
        <!-- 중앙 검색창-->
        <header class="masthead" style = "background-color:#FAFAFA">
            <div class="container position-relative">
                <div class="row justify-content-center">
                    <div class="col-xl-6">
                        <div class="text-center">
                            <!-- Page heading-->
                            <h1 class="mb-5 " style = "font-family: 'ibm'; font-weight: 100px;">
                                <span color="#ffc107">바나다에</span>
                                <br>
                                <span>반하다</span>
                            </h1>
                            <!-- Signup form-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- * * SB Forms Contact Form * *-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- This form is pre-integrated with SB Forms.-->
                            <!-- To make this form functional, sign up at-->
                            <!-- https://startbootstrap.com/solution/contact-forms-->
                            <!-- to get an API token!-->
                            <form class="form-subscribe" id="contactForm" data-sb-form-api-token="API_TOKEN">
                                <!-- Email address input-->
                                <div class="row">
                                    <div class="col">
                                        <input class="form-control form-control-lg" id ="text-bar" type="text" placeholder="찾는게 있으신가요?" />
                                        
                                    </div>
                                    <div class="col-auto font-paybooc btn-center"><button class="btn btn-primary " id="submitButton" type="submit">검색</button></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!--중앙 3분할 설명창-->
        <section class="features-icons bg-light-yellow text-center">
            <div class="container">
                <div class="row font-paybooc">
                    <div class="col-lg-4 " >
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3" style="align-items:center;">
                            <div class="features-icons-icon d-flex" ">
                                <img style="margin-left: 100px; margin-bottom:10px; border-radius: 30%;" src="assets/main_img/nanum.png" >
                            </div>
                            <a href="object.jsp" class="mini-category">소분해요</a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex">
                                <img style="margin-left: 100px; margin-bottom:10px; border-radius: 30%;" src="assets/main_img/hobby.png" >
                            </div>
                            <a href="Hobby.jsp" class="mini-category"s>취미공유</a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                            <div class="features-icons-icon d-flex">
                                <img style="margin-left: 100px; margin-bottom:10px;border-radius: 30%;" src="assets/main_img/gesi.png" >
                            </div>
                            <a href="post.jsp" class="mini-category">자유게시판</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Image Showcases-->
        <section class="showcase">
            <div class="container-fluid p-0" style = "background-color: #FAFAFA">
                <div class="row g-0">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('assets/main_img/bg-showcase-1.png')"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        <h2 class ="font-paybooc"> 소분 할 사람?</h2>
                        <p class="lead mb-0">물건이 남아서 힘드셨다구요??</p>
                        <p class="lead mb-0">바나다에서 해결하세요~</p>
                    </div>
                </div>
                <div class="row g-0" >
                    <div class="col-lg-6 text-white showcase-img" style="background-image: url('assets/main_img/bg-showcase-2.jpg')"></div>
                    <div class="col-lg-6 my-auto showcase-text">
                        <h2 class ="font-paybooc">취미 공유 할 사람?</h2>
                        <p class="lead mb-0">혼자서하면 심심하겠지만</p>
                        <p class="lead mb-0">둘이서 하면 즐거움도 2배!!</p>
                    </div>
                </div>
                <div class="row g-0">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('assets/main_img/bg-showcase-3.jpg')"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        <h2 class ="font-paybooc">재능 나눔 할 사람?</h2>
                        <p class="lead mb-0">능력을 숨기고 사시느라 힘드셨죠?</p>
                        <p class="lead mb-0">이제 숨기지 말고 보여주세요!!</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonials-->
        <section class="testimonials text-center bg-light">
            <div class="container">
                <h2 class="mb-5 font-paybooc">오늘의 추천 물품</h2>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="assets/main_img/testimonials-1.jpg" alt="..." />
                            <h5>바나나</h5>
                            <p class="font-weight-light mb-0">"바나나 같이 소분하실분??"</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="assets/main_img/testimonials-2.jpg" alt="..." />
                            <h5>연필</h5>
                            <p class="font-weight-light mb-0">"학용품 같이 소분해요~"</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="assets/main_img/testimonials-3.jpg" alt="..." />
                            <h5>생수</h5>
                            <p class="font-weight-light mb-0">"물사면 너무 많은데 같이 사서 나누실분??? 반띵해봐요~"</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer " style="height:150px;"">
                <div class="container col-lg-6 h-100 text-center text-lg-start my-auto">
                        <ul class="list-inline mb-2">
                            <li class="list-inline-item"><a href="#!">About</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Contact</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Terms of Use</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Privacy Policy</a></li>
                        </ul>
                        <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2022. Made by H5</H></p>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
