# 서비스명(팀명: MATCH&FIX)
![image](https://user-images.githubusercontent.com/104408835/170642816-90164c0b-bf5a-4447-8fe3-501554076e9c.png)

## 1. 프로젝트명
* 지역기반으로한 물건 소분 및 취미 나누기 서비스
* 서비스설명: 

## 2. 주요기능
* 지도에 사용자위치, 상품목록 마커 생성
* 게시물 작성 및 댓글 작성
* 채팅 및 안심 서비스 등록
* 약속 시간 타이머 기능
* 후기 등록 및 점수별 매너 등급 부여

## 3. 개발환경
|구분|내용|
|------|---|
|사용언어|Java, HTML, CSS, JavaScript|
|사용한 라이브러리| Bootstrap / Kakao Map /  jQuery / MyBatis etc...|
|개발도구|Eclipse /  VisualStudioCode  /  etc...|
|서버환경|tomcat 9.0|
|데이터베이스| oracle 11g / etc..|

## 4. 아키텍처(구조)
![서비스 아키텍처](https://user-images.githubusercontent.com/104408835/170643488-a5c0b008-c4e3-4d0f-8b6e-d175bac5bd2b.png)


## 5. 기능 흐름도
### 서비스 흐름도(유스케이스)
#### SW 유스케이스
![image](https://user-images.githubusercontent.com/99248886/166611717-6a761c62-393f-444b-9945-34d5533b50dc.png)
#### 서비스 흐름도(웹 화면설계서)
![image](https://user-images.githubusercontent.com/99248886/166611795-b01ddc4f-8236-4955-ae77-be4b576025d7.png)
#### ER 다이어그램
![image](https://user-images.githubusercontent.com/25995055/169925318-102784c2-893f-4fd7-bec9-a54c44b669d4.png)

## 6 SW 동작 화면

### 로그인/회원가입/회원괸리/회원수정/회원탈퇴
![image](https://user-images.githubusercontent.com/99248886/166612486-a17733a6-a3bb-4fd5-873f-57020ab80a16.png)

### 옷 정보/코디 추천(날씨, 팁, 오늘의 코디, 참고할 수 있는 코디)
![image](https://user-images.githubusercontent.com/99248886/166612875-aee9b25d-00ff-4c07-a21f-975ccd8e6a0f.png)

### 일정/고객센터
![image](https://user-images.githubusercontent.com/99248886/166612374-a2f6d85b-501d-4a51-a0d1-8cde0c07ebf2.png)

## 7 제작 일정
![image](https://user-images.githubusercontent.com/104408835/170643486-7fbd60cb-f5ba-4b66-b81a-3ae0f9b29904.png)

## 8 팀원 단위 업무 분장 및 결과표
![image](https://user-images.githubusercontent.com/99248886/166613023-0cd70ef4-9f0d-4f6c-b8b1-7395e67684a1.png)

## 9 트러블슈팅

* 문제1<br>
 매너등급을 정하기 위해서 기존에는 평점테이블에 G_grade 컬럼의 점수를 조정했는데 , 이렇게 할 경우는 그 거래의 시퀀스 번호에만 해당이되어서
 그 유저의 점수가 누적되지 않는 문제가 있었다. 이에 대한 해결방안으로 유저테이블에 user_manner 컬럼을 새로 추가해서 그 해당 유저의 점수를 계속 누적할 수 있도록 변경했다.  
 
* 문제2<br>
 모든 팀원들이 Github 사용에 익숙치 않아서 충돌이 계속 생겼었다. 특히 Servlet클래스를 만들면 web.xml파일에 mapping값이 자동으로 추가되어 여러명이 동시에 다른 파일을 만지더라도
 같은 web.xml파일이 변경되어서 충돌이 일어났다. 그래서 이를 방지하기 위해서 새로운 규칙들을 만들었다. 
 -GitHub 규칙-
  -push하기전에 단톡에 꼭 말하기 ! push하기전에 꼭 commit하기 !
  -Servlet 만들때 말하고 만들고 바로 commit/ push하고 작업하는사람들 다 중단하고 pull받고 작업 진행하기 
  -XML파일 dependency 추가할 때도 마찬가지 !!

