<%@page import="com.smhrd.domain.Comm"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
BoardDAO dao = new BoardDAO();

List<Comm> commList = (List<Comm>) dao.selectAllComm(1); 

pageContext.setAttribute("list", commList); 

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/freepostview.css">
    <title>Document</title>
    
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
    <alticle >
        <section class="pro" style="border-top:2px solid #eaeaea; ">
            <div class="alticle-image">
                <img src="assets/post_image/hruru.png" style="width:50px; height:50px; -webkit-border-radius:50%; margin-right:10px"  >
            </div>
            <div style="width:250px; margin-right:380px;">
                <p id = "id">글쓴이</p>
                <p id = "live">광주광역시 남구 봉선동</p>
            </div>
            
        </section>

        <section class = "article-description">
            <h1 id="content">제목칸</h1>
            <div id ="article-detail">
            <p>안녕하세요</p>
            <p>만나서 반가워요</p>
            <p>다음에 만나요</p>
            </div>
        </section>
        
		
        <!--댓글기능-->
        <div style="max-width:700px; margin:auto;margin-bottom:50px">
        <a href="reviewpost.jsp" style="float:right; color:black; text-decoration:none; font-family:ibm">후기 더 보기</a>
        </div>
        
        <section class="comment-on">
            <textarea id="commvalue" placeholder=" 댓글을 입력하세요.">
            	
            </textarea>
            <div class="con">
                <button type = "button" class= "writeCom" style="margin-top:10px; cursor: pointer;  float: right; background:white;">등록</button>
            </div>
        
        <div id="comm_content" style="margin-top:50px; border-top: 1px solid #eaeaea;" >
				<c:forEach var="comm" items="${list }"> 
				<p style="border: 1px solid #eaeaea; padding:5px;"><c:out value="${comm.comm_content }"/>
				<button style="float:right; border:none; background-color:white; cursor: pointer;" class = 'removeCom' id = '${comm.comm_seq}'>X</button>
				</c:forEach>
		</div>
        
        </section>
		
    </alticle>
        
    <script>
		//댓글 작성하는거

		$('.writeCom').click(function() { //클래스가 wirtecom인 버튼을 클릭을했을때  댓글을 작성할겁니다
							var com = $('#commvalue').val() //이때 사용자가 어떤값을 입력을했는지 가지고오는 문장 ( 사용자가 입력한 댓글 가지고 오기)

							//db서버에다가 등록을 할 수있도록 비동기통신 작성
							$.ajax({ //어떤게시물에서 작성됫는지랑 작성된댓글 보내주기
								data : {f_seq : 1,"comm_content" : com}, //보내줄 데이터 정의 ( 사용자가 입력한 댓글, 어떤게시물에서작성되었는지 까지 같이 보내기)
								url : "AddCommentCon", //어디로 요청하는지  (요청하는 addcommentcon 작성하러가기 )
								method : "POST", //보내느 방식
								success : function(data) { // 성공시 작성한 댓글도 밑에 보여질수있도록 작성 / data : 서버가 넘겨준 현재 추가된 댓글의 시퀀스번호
											$('#comm_content').prepend('<p>'+ com+ '<button class="removeCom" id='+data+'>삭제</button></p>')
											$('#commvalue').val("") //댓글창은 비워주기
										},
										error : function() {
											alert("통신실패!")
										}
									})
						})

		//댓글 삭제하는거 

		$('#comm_content').on("click", ".removeCom", function() {
			let comm_seq = $(this).attr('id');
			console.log(comm_seq)
			$.ajax({
				data : {
					comm_seq : comm_seq
				},
				url : "DeleteCommentCon",
				method : "post",
				context : this,
				success : function() {
					$(this).parent().remove()
				},
				error : function() {
					alert("통신실패!")
				}
			})
		})

		
	</script>
    

   

    <footer class = "footer">
        <ul class = "list">
            <li class = "list-object">
                <a href = "#">About</a>            </li>
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