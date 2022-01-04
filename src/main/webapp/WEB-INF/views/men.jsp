<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Men</title>

<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/men_women_style.css">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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


	<div id="main">
		<h3 class="title">인기상품</h3>

		<div class="item1">
			<li><a href="men_shoes1.do"><img
					src="${ pageContext.request.contextPath }/resources/img/men/shoes1.jpg" /></a></li>
			<li class="subject">New Balance
			<li>
			<li>New Balance 992 Made in USA Grey - D Standard<br>
			<br>392,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="men_shoes2.do"><img
					src="${ pageContext.request.contextPath }/resources/img/men/shoes2.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>Nike Dunk Low Retro Black<br>
			<br>319,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="men_shoes3.do"><img
					src="${ pageContext.request.contextPath }/resources/img/men/shoes3.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>Nike x Sacai x Fragment LDWaffle Light Smoke Grey<br>
			<br>515,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="men_shoes4.do"><img
					src="${ pageContext.request.contextPath }/resources/img/men/shoes4.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>Nike Air Force 1 '07 Low White<br>
			<br>135,000원
			</li>
		</div>
	</div>


	<div id="main">
		<h3 class="title">추천상품</h3>
		<div class="item1">
			<li><a href="men_shoes5.do"><img
					src="${ pageContext.request.contextPath }/resources/img/men/shoes5.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>Jordan 1 Low OG Starfish<br>
			<br>312,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="men_shoes6.do"><img
					src="${ pageContext.request.contextPath }/resources/img/men/shoes6.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>Nike Air Max 97 Triple White Wolf Grey<br>
			<br>187,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="men_shoes7.do"><img
					src="${ pageContext.request.contextPath }/resources/img/men/shoes7.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>Nike x Peaceminusone Air Force 1 Low Para-Noise<br>
			<br>800,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="men_shoes8.do"><img
					src="${ pageContext.request.contextPath }/resources/img/men/shoes8.jpg" /></a></li>
			<li class="subject">Vans
			<li>
			<li>Vans Vault OG Old Skool LX Black<br>
			<br>105,000원
			</li>
		</div>
	</div>


</body>
</html>


