<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom_inquiry.css">

</head>

<script type="text/javascript">
	
		function send(f){
			
			
			var b_title = f.b_title.value;
			var b_content = f.b_content.value;
			var category = f.category.value;
			var b_name =  f.b_name.value;
			
			if (b_name.trim() == '') {
				
				alert("이름을 입력해주세요.");
				return;
			
			}
			
			if (b_title.trim() == '') {
				
				alert("제목을 입력해주세요.");
				return;
				
			}
			
			if (b_content.trim() == '') {
				
				alert("내용을 입력해주세요.");
				return;
				
			}
			
			f.action = "insert2.do";
			f.submit();
		}
	 
		
	
	</script>

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

	<form>

		<h2>상품문의</h2>

		<div id="frame">

			<ul>
				<li id="category">카테고리</li>
				<li id="category_sel"><select name="category">
						<option value="상품문의">상품문의</option>
						<option value="배송문의">배송문의</option>
						<option value="환불">환불</option>
				</select></li>
			</ul>

			<ul>
				<li id="name">이름</li>
				<li id="b_name"><input name="b_name"></li>
			</ul>

			<ul>
				<li id="title">제목</li>
				<li id="b_title"><input name="b_title"></li>
			</ul>

			<ul>
				<li id="content">내용</li>
				<li id="b_content"><textarea name="b_content" rows="5"
						cols="50"></textarea></li>
			</ul>

		</div>

		<input id="register" type="button" value="등록하기"
			onclick="send(this.form);">
		<input type="button" id="cancel" value="취소"
               onclick="location.href='select.do'">


	</form>




</body>
</html>