<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<%
	request.setCharacterEncoding("euc-kr");
	%>
	<title>ȸ������ ȭ��</title>

	<style type="text/css">
		table{
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
	
		// �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
		function checkValue()
		{
			if(!document.userInfo.id.value){
				alert("���̵� �Է��ϼ���.");
				return false;
			}
			
			if(!document.userInfo.password.value){
				alert("��й�ȣ�� �Է��ϼ���.");
				return false;
			}
			
			// ��й�ȣ�� ��й�ȣ Ȯ�ο� �Էµ� ���� �������� Ȯ��
			if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
				alert("��й�ȣ�� �����ϰ� �Է��ϼ���.");
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
		<br><br>
		<b><font size="6" color="gray">ȸ������</font></b>
		<br><br><br>
		
		
		<!-- �Է��� ���� �����ϱ� ���� form �±׸� ����Ѵ� -->
		<!-- ��(�Ķ����) ������ POST ���, ������ �������� JoinPro.jsp -->
		<form method="post" action="MainForm.jsp?contentPage=member/pro/JoinPro.jsp" 
				name="userInfo" onsubmit="return checkValue()">
			<table>
				<tr>
					<td id="title">���̵�</td>
					<td>
						<input type="text" name="id" maxlength="50">
						<input type="button" value="�ߺ�Ȯ��" >	
					</td>
				</tr>
						
				<tr>
					<td id="title">��й�ȣ</td>
					<td>
						<input type="password" name="password" maxlength="50">
					</td>
				</tr>
				
				<tr>
					<td id="title">��й�ȣ Ȯ��</td>
					<td>
						<input type="password" name="passwordcheck" maxlength="50">
					</td>
				</tr>
					
				<tr>
					<td id="title">�̸�</td>
					<td>
						<input type="text" name="name" maxlength="50">
					</td>
				</tr>
					
				<tr>
					<td id="title">���</td>
					<td>
						<input type="radio" name="rating" value="������" checked>������
						<input type="radio" name="rating" value="�Ϲ�" checked>�Ϲ�
					</td>
				</tr>
					
				<tr>
					<td id="title">�̸���</td>
					<td>
						<input type="text" name="mail1" maxlength="50">@
						<select name="mail2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>						
						</select>
					</td>
				</tr>
					
				<tr>
					<td id="title">����ó</td>
					<td>
						<input type="text" name="phone" />
					</td>
				</tr>
				<tr>
					<td id="title">����</td>
					<td>
						<input type="text" name="address"/>
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="����"/>  
			<input type="button" value="���" onclick="goFirstForm()">
		</form>
</body>
</html>