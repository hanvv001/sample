<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="css/custorm.css"> -->
<title>회원가입</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="naver-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">자전거 대여소</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a>
				<li><a href="bbs.jsp">게시판</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
				<a href="#" class="dropdown-toggle" 
				data-toggle="dropdown" role="button" aria-haspopup="true" 
				aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li  class="active"><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>		
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top:20px;">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align:center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="iD" maxlength="20">	
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="비밀번호" name="pW" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="name" maxlength="20">
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="email" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="연락처" name="contact" maxlength="20">
					</div>
					<div>
						<input type="text" class="form-control" placeholder="계좌번호" name="accountNumber" maxlength="20">					
					</div>
					<div class="form-group" style="text-align:center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="gender" autocomplete="off" value="남자" checked>남자
							</label>
							<label class="btn btn-primary active">
								<input type="radio" name="gender" autocomplete="off" value="여자" checked>여자
							</label>
						</div>
					</div>
					<div class="form-group" style="text-align:center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="rating" autocomplete="off" value="1" checked>관리자
							</label>
							<label class="btn btn-primary active">
								<input type="radio" name="rating" autocomplete="off" value="2" checked>일반
							</label>
						</div>
					</div> 
					<input type="submit" class="btn btn-primary form-control" value="회원가입">			
				</form>
			</div>	
		</div>
		<div class="col-lg-4"></div>
	</div>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
<script src="js/bootstrap.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">	
</script> -->
</body>
</html>