<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AZ Shoes</title>

<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/main_style.css">





</head>
<body>
	<header>
            <div class="box">
                <div id="logo"><a href="main.do">AZ Shoes</a></div>
                <nav id="menu">
                    <ul id="top_menu">
                    
                    	<c:if test="${ empty memberVO }">
                        	<li><a href="login.do">로그인</a></li>
                        </c:if>
                        
                        <c:if test="${ not empty memberVO }">
                        	<li><a href="logout.do">로그아웃</a></li>
                        </c:if>
                        
                        <li><a href="register.do">회원가입</a></li>
                        <li><a href="select.do">고객센터</a></li>
                    </ul>

                    <ul id="main_menu">
                        <li><a href="men.do">MEN</a></li>
                        <li><a href="women.do">WOMAN</a></li>
                    </ul>
                </nav>
            </div>
            
        </header>
        
        <section id="main_image">
            <a href="main_jordan_gray.do"><img src="${ pageContext.request.contextPath }/resources/img/main_image.png"/></a>
        </section>
        
        <div id="main2">
            <h3 class="title1">신상품</h3>
                
            <div class="item1">
                <li><a href="main_shoes1.do"><img src="${ pageContext.request.contextPath }/resources/img/shoes1.png"/></a></li>
                <li class="subject">나이키<li>
                <li>아동 신발<br><br>88,530원</li>
            </div>
                    
            <div class="item1">
                <li><a href="main_shoes2.do"><img src="${ pageContext.request.contextPath }/resources/img/shoes2.png"/></a></li>
                <li class="subject">나이키<li>
                <li>조던 1 로우 ALT 베이비 아동 신발<br><br>73,300원</li>
            </div>
            
            <div class="item1">
                <li><a href="main_shoes3.do"><img src="${ pageContext.request.contextPath }/resources/img/shoes3.png"/></a></li>
                <li class="subject">다은 스토어</li>
                <li>클래식 스트랩 컴포트 진피 보드화<br><br>100,000원</li>
            </div>
            
        </div>
        
        <footer>
            <div class="box">
                    
                <div class="items">
                    <h3>문의 전화</h3>
                    <ul>
                        <li class="phone">02) 123-1234</li>
                        <li>10:00 ~ 18:00 (점심시간 12:00 ~ 13:00)</li>
                    </ul>
                </div>
                    
                <div class="items">
                    <h3>AZ Shoes</h3>
                    <ul>
                        <li>주소: <a id="address" href="custom_service.do">서울특별시 마포구 서강로 136</a></li>
                        <li>전화: 02) 123-1234</li>
                        <li>팩스: 02) 123-1234</li>
                        <li>이메일: abc@naver.com</li>
                    </ul>
                </div>
                    
                <div class="items">
                    <h3>입금 정보</h3>
                    <ul>
                        <li>국민은행 123-123-123456</li>
                        <li>김철수</li>
                    </ul>
                </div>
                
            </div>
        </footer>
        
</body>

















