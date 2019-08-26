<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
    
<%-- 자바빈 클래스 import --%>      
<%@ page import="jsp.member.model.MemberBean" %>  
<%-- DAO import --%>   
<%@ page import="jsp.member.model.MemberDAO" %> 

<html>
<head>
	<title>회원가입 처리 JSP</title>
	
	<!-- css 파일 분리 -->
	<link href='css/join_style.css' rel='stylesheet' style='text/css'/>
	
	<script type="text/javascript">
		// 확인 버튼 클릭시 첫화면으로 이동
		function goFirstForm() {
			location.href="MainForm.jsp";
		}
	</script>
</head>
<body>
	
	<%-- 자바빈 관련 액션태그 사용 --%>
	<jsp:useBean id="memberBean" class="jsp.member.model.MemberBean" />
	<jsp:setProperty property="*" name="memberBean"/>	
	
	<%-- <%
		MemberDAO dao = MemberDAO.getInstance();
	
		// 회원정보를 담고있는 memberBean을 dao의 insertMember() 메서드로 넘긴다.
		// insertMember()는 회원 정보를 JSP_MEMBER 테이블에 저장한다.
		dao.insertMember(memberBean);
	%> --%>
	
	<div id="wrap">
		<br><br>
		<b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
		<br><br>
		<font color="yellow"><%=memberBean.getName() %></font>님 가입을 축하드립니다.
		<br><br>
		
		<%-- 자바빈에서 입력된 값을 추출한다. --%>
		<table>
			<tr>
				<td id="title">아이디</td>
				<td><%=memberBean.getId() %></td>
			</tr>
						
			<tr>
				<td id="title">비밀번호</td>
				<td><%=memberBean.getPassword() %></td>
			</tr>
					
			<tr>
				<td id="title">이름</td>
				<td><%=memberBean.getName() %></td>
			</tr>
					
			<tr>
				<td id="title">관리자</td>
				<td><%=memberBean.getmanger()%></td>
			</tr>
									
			<tr>
				<td id="title">이메일</td>
				<td>
					<%=memberBean.getMail1() %>@<%=memberBean.getMail2() %>
				</td>
			</tr>
					
			<tr>
				<td id="title">연락처</td>
				<td><%=memberBean.getcontact() %></td>
			</tr>
			<tr>
				<td id="title">계좌</td>
				<td>
					<%=memberBean.getaccount() %>
				</td>
			</tr>
		</table>
		
		<br>
		<input type="button" value="확인" onclick="goFirstForm()">
	</div>
</body>
</html>