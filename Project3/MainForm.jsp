<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String contentPage=request.getParameter("contentPage");
	if(contentPage==null)
		contentPage="FirstView.jsp";
%>
<html>
<head>
	<title>���� ȭ��</title>
	
	<style>
		/* 
		���̾ƿ� ��ü ��� ���� �±�  
		- margin:0 auto 0 auto;(�ð�������� ��, ������, �Ʒ�, ����)
		����, ������ �ٱ������� auto�� �ָ� �߾������� �ȴ�. 
		
		��ü�� �����ִ� �±� #wrap 
		*/
		#wrap {
			width: 800px;
			margin: 0 auto 0 auto;
		}
		
		#header {
			text-align: center;
			width: 800px;
			height: 150px;
			background-color: #92FFFF;
			padding: 60px 0px;
		}
		
		#main {
			float: left;
			width: 800px;
			height: 500px;
			background-color: #FFCA6C;
			text-align:center;
			vertical-align: middle;
		}
		#footer {
			clear: left;
			width: 800px;
			height: 60px;
			background-color: #7DFE74;
		}
	</style>
	
</head>
<body>

	<div id="wrap">
		<div id="header">
			<jsp:include page="Header.jsp" />
		</div>
		<div id="main">
			<jsp:include page="<%=contentPage%>" />
		</div>
		<div id="footer"> �ϴ� </div>
	</div>
	
</body>
</html>