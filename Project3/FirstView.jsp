<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
	<head>
		<title>ùȭ��</title>
	</head>
	<body>		
	<%
		if(session.getAttribute("sessionID") == null) // �α����� �ȵǾ��� ��
		{ 
	%>
			<br><br><br>
			<b><font size="6" color="gray">ùȭ��</font></b>
			<br><br><br>
			<img src="img/welcome.jpg">
			<br><br>	
	<%
		}
		else // �α��� ���� ���
		{
	%>
			<br><br><br>
			<font size=6 color="skyblue"><%=session.getAttribute("sessionID") %></font>
			<font size=6>�� ȯ���մϴ�.</font>
	<%	} %>
	</body>
</html>



