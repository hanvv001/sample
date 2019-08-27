<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>자전거 대여소</title>
</head>
<body>
<!-- 로그인이 된 사람들의 세션을 만들어줌. 
회원값이 있는 사람들은 iD에 정보가 담기게 되고
아닌사람들은 null값을 가지도록 함.
-->
<%
String iD = null;
if(session.getAttribute("iD") !=null){
	iD = (String) session.getAttribute("iD");
}
%>
<nav class="navbar navbar-default">
<div class="naver-header">
<button type="button" class="navbar-toggle collapsed"
data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
aria-expanded="false">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="main.jsp">자전거 대여소 사이트</a>
</div>
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav">
<li class="active"><a href="main.jsp">메인</a>
<li><a href="bbs.jsp">게시판</a>
</ul>
<!-- 접속하기는 로그인 안한사람만 보여주게하는곳 -->
<%
if(iD==null){
%>
<ul class="nav navbar-nav navbar-right">
<li class="dropdown">
<a href="#" class="dropdown-toggle"
data-toggle="dropdown" role="button" aria-haspopup="true"
aria-expanded="false">접속하기<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="login.jsp">로그인</a></li>
<li><a href="join.jsp">회원가입</a></li>
</ul>
</li>
</ul>
<%
}else{
%>
<ul class="nav navbar-nav navbar-right">
<li class="dropdown">
<a href="#" class="dropdown-toggle"
data-toggle="dropdown" role="button" aria-haspopup="true"
aria-expanded="false">회원관리<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="logoutAction.jsp">로그아웃</a></li>
</ul>
</li>
</ul>
<%
}
%>
</div>
</nav>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
</script> -->
</body>
</html>