<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보기</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom_inquiry_detail.css">

<script type="text/javascript">
		
		
		</script>
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

	<!-- 상세보기 -->
	
	<h2>${ board_content.b_name } 님의 게시글</h2>
	
	<div id="frame">
	
	<ul>
		<li id="category">카테고리</li>
		<li id="category_cont">${ board_content.category }</li>
	</ul>
	
	<ul>
		<li id="id">이름</li>
		<li id="id_cont">${ board_content.b_name }</li>
	</ul>
	
	<ul>
		<li id="title">제목</li>
		<li id="title_cont">${ board_content.b_title }</li>
	</ul>
	
	<ul>
		<li id="content">내용</li>
		<li id="content_cont">${ board_content.b_content }</li>
	</ul>
	
	</div>
	
	<input id="bottom_btn" type="button" value="목록보기"
				onclick="location.href='select.do'">


</body>
</html>

















