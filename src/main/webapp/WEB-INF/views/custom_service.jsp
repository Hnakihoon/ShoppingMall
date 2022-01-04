<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는 길</title>

<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/custom_style.css">

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7e8f326cae796148a5270a2a3aa87999"></script>
<!-- services 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7e8f326cae796148a5270a2a3aa87999&libraries=services"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7e8f326cae796148a5270a2a3aa87999&libraries=services,clusterer,drawing"></script>

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
	
    <h3>오시는 길</h3>
    
    <div id="map" style="width:500px;height:400px;"></div>
    
    <script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.553998, 126.935753),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
	
	<input id="cancel" type="button" value="메인 화면으로" onclick="location.href='main.do'">
    
</body>
</html>

















