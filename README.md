# Exercise Record
 
## 과제의 개요
운동 기록 하기 및 보기

## 작업 리스트 항목
Unit Test (data, domain class)

영상 재생

로그인 팝업

운동 내용 가져오기 

## API 설계
	https://{apikey}.mockapi.io/api/v1/exercises 
 
    GET request query &page &limit
    response [{"createdAt":"2023-09-23T09:01:17.218Z","content":"fighting","type":"ludge","id":"1"}
 
    POST request application/json  
       { "type": ludge ,
         "content": "fighting",
         "createdAt": "2023-09-23T09:01:17.218Z"}
       
## 개발 환경

### FE

Flutter (Channel stable, 3.10.6)

### BE

mockapi.io

## 프로젝트 빌드 & 테스트 & 실행 방법

### Build
flutter run 

### Test
flutter test

## 미해결 이슈 정리

운동타입 팝업메뉴 화면 

운동기록하기

운동기록보기 - 이어서 가져오기
	
