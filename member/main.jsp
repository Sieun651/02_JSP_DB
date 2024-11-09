<%@page import="com.jsp.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	*{
		text-align: center;
		margin: 0 auto;
	}
</style>

</head>
<body>
	
	<%--
		회원의 정보 출력
	 --%>
	
	<%
		if(session.getAttribute("member") == null){
	%>
			<jsp:forward page="login.jsp" />
	<%
		}
	
		
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
	
	%>
	
	<%--
		private String id;
		private String pw;
		private String name;
		private String email;
		private String address;
		private Timestamp regDate;
	 --%>
	
	<br>
	
	<h2>회원 아이디 : <%=dto.getId() %></h2><br>
	
	<h2>회원 비밀번호 : <%=dto.getPw() %></h2><br>
	
	<h2>회원 이름 : <%=dto.getName() %></h2><br>
	
	<h2>회원 이메일 : <%=dto.getEmail() %></h2><br>
	
	<h2>회원 주소 : <%=dto.getAddress() %></h2><br>
	
	<h2>회원 가입일 : <%=dto.getRegDate() %></h2><br>
	
	<a href="logout.jsp">로그아웃</a>
	
	&nbsp;&nbsp;&nbsp;&nbsp;
	
	<a href="modify.jsp">회원정보 수정</a>
	
	&nbsp;&nbsp;&nbsp;&nbsp;
	
	<a href="delete.jsp">회원 탈퇴</a>
	
	
</body>
</html>










