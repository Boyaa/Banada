# 서비스명(팀명: h5 )
![image](https://user-images.githubusercontent.com/104408835/170642816-90164c0b-bf5a-4447-8fe3-501554076e9c.png)

## 1. 프로젝트명
* 지역기반으로한 물건 소분 및 취미 나누기 서비스
* 서비스설명: 그 동안 남아서 버리게 된 상품과 포기했던 취미 생활을 내 주변에 있는 사람과 같이 나누고 즐길 수 있는 1인가구를 위한 서비스입니다.

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
![image](https://user-images.githubusercontent.com/104408835/170645435-25218319-3d37-4aaa-9404-60cc2d012a5f.png)
#### 서비스 흐름도(웹 화면설계서)
![image](https://user-images.githubusercontent.com/104408835/170645174-0056bb01-c27e-400a-8f8b-64f2eac20236.png)
#### ER 다이어그램
![image](https://user-images.githubusercontent.com/104408835/170645558-9d0269d8-8628-4c66-883b-67dda823ec17.png)

## 6 SW 동작 화면

### 메인페이지/로그인/회원가입
![image](https://user-images.githubusercontent.com/104408835/170654096-26729d9f-a49a-444e-93f5-967eee135251.png)

### 지도기능
![image](https://user-images.githubusercontent.com/104408835/170654122-5fc6f0b1-5f00-4834-9fcc-9701f3773b5a.png)

### 게시글목록
![image](https://user-images.githubusercontent.com/104408835/170654182-e6cbb12d-5647-406c-a6c4-7e417bc2bb3c.png)

### 게시글 작성 및 댓글작성
![image](https://user-images.githubusercontent.com/104408835/170654189-3cd42664-e765-4093-8748-5f482fcd0a2a.png)

### 채팅 및 안심등록
![image](https://user-images.githubusercontent.com/104408835/170653534-56dc650d-1373-4255-93ec-97f90f38b4ad.png)

### 약속 알림 타이머기능
![image](https://user-images.githubusercontent.com/104408835/170653540-5b5b58ae-b75d-47ea-b429-84b709131039.png)

### 후기 및 매너등급
![image](https://user-images.githubusercontent.com/104408835/170654193-e084bd17-6ad1-4932-a912-fd632b6ba879.png)

## 7 제작 일정
![image](https://user-images.githubusercontent.com/104408835/170643486-7fbd60cb-f5ba-4b66-b81a-3ae0f9b29904.png)

## 8 팀원 단위 업무 분장 및 결과표
![image](https://user-images.githubusercontent.com/104408835/170645342-2de2d43b-6585-48ac-b374-f77bdfa035e2.png)

## 9 트러블슈팅

* 문제1<br>
 매너등급을 정하기 위해서 기존에는 평점테이블에 G_grade 컬럼의 점수를 조정했는데 , 이렇게 할 경우는 그 거래의 시퀀스 번호에만 해당이되어서
 그 유저의 점수가 누적되지 않는 문제가 있었다. 이에 대한 해결방안으로 유저테이블에 user_manner 컬럼을 새로 추가해서 그 해당 유저의 점수를 계속 누적할 수 있도록 변경했다.  
 
* 문제2<br>
 모든 팀원들이 Github 사용에 익숙치 않아서 충돌이 계속 생겼었다. 특히 Servlet클래스를 만들면 web.xml파일에 mapping값이 자동으로 추가되어 여러명이 동시에 다른 파일을 만지더라도
 같은 web.xml파일이 변경되어서 충돌이 일어났다. 그래서 이를 방지하기 위해서 새로운 규칙들을 만들었다. <br>
 -GitHub 규칙- <br>
  -push하기전에 단톡에 꼭 말하기 ! push하기전에 꼭 commit하기 ! <br>
  -Servlet 만들때 말하고 만들고 바로 commit/ push하고 작업하는사람들 다 중단하고 pull받고 작업 진행하기 <br>
  -XML파일 dependency 추가할 때도 마찬가지 !!

