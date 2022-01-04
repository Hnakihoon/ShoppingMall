<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom_search.css">

</head>
<body>
	
	<header>
		<div class="box">
			<div id="logo">
				<a href="main.do">AZ Shoes</a>
			</div>
			<nav id="menu">
				<ul id="top_menu">
					<li><a href="login.do">로그인</a></li>
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
	
	<!-- 조회 -->
	
	<h2>검색 결과</h2>
	
	<div id="frame">

		<ul id="ul_num">
		<li id="num">번호</li>
		<c:forEach var="vo" items="${ list }">
			
			<li id="num_cont">${vo.idx}</li>
				
		</c:forEach>
		</ul>
		
		<ul id="ul_title">
		<li id="title">제목</li>
		<c:forEach var="vo" items="${ list }">
			
			<li id="title_cont"><a id="title_click" href="info.do?idx=${vo.idx}">${ vo.b_title }</a></li>
				
		</c:forEach>
		</ul>
		
		<ul id="ul_name">
		<li id="name">이름</li>
		<c:forEach var="vo" items="${ list }">
			
			<li id="name_cont">${ vo.b_name }</li>
				
		</c:forEach>
		</ul>

	</div>
	
	<input type="button" id="cancel" value="목록보기"
               onclick="location.href='select.do'">
	
</body>
</html>



















