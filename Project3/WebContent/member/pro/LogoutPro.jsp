<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
	<title>�α׾ƿ� ó��</title>
</head>
	<%
		session.invalidate(); // ��缼������ ����
		response.sendRedirect("../../MainForm.jsp"); // �α��� ȭ������ �ٽ� ���ư���.
	%>
<body>
	
</body>
</html>