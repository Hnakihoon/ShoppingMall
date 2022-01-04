
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/login_style.css">
 
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/httpRequest.js"></script>

	<script>
	
		function send(f) {
			
			var id = f.id.value.trim();
			var pwd = f.pwd.value.trim();
			
			if (id == '') {
				alert("아이디를 입력하세요.");
				return;
			}
			
			if (pwd == '') {
				alert("비밀번호를 입력하세요.");
				return;
			}
			
			var url = "login_check.do";
			var param = "id=" + id + "&pwd=" + encodeURIComponent(pwd);
			sendRequest(url, param, resultCheck, "POST");
			
		}
		
		function resultCheck() {
			
			if (xhr.readyState == 4 && xhr.status == 200) {
				
				// "[{'param':'clear'}]"
				var data = xhr.responseText;
				var json = eval(data);
				
				if (json[0].param == 'no_id') {
					alert("아이디가 일치하지 않습니다.");
					
				} else if (json[0].param == 'no_pwd') {
					alert("비밀번호가 일치하지 않습니다.");
				
				} else if (json[0].param == 'clear') {
					alert("환영합니다.");
					location.href="main.do";
				}
				
			}
			
		}
		
	</script>

</head>
<body>
	 <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="id" id="id" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="pwd" id="pwd" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="login" onclick="send(this.form);">
                                <input type="button" name="submit" class="btn btn-info btn-md" value="메인으로가기" onclick="location.href='main.do'">
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="register.do" class="text-info">Register here</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
</body>
</html>