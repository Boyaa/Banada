<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src = "jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="assets/objectpostwrite.css">
    <title>stickcode_summernote</title>
  </head>
<body>
    <!-- nav -->
    <div class = "nav">
        <div class = "logo">
          <a href ="main.jsp">바나다</a>
        </div>
        <div class ="nav_but">
            <a href ="object.jsp">소분해요</a>
            <a href ="peoplecategory.jsp">재능나눔</a>
            <a href ="post.jsp">자유게시판</a>
            <a href ="" style ="margin-right:200px">로그아웃</a>
        </div>
    </div>

    <section class="title-section">
        <p style="font-family: ibm; font-size: 60px;  margin: 20px; ">게시판 작성</p>
    </section>

    <form class="container" action="">
        <div id="product" style = "display:flex;">
            <div id = "box" style="height: 100px; padding-top:65px;">상품이미지</div>
            <div id = "right-box">
                <input type="text" name="product-write" style="width:200px;height:20px;font-size:20px;"/>
                </div>
        </div>
        <div id="product-write" style = "display:flex; ">
            <div id = "box">제목</div>
            <div id = "right-box">
            <input type="text" name="product-write" style="width:200px;height:20px;font-size:20px;"/>
            </div>
        </div>
        <div id="category" style = "display:flex;">
            <div id = "box">카테고리</div>
            <div id = "right-box">
            <input type="radio" name ="option" value="life"/>생필품
            <input type="radio" name ="option" value="eat"/>식료품
            </div>
        </div>
        <div id="name" style = "display:flex;">
            <div id = "box">상품명</div>
            <div id = "right-box">
            <input type="text" name="price" style="width:200px;height:20px;font-size:20px;"/>
            </div>
        </div>
        <div id="content" style = "display:flex;">
            <div id = "box" style="margin-right:30px; height: 100px; padding-top:68px;">설명</div>
            <div id = "right box" >
                <textarea id="write" name="write"></textarea>
            </div>
        </div>
        <div id="price" style = "display:flex;">
            <div id="box">가격</div>
            <div id = "right-box">
            <input type="text" name="number" style="width:100px;height:20px;font-size:20px;"/> 원
            </div>
        </div>
        <div id="option" style = "display:flex;">
            <div id = "box">결제옵션</div>
            <div id = "right-box">
            <input type="radio" name ="option" value="together"/>같이내기
            <input type="radio" name ="option" value="solo"/>몰아주기
            <input type="radio" name ="option" value="mannam"/>만나서결정
            </div>
        </div>

        <div id="select">
            <input type="button" value="작성완료" onclick="alert('작성완료!'); location.href='object.jsp'"/>
        </div>
        
    </form>


     <!-- footer -->
     <footer class = "footer">
        <ul class = "list">
            <li class = "list-object">
                <a href = "#">About</a>
            </li>
            <li class = "list-object">⋅</li>
            <li class = "list-object">
                <a href = "#">Contact</a>
            </li>
            <li class = "list-object">⋅</li>
            <li class = "list-object">
                <a href = "#">Terms of Use</a>
            </li>
            <li class = "list-object">⋅</li>
            <li class = "list-object">
                <a href = "#">Privacy Policy</a>
            </li>
        </ul>
        <br>
        <p>© Your Website 2022. Made by H5</p>
    </footer>
   

</body>
</html>