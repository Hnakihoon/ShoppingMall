<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">
<script type="text/javascript">
			
			function send(f){
				
				var b_name = f.b_name.value;				
				
				if (b_name.trim() == '') {
					
					alert("이름을 입력해주세요.");
					return;
					
				}
				
				f.action = "List.do";
				f.submit();
				
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
	
	<table>


		<caption>문의 게시판</caption>

		<thead>
			<tr>
				<th>번호</th>
				<th>카테고리</th>
				<th>제목</th>
				<th>이름</th>
				<th>작성일</th>
			</tr>
		</thead>



		<c:forEach var="vo" items="${list}">

			<tbody>
				<tr>
					<td>${vo.idx}</td>
					<td>${vo.category}</td>
					<td><a id="title_click" href="info.do?idx=${ vo.idx }">${vo.b_title}</a></td>
					<td>${vo.b_name }</td>
					<td>${vo.b_regidate }</td>
				</tr>
			</tbody>

		</c:forEach>



		<tfoot>
			<tr>
				<td colspan="5"><input class="button_list" type="button" value="글쓰기"
					onclick="location.href='insert1.do'"></td>
			</tr>




		</tfoot>
	</table>



	<c:if test="${ vo.del_info ne -1 }">
		<a
			href="view.do?idx=${vo.idx}&page=${empty param.page ? 1 : param.page }"
			style="text-decoration: none;"> ${ vo.subject } </a>
	</c:if>

	<c:if test="${ vo.del_info eq -1 }">
		<font color=gray>${ vo.subject }</font>
	</c:if>



	<form>
		<table id="bottom_tb" align="center">

			<tr>
				<td>&nbsp;이름&nbsp;&nbsp;&nbsp;<input name="b_name"></td>
				<td><input id="search" type="button" value="검색" onclick="send(this.form)"></td>
			</tr>



		</table>
	</form>





	<p id="page_btn">${ pageMenu }</p>
	






</body>
</html>