<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(W) 조던 1 로우 화이트 울프 그레이</title>

<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/commodity_style.css">

<script src="${ pageContext.request.contextPath }/resources/js/httpRequest.js"></script>

<script>
   
   function purchase() {
      
      var f = document.f;
      var size = f.size.value;
      
      location.href = "purchase.do?size="+size;
      
   }
   
   function interest() {
		
		alert("관심 상품에 추가하였습니다.");
		
	}
   
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
   
   <form name="f">
   
   <div id="main_frame">
        <div id="main_img">
            <img src="${ pageContext.request.contextPath }/resources/img/women/shoes3.jpg">
        </div>

        <div id="box">
            <div id="subscrip">
                <p>(W) Jordan 1 Low White Wolf Grey</p>
                <p id="subtitle">(W) 조던 1 로우 화이트 울프 그레이</p>
                <ul>
                    <li>사이즈</li>
                    <li>
                        <select id="size">
                            <option selected>모든 사이즈</option>
                            <option>220</option>
                            <option>230</option>
                            <option>240</option>
                            <option>250</option>
                            <option>260</option>
                            <option>270</option>
                            <option>280</option>
                            <option>290</option>
                        </select>
                    </li>
                </ul>
            
                <ul>
                    <li>가격</li>
                    <li>&nbsp;&nbsp;&nbsp;296,000원</li>
                </ul>

            </div>
            
            <input type="button" value="구매" onclick="purchase(this.form);">
            <input type="button" value="관심 상품" onclick="interest(this.form);">
            
        </div>
    </div>
    
    </form>
</body>
</html>