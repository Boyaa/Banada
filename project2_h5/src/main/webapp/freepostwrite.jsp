<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src = "jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="assets/freepostwrite.css">
    <title>stickcode_summernote</title>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    
    
    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
  </head>
<body>
    <!-- nav -->
    <div class = "nav">
        <div class = "logo" >
            <a href ="main.jsp">바나다</a>
        </div>
   <div class ="nav_but" style ="display: flex; justify-content: space-between;">
			<c:choose>
               <c:when test="${empty loginUser}">
				<a href ="object.jsp">소분해요</a>
				<a href ="peoplecategory.jsp">재능나눔</a>
				<a href ="post.jsp">자유게시판</a>
                <a href="login.jsp">로그인</a>
                <a href="join.jsp" >회원가입</a>
               </c:when>
             
               <c:otherwise>
				<a href ="object.jsp">소분해요</a>
				<a href ="peoplecategory.jsp">재능나눔</a>
				<a href ="post.jsp">자유게시판</a>
				<a href ="LogoutCon" style ="margin-right:200px">로그아웃</a>
               </c:otherwise>
            </c:choose>      
	
        </div>
    </div>

    <section class="title-section">
        <p style="font-family: ibm; font-size: 60px; padding-bottom:20px;  border-bottom: 1px solid #eaeaea;">게시판 작성</p>
    </section>


    
    <form id="articleForm" role="form" action="" method="">
        <br style="clear: both; margin:auto;">
        <div class="form-main" style="margin:auto;">        
        	<section style="text-align: center; margin-bottom: 20px;">
        		<div class="form-title">
        		<input type="text" name="formname" placeholder="제목을 입력하세요" size=70 >
        		</div>  
    		</section>
        	<textarea name="BOARD_CONTENT" id="board_content" ></textarea>       	
        	<div style="display:flex; margin:auto; width:700px;">
                <div style=" width: 150px; height: 100px; margin:auto;">
                    <span style="font-family:ibm">파일 이름 :</span>
                    <span id="filename_id"></span>
                </div>
                <div style=" width: 300px; height: 100px; margin:auto; display:flex;">
                    <span style="font-family:ibm">사진 확인 : </span>
                    <img class="editor-contents" id="image" style="width: 150px; height: 150px; margin-left:10px;" src="./upload/1.jpg"> 
                </div>
        		<input type="button" id="submit" name="submit"  class="pull-right" value="등록" 
                style="margin:0 auto" onclick="alert('작성완료!'); location.href='post.jsp'"/>
			</div>
		</div>
	</form>
        
      <div class="editor-contents"></div>
    
    
      <script >
        $(document).ready(function() {
        $('#summernote').summernote();
       });
   </script>
       
  <script>
  
   function sendFile(file, el) {
      console.log(file);
       console.log(el);
 
       
       var form_data = new FormData();
       form_data.append('file', file);
       
       $.ajax({
          data : form_data,
          type : "post",
          url : 'img',
          cache : false,
          contentType : false,
          enctype : "multipart/form-data",
          processData : false,
          success : function(img_path) {
             
             console.log("path : "+img_path);
             
             let img_name = file.name;
             console.log("name : "+img_name);
             let test = "image\\"+img_name;
               $("#filename_id").html(img_name);
             console.log(test);
             
             setTimeout(() => $("#image").attr("src",test), 5000);
             
             
             
          },
          error:function(){
             alert("실패");
          }
       }); 
    }
   
   $('#summernote').summernote(
           {
              callbacks : {
                 onImageUpload : function(files) {
                    //        ，   formData  ，     ...      IE    
                    var formData = new FormData();
                    formData.append('file', files[0]);
                    $.ajax({
                       url : 'img',//        
                       type : 'POST',
                       data : formData,
                       processData : false,
                       contentType : false,
                       success : function(data) {
                          $('#summernote').summernote(
                                'insertImage', data, 'img');
                       }
                    });
                 }
              }
           });

     $(function() {
        $('#board_content').summernote({
           placeholder : '최대 500자 작성 가능합니다.',
           height : 300,
           width : 700,
           lang : 'ko-KR',
           callbacks : {
              onImageUpload : function(files, editor, welEditable) {
                 for (var i = files.length - 1; i >= 0; i--) {
                    sendFile(files[i], this);
                 }
              }
           }
        });
     });
     $('#summernote')
           .summernote(
                 {
                	width: 100,
                    height : 300, // 에디터 높이
                    minHeight : null, // 최소 높이
                    maxHeight : null, // 최대 높이
                    focus : true, // 에디터 로딩후 포커스를 맞출지 여부
                    lang : "ko-KR", // 한글 설정
                    placeholder : '최대 2048자까지 쓸 수 있습니다', //placeholder 설정
                    callbacks : { //여기 부분이 이미지를 첨부하는 부분
                       onImageUpload : function(files) {
                          uploadSummernoteImageFile(files[0],
                                this);
                       },
                       onPaste : function(e) {
                          var clipboardData = e.originalEvent.clipboardData;
                          if (clipboardData
                                && clipboardData.items
                                && clipboardData.items.length) {
                             var item = clipboardData.items[0];
                             if (item.kind === 'file'
                                   && item.type
                                         .indexOf('image/') !== -1) {
                                e.preventDefault();
                             }
                          }
                       }
                    }
                 });

     /**
      * 이미지 파일 업로드
      */
     function uploadSummernoteImageFile(file, editor) {
        data = new FormData();
        data.append("file", file);
        $.ajax({
           data : data,
           type : "POST",
           url : "/uploadSummernoteImageFile",
           contentType : false,
           processData : false,
           success : function(data) {
              //항상 업로드된 파일의 url이 있어야 한다.
              $(editor).summernote('insertImage', data.url);
           }
        });
     }
   
    </script>
    
    <!-- footer -->
    <footer class = "footer" style="margin-top:70px">
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