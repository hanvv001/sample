<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>��� ����</title>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
	<style type="text/css">
		#wrap{
			text-align: center;
			width: 800px;
			height: 150px;
		}
	</style>
	
	<script type="text/javascript">
		
		function changeView(value){
			
			if(value == "0") // HOME ��ư Ŭ���� ùȭ������ �̵�
			{
				location.href="MainForm.jsp";
			}
			else if(value == "1") // �α��� ��ư Ŭ���� �α��� ȭ������ �̵�
			{
				location.href="MainForm.jsp?contentPage=member/view/LoginForm.jsp";
			}
			else if(value == "2") // ȸ������ ��ư Ŭ���� ȸ������ ȭ������ �̵�
			{
				location.href="MainForm.jsp?contentPage=member/view/JoinForm.jsp";
			}
			else if(value == "3") // �α׾ƿ� ��ư Ŭ���� �α׾ƿ� ó��
			{
				location.href="member/pro/LogoutPro.jsp";
			}
		}
	</script>
	
</head>
<body>
	<div id = "wrap">
		<p>
			<button class="btn btn-success" onclick="changeView(0)">HOME</button>
		<%
			// �α��� �ȵǾ��� ��� - �α���, ȸ������ ��ư�� �����ش�.
			if(session.getAttribute("sessionID")==null){ 
		%>
			<button id="loginBtn" class="btn btn-primary" onclick="changeView(1)">�α���</button>
			<button id="joinBtn" class="btn btn-primary" onclick="changeView(2)">ȸ������</button>
			
		<%
			// �α��� �Ǿ��� ��� - �α׾ƿ�, ������ ��ư�� �����ش�.
			}else{ 
		%>
			<button id="logoutBtn" class="btn btn-primary" onclick="changeView(3)">�α׾ƿ�</button>
			<button id="updateBtn" class="btn btn-primary" >������</button>
		<%	}	%>	

			<button id="memberViewBtn" class="btn btn-warning">ȸ������</button>
		</p>
	</div>
</body>
</html>