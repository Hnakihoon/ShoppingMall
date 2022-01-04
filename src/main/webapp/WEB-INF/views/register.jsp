<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/register_style.css">

<script src="${ pageContext.request.contextPath }/resources/js/httpRequest.js"></script>

<script>
	
	var check = false;
	
	function check_id( f ) {
		var id = f.id.value;
		
		
		if(!id){
			alert("아이디를 입력해주세요");
			return;
		} 
		
		var url = "check.do";
		var param = "id="+id;
		
		sendRequest(url, param, checkResult, "get");
		
	} // check_id()
	
	function checkResult() {
		
		if (xhr.readyState == 4 && xhr.status == 200) {
			var data = xhr.responseText;
			var json = eval(data);
			
			if (json[0].result == 'yes') {
				alert("중복된 아이디입니다.");
				return;
			
			} else {
				check = true;
				alert("사용 가능한 아이디입니다.");
			}
			
		}
		
	}
	
	function register() {
		
		var f = document.f;
		
		
		//유효성 검사
		if (f.id.value.trim() == '') {
			alert("아이디를 입력해주세요.");
			return;
		}
		
		if (check == false) {
			alert("아이디 중복 확인을 해주세요.");
			return;
		}
		
		if (f.pwd.value.trim() == '') {
			alert("비밀번호를 입력해주세요.");
			return;
		}
		
		if (f.name.value.trim() == '') {
			alert("이름을 입력해주세요.");
			return;
		}
		
		if (f.addr.value.trim() == '') {
			alert("주소를 입력해주세요.");
			return;
		}
		
		if (f.tel.value.trim() == '') {
			alert("전화번호를 입력해주세요.");
			return;
		}
		
		if (f.email.value.trim() == '') {
			alert("이메일을 입력해주세요.");
			return;
		}
		
		alert("회원가입이 완료되었습니다.");
		
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

	<form name="f" method="post" action="insert.do">
	
		<table>
			<caption>회원가입</caption>
			
			<tr>
				<th>아이디</th>
				<td>
					<input name="id" id="id">
                    <input id="id_duplic" type="button" value="중복 확인" onclick="check_id(this.form);">
				</td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="pwd">
				</td>
			</tr>
			
			<tr>
				<th>이름</th>
				<td>
					<input name="name" id="name">
				</td>
			</tr>
			
			<tr>
                <th>주소</th>
                <td>
                	<input name="addr">
                </td>
			</tr>
			
			<tr>
				<th>휴대전화</th>
                <td>
                	<input name="tel">
                </td>
			</tr>
            
            <tr>
                <th>이메일</th>
                <td>
                    <input name="email">
                </td>
            </tr>
			
		</table>
        
        <input type="button" id="reg_btn" 
               value="회원 가입" onclick="register(this.form);">
        
        <input type="button" id="cancel" value="취소"
               onclick="location.href='main.do'">
        
	</form>
</body>
</html>
















