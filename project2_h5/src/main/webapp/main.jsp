<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.smhrd.domain.UserDAO"%>
<%@page import="com.smhrd.domain.User"%>
<%
String MT = (String)request.getAttribute("MT");
String nick = (String)request.getAttribute("nick");
%>
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
        <style>
        div, ul, li {-webkit-box-sizing: border-box;-moz-box-sizing: border-box;box-sizing: border-box;padding:0;margin:0}
a {text-decoration:none;}

.quickmenu {position:absolute;width:300px;top:50%;margin-top:-50px;right:10px;background:#fff;}
.quickmenu ul {position:relative;float:left;width:100%;display:inline-block;*display:inline;border:1px solid #ddd;}
.quickmenu ul li {float:left;width:100%;border-bottom:1px solid #ddd;text-align:center;display:inline-block;*display:inline;}
.quickmenu ul li a {position:relative;float:left;width:100%;height:30px;line-height:30px;text-align:center;color:#999;font-size:9.5pt;}
.quickmenu ul li a:hover {color:#000;}
.quickmenu ul li:last-child {border-bottom:0;}

.content {position:relative;min-height:1000px;}
        </style>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="assets/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!--상단바-->
        <nav class="navbar navbar-light bg-light static-top" style = "border-bottom: 1px solid #eaeaea;">
            <div class="left">
                <a class="navbar-brand" style = "font-family : jalnan" href="main.jsp">바나다</a>
            </div>
            <div class="nav_but" style = "padding-top:40px;">
            <c:choose>
               <c:when test="${empty loginUser}">
                  <a href="login.jsp">로그인</a>
                  <a href="join.jsp">회원가입</a>
               </c:when>
               <c:otherwise>
               	  <a href="myreview.jsp?user_nick=${loginUser.user_nick }">받은 후기</a>
                  <a href="LogoutCon">로그아웃</a>
              </div>
               </c:otherwise>
            </c:choose>
        </nav>
        <!-- 중앙 검색창-->
        <header class="masthead" style = "background-color:#FAFAFA;">
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
                                <img style="margin-left: 100px; margin-bottom:10px; border-radius: 30%;" src="assets/main_img/free-icon-fruits-3524528.png" >
                            </div>
                            <a href="object.jsp" class="mini-category">소분해요</a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex">
                                <img style="margin-left: 100px; margin-bottom:10px; border-radius: 30%;" src="assets/main_img/party.png" >
                            </div>
                            <a href="peoplecategory.jsp" class="mini-category"s>취미공유</a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                            <div class="features-icons-icon d-flex">
                                <img style="margin-left: 115px; margin-bottom:10px;" src="assets/main_img/resume.png" >
                            </div>
                            <a href="reviewpost.jsp" class="mini-category">나눔후기</a>
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
                        <h2 class ="font-paybooc"> 소분 할 사람 ?</h2>
                        <p class="lead mb-0" style="margin-top:20px";>물건이 남아서 힘드셨다구요?</p>
                        <p class="lead mb-0">바나다에서 해결하세요.</p>
                    </div>
                </div>
                <div class="row g-0" >
                    <div class="col-lg-6 text-white showcase-img" style="background-image: url('assets/main_img/bg-showcase-2.jpg')"></div>
                    <div class="col-lg-6 my-auto showcase-text">
                        <h2 class ="font-paybooc">취미 공유는 어때요 ?</h2>
                        <p class="lead mb-0" style="margin-top:20px";>혼자서는 심심하겠지만</p>
                        <p class="lead mb-0">둘이서 하면 즐거움도 2배 !</p>
                    </div>
                </div>
                <div class="row g-0">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('assets/main_img/bg-showcase-3.jpg')"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        <h2 class ="font-paybooc">재능 나눔 할 사람 ?</h2>
                        <p class="lead mb-0" style="margin-top:20px";>능력을 숨기고 사시느라 힘드셨죠?</p>
                        <p class="lead mb-0">이제 숨기지 말고 보여주세요 !</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonials-->
        <section class="testimonials text-center bg-light">
            
            
            <c:choose>
               <c:when test="${empty loginUser}">
               <div class="container">
                <h2 class="mb-5 font-paybooc">좋아요 Best 3</h2>
               

                <div class="row">
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="http://img.danawa.com/prod_img/500000/653/800/img/6800653_1.jpg?shrink=500:500&_v=20211026150548" alt="..." />
                            <h5>1위</h5>
                            <p class="font-weight-light mb-0">대용량 윙봉</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="image/world.png" alt="..." />
                            <h5>2위</h5>
                            <p class="font-weight-light mb-0">세계맥주</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="image/original.png" alt="..." />
                            <h5>3위</h5>
                            <p class="font-weight-light mb-0">크리스피 도넛</p>
                        </div>
                    </div>
                </div>
              </div>
            </section>
         
         </c:when>
               <c:otherwise>
            
            
         
         
         	<div class="container">
                   
                   <h2 class="mb-5 font-paybooc">${loginUser.user_nick}님에게 추천드려요</h2><br><h2 class="mb-5 font-paybooc">Best3</h2>
               
                <div class="row">
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="image/cola.png" alt="..." />
                            <h5>추천 1</h5>
                            <p class="font-weight-light mb-0">"콜라..같이사실분?"</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="image/butter.png" alt="..." />
                            <h5>추천 2</h5>
                            <p class="font-weight-light mb-0">"버터가 남았어요!"</p>
                        </div>
                    </div> 
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="image/flower.png" alt="..." />
                            <h5>추천 3</h5>
                            <p class="font-weight-light mb-0">"꽃 같이 사실분?"</p>
                        </div>
                    </div>
                </div>
              </div>
            </section>
         

               </c:otherwise>
            </c:choose>
         

         
         
        <!-- Footer-->
        <footer class="footer " style="height:150px;"">
                <div class="container col-lg-6 h-100 text-center text-lg-start my-auto">
                        <ul class="list-inline mb-2" style="color:black; text-decoration:none;">
                            <li class="list-inline-item"><a href="#!" style="color:black; text-decoration:none;">About</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!" style="color:black; text-decoration:none;">Contact</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!" style="color:black; text-decoration:none;">Terms of Use</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!" style="color:black; text-decoration:none;">Privacy Policy</a></li>
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
        
        
        
                    <!-- 시계-->
   <c:choose>
     <c:when test="${empty loginUser}">
         </c:when>
          <c:otherwise>   
        <div class="quickmenu" style="top:750px; background:white; border-radius: 25px; border:3px solid #ffc107;"> 
       			<div style="width: 90%;  margin: 10px auto; display: flex;"> 
       			 <button type="button" onclick="location.href='chat.jsp';" style="font-family:ibm; border-radius: 25px; border: 3px solid #ffc107; flex:1; margin: 0 5px; width:30%; box-sizing: border-box;">
          			채팅
          		</button>   
          		<button type="button" onclick="location.href='game.jsp';" style="font-family:ibm; border-radius: 25px; border: 3px solid #ffc107;flex:1; margin:0 5px; width:30%; box-sizing: border-box;" >
          			결제
          		</button>
          		</div>
          		<c:if test="${loginUser.user_nick eq nick}">
        <div style="font-family:ibm;">약속시간</div>
		<div id="countdown" style="font-family:ibm;"></div>
		<div style="font-family:ibm">남았습니다.</div>
				</c:if>
        <script src = "https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script type="text/javascript">

CountDownTimer('${MT}', 'countdown');

function CountDownTimer(dt, id) {

    var end = new Date(dt);



    var _second = 1000;

    var _minute = _second * 60;

    var _hour = _minute * 60;

    var _day = _hour * 24;

    var timer;



    function showRemaining() {

        var now = new Date();

        var distance = end - now;



        // 시간 종료 시 뜨는 문구

        if (distance < 0) {

            clearInterval(timer);

            document.getElementById(id).innerHTML = '약속 시간입니다. 약속 장소로 나가!';

            return;

        }

        var days = Math.floor(distance / _day);

        var hours = Math.floor((distance % _day) / _hour);

        var minutes = Math.floor((distance % _hour) / _minute);

        var seconds = Math.floor((distance % _minute) / _second);



        document.getElementById(id).innerHTML = days + '일 ';

        document.getElementById(id).innerHTML += hours + '시간 ';

        document.getElementById(id).innerHTML += minutes + '분 ';

        document.getElementById(id).innerHTML += seconds + '초';

    }

    timer = setInterval(showRemaining, 1000);

}
</script>
        
        <script>
        $(document).ready(function(){ 
           var currentPosition = parseInt($(".quickmenu").css("top")); 
           $(window).scroll(function() { 
               var position = $(window).scrollTop(); 
               $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},1000); 
               }); 
           });
        </script>
        </c:otherwise>
      </c:choose>
    </body>
</html>
