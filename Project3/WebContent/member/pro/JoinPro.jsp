<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
    
<%-- �ڹٺ� Ŭ���� import --%>      
<%@ page import="jsp.member.model.MemberBean" %>  
<%-- DAO import --%>   
<%@ page import="jsp.member.model.MemberDAO" %> 

<html>
<head>
	<title>ȸ������ ó�� JSP</title>
	
	<!-- css ���� �и� -->
	<link href='css/join_style.css' rel='stylesheet' style='text/css'/>
	
	<script type="text/javascript">
		// Ȯ�� ��ư Ŭ���� ùȭ������ �̵�
		function goFirstForm() {
			location.href="MainForm.jsp";
		}
	</script>
</head>
<body>
	
	<%-- �ڹٺ� ���� �׼��±� ��� --%>
	<jsp:useBean id="memberBean" class="jsp.member.model.MemberBean" />
	<jsp:setProperty property="*" name="memberBean"/>	
	
	<%-- <%
		MemberDAO dao = MemberDAO.getInstance();
	
		// ȸ�������� ����ִ� memberBean�� dao�� insertMember() �޼���� �ѱ��.
		// insertMember()�� ȸ�� ������ JSP_MEMBER ���̺� �����Ѵ�.
		dao.insertMember(memberBean);
	%> --%>
	
	<div id="wrap">
		<br><br>
		<b><font size="5" color="gray">ȸ������ ������ Ȯ���ϼ���.</font></b>
		<br><br>
		<font color="yellow"><%=memberBean.getName() %></font>�� ������ ���ϵ帳�ϴ�.
		<br><br>
		
		<%-- �ڹٺ󿡼� �Էµ� ���� �����Ѵ�. --%>
		<table>
			<tr>
				<td id="title">���̵�</td>
				<td><%=memberBean.getId() %></td>
			</tr>
						
			<tr>
				<td id="title">��й�ȣ</td>
				<td><%=memberBean.getPassword() %></td>
			</tr>
					
			<tr>
				<td id="title">�̸�</td>
				<td><%=memberBean.getName() %></td>
			</tr>
					
			<tr>
				<td id="title">������</td>
				<td><%=memberBean.getmanger()%></td>
			</tr>
									
			<tr>
				<td id="title">�̸���</td>
				<td>
					<%=memberBean.getMail1() %>@<%=memberBean.getMail2() %>
				</td>
			</tr>
					
			<tr>
				<td id="title">����ó</td>
				<td><%=memberBean.getcontact() %></td>
			</tr>
			<tr>
				<td id="title">����</td>
				<td>
					<%=memberBean.getaccount() %>
				</td>
			</tr>
		</table>
		
		<br>
		<input type="button" value="Ȯ��" onclick="goFirstForm()">
	</div>
</body>
</html>