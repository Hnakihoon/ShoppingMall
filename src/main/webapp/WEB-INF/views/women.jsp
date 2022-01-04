<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Women</title>

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
			<li><a href="women_shoes1.do"><img
					src="${ pageContext.request.contextPath }/resources/img/women/shoes1.jpg" /></a></li>
			<li class="subject">COMME DES GARCONS PLAY
			<li>
			<li>COMME DES GARCONS PLAY X CONVERSE CHUCK 70 LOW SNEAKERS<br>
			<br>160,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="women_shoes2.do"><img
					src="${ pageContext.request.contextPath }/resources/img/women/shoes2.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>(W)Jordan 1 Mid Grey Fog<br>
			<br>264,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="women_shoes3.do"><img
					src="${ pageContext.request.contextPath }/resources/img/women/shoes3.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>(W)Jordan 1 Low White Wolf Grey<br>
			<br>296,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="women_shoes4.do"><img
					src="${ pageContext.request.contextPath }/resources/img/women/shoes4.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>(W)Nike Dunk Low Black<br>
			<br>295,000원
			</li>
		</div>
	</div>


	<div id="main">
		<h3 class="title">추천상품</h3>
		<div class="item1">
			<li><a href="women_shoes5.do"><img
					src="${ pageContext.request.contextPath }/resources/img/women/shoes5.jpg" /></a></li>
			<li class="subject">CONVERSE
			<li>
			<li>Run Star Hike Black <br>
			<br>109,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="women_shoes6.do"><img
					src="${ pageContext.request.contextPath }/resources/img/women/shoes6.jpg" /></a></li>
			<li class="subject">Nike
			<li>
			<li>(W) Nike Dunk Low Barely Green<br>
			<br>173,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="women_shoes7.do"><img
					src="${ pageContext.request.contextPath }/resources/img/women/shoes7.jpg" /></a></li>
			<li class="subject">New Balance
			<li>
			<li>New Balance 327 White Black<br>
			<br>145,000원
			</li>
		</div>

		<div class="item1">
			<li><a href="women_shoes8.do"><img
					src="${ pageContext.request.contextPath }/resources/img/women/shoes8.jpg" /></a></li>
			<li class="subject">Vans
			<li>
			<li>Vans Vault OG Old Skool LX Black<br>
			<br>105,000원
			</li>
		</div>
	</div>


</body>
</html>


