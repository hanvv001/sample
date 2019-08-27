<%@page import="Member.member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Member.memberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class="Member.member" scope="page" />
<jsp:setProperty property="accountNumber" name="member"/>
<jsp:setProperty property="iD" name="member"/>
<jsp:setProperty property="pW" name="member"/>
<jsp:setProperty property="name" name="member"/>
<jsp:setProperty property="gender" name="member"/>
<jsp:setProperty property="email" name="member"/>
<jsp:setProperty property="contact" name="member"/>
<jsp:setProperty property="rating" name="member"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
memberDAO memberDAO = new memberDAO();
/* session.setAttribute(arg0, arg1) */
int result = memberDAO.join(member);

if(member.getAccountNumber() == null || member.getiD() == null || member.getpW() == null ||member.getEmail() == null || member.getRating() == 0 || member.getContact() == null || member.getGender() == null || member.getName() == null){
PrintWriter script = response.getWriter();
script.println("<script>");
script.println("alert('입력이 안된 사항이 있습니다')");
script.println("history.back()");
script.println("</script>");
}

else{
	
if(result == -1){
PrintWriter script = response.getWriter();
script.println("<script>");
script.println("alert('이미 존재하는 아이디입니다')");
script.println("history.back()");
script.println("</script>");

}

else{
PrintWriter script = response.getWriter();
script.println("<script>");
script.println("location.href='main.jsp'");
script.println("history.back()");
script.println("</script>");
	}
}
%>
</body>
</html>