<%@page import="com.smhrd.domain.Product"%>
<%@page import="com.smhrd.domain.ProductDAO"%>
<%@page import="java.math.BigDecimal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src = "./js/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="assets/objectpostwrite.css">
    <title>stickcode_summernote</title>
  </head>
<body>


    <!-- nav -->
    <div class = "nav">
        <div class = "logo">
          <a href ="main.jsp">바나다</a>
        </div>
        <div class ="nav_but" style ="display: flex; justify-content: space-between;">
			<c:choose>
               <c:when test="${empty loginUser}">
				<a href ="object.jsp">소분해요</a>
				<a href ="peoplecategory.jsp">재능나눔</a>
				<a href ="reviewpost.jsp">나눔후기</a>
                <a href="login.jsp">로그인</a>
                <a href="join.jsp" >회원가입</a>
               </c:when>
             
               <c:otherwise>
				<a href ="object.jsp">소분해요</a>
				<a href ="peoplecategory.jsp">재능나눔</a>
				<a href ="reviewpost.jsp">나눔후기</a>
				<a href ="LogoutCon" style ="margin-right:200px">로그아웃</a>
               </c:otherwise>
               </c:choose>  
        </div>
    </div>

    <section class="title-section">
        <p style="font-family: ibm; font-size: 60px;  margin: 20px; ">게시판 작성</p>
    </section>
	
    <form class="container" action="ProductCon" method="post" enctype="multipart/form-data"> <!--  여기서 productCon으로 보내는데 밑에 JS로 또 productCon으로 보내야 할까용? -->
  
        <div id="product-write" style = "display:flex; ">
            <div id = "box">제목</div>
            <div id = "right-box">
            <input type="text" name="pd_title" style="width:200px;height:20px;font-size:20px;"/>
            </div>
        </div>
        <div id="category" style = "display:flex;">
            <div id = "box">카테고리</div>
            <div id = "right-box">
            <input type="radio" name ="pd_cate" value="life"/>생필품
            <input type="radio" name ="pd_cate" value="eat"/>식료품
            </div>
        </div>
        <div id="name" style = "display:flex;">
            <div id = "box">상품명</div>
            <div id = "right-box">
            <input type="text" name="pd_name" style="width:200px;height:20px;font-size:20px;"/>
            </div>
        </div>
        <div id="content" style ="display:flex;">
            <div id = "box" style="margin-right:30px; height: 100px; padding-top:68px;">설명</div>
            <div id = "right box" >
                <textarea id="write" name="pd_content"></textarea>
            </div>
        </div>
        <div id="price" style ="display:flex;">
            <div id="box">가격</div>
            <div id = "right-box">
            <input type="text" name="pd_price" style="width:100px;height:20px;font-size:20px;"/> 원
            </div>
        </div>
        <div id="option" style = "display:flex;">
            <div id = "box">결제옵션</div>
            <div id = "right-box">
            <input type="radio" name ="pd_option" value="together"/>같이내기
            <input type="radio" name ="pd_option" value="solo"/>몰아주기
            <input type="radio" name ="pd_option" value="mannam"/>만나서결정
            </div>
        </div>
              <div id="product" style = "display:flex;">
            <div id = "box" style="width:150px; height: 100px; padding-top:65px;">
            	상품이미지
            </div>
            <div style="width: 250px; margin-left:20px;">
            <input type="file" name="uploadImg" value="uploadImg" id="uploadFile" onchange="sendFile()" /> 
            </div>
          <!-- <div style="width: 100px;">
            <input type="submit" value="업로드" id="uploadImg" style="height:30px; "> 
            </div> -->  
            <div style=" width: 183px; height: 100px; margin:auto; margin-top:20px;">
            	<div style="font-family:ibms; font-size:13px;">
                	미리보기
                </div>
                <img class="editor-contents" id="photo" style="width: 100px; height: 100px;" src="image/.jpg"> <!-- src=' '에 뭘 넣어야하나   -->	
            </div>     
        </div>

        <div id="select">
        <!-- location.href='object.jsp -->
            <input type="submit" value="작성완료" onclick="alert('작성완료!');"/>
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
    
    <script>
    
    //$('#uploadFile').on("click", 
    		 // 얘가 작동 안 되고 있는 것 같습니다 (console.log 찍어도 암것도 안 나와요)
    function sendFile() {
      	
   		let data2=$("#uploadFile").val();
    	console.log("test123");
    	let test2 = data2.replace('C:\\fakepath\\' , "");
    	
    	console.log(data2);
        console.log(test2);
  
  /*       var form_data = new FormData();
        form_data.append('file', file); */
        
        
        let test="C:\\Users\\smhrd\\git\\project2_h5\\project2_h5\\src\\main\\webapp\\image";
        let test3 = test+test2;
        console.log(test3);
        
      
        
 		$.ajax({
			 	
	            type : "post",
	            url : 'imgCon',
	            cache : false,
	            contentType : false,
	            processData : false,
	            success : function(img_path) {
	               
	               console.log("path : "+img_path);
	               
	               //let img_name = file.name;
	               //console.log("name : "+img_name);
	               let test = "image\\"+test2;
	               console.log("경로 나와라"+test);
	        	   // $("#filename_id").html(img_name);
	               console.log(test);
	               
	               setTimeout(() => $("#photo").attr("src",test), 5000);
	               
	   
	               
	            },
	            error:function(){
	               alert("실패");
	            }
	         }); 
    }
   // });
	    
     
     
  
    // $('#uploadFile').val() 
   
    </script>
    
   

</body>
</html>