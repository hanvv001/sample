<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<%
		// ���ڵ� ó��
		request.setCharacterEncoding("euc-kr"); 
	%>
	<title>�α��� ȭ��</title>

	<style type="text/css">
		table{
			padding: 60px 0px;
			margin-left:auto; 
			margin-right:auto;
			border:3px solid yellow;
		}
		
		td{
			border:1px solid yellow
		}
		
		#title{
			background-color:yellow
		}
	</style>

	<script type="text/javascript">

		function checkValue()
		{
			inputForm = eval("document.loginInfo");
			if(!inputForm.id.value)
			{
				alert("���̵� �Է��ϼ���");	
				inputForm.id.focus();
				return false;
			}
			if(!inputForm.password.value)
			{
				alert("��й�ȣ�� �Է��ϼ���");	
				inputForm.password.focus();
				return false;
			}
		}
	
		// ��� ��ư Ŭ���� ùȭ������ �̵�
		function goFirstForm() {
			location.href="MainForm.jsp";
		}
	</script>

</head>
<body>
	<div id="wrap">
	
		<br><br>
		<b><font size="6" color="gray">�α���</font></b>
		<br><br><br>
	
		<form name="loginInfo" method="post" action="member/pro/LoginPro.jsp" 
				onsubmit="return checkValue()">

			<table>
				<tr>
					<td bgcolor="yellow">���̵�</td>
					<td><input type="text" name="id" maxlength="50"></td>
				</tr>
				<tr>
					<td bgcolor="yellow">��й�ȣ</td>
					<td><input type="password" name="password" maxlength="50"></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="�α���"/>
			<input type="button" value="���" onclick="goFirstForm()">
		</form>
		
		<% 
			// ���̵�, ��й�ȣ�� Ʋ����� ȭ�鿡 �޽��� ǥ��
			// LoginPro.jsp���� �α��� ó�� ����� ���� �޽����� ������.
			String msg=request.getParameter("msg");
			
			if(msg!=null && msg.equals("0")) 
			{
				out.println("<br>");
				out.println("<font color='red' size='5'>��й�ȣ�� Ȯ���� �ּ���.</font>");
			}
			else if(msg!=null && msg.equals("-1"))
			{	
				out.println("<br>");
				out.println("<font color='red' size='5'>���̵� Ȯ���� �ּ���.</font>");
			}
		%>	
	</div>	
</body>
</html>