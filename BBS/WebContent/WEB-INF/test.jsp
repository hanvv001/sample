<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 드라이버 테스트</title>
</head>
<body>
<%
	Connection conn = null;

	try {
		String URL = "jdbc:mysql://localhost:3306/bbs?useSSL=false";
		String ID = "root";
		String PW = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(URL, ID, PW);
		out.println("제대로 연결되었습니다.");
	}catch(Exception e){
		e.printStackTrace();
}
%>

</body>
</html>