<%@page import="com.jsp.member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	<%
		ArrayList<MemberDTO> list = new ArrayList<>();
		
		list.add(new MemberDTO("hong", "1234", "홍길동", "hong@naver.com", "서울"));
		list.add(new MemberDTO("sung", "1111", "성춘향", "sung@naver.com", "대전"));
		list.add(new MemberDTO("mong", "2222", "이몽룡", "mong@naver.com", "부산"));
		
		request.setAttribute("members", list);
		
	%>
	
	<h2>회원 정보 보기</h2>
	
	<table border="1">
		
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>주소</th>
		</tr>
		
		<c:forEach var="member" items="${members}">
			
			<tr>
				<td>${member.id }</td>
				<td>${member.pw }</td>
				<td>${member.name }</td>
				<td>${member.email }</td>
				<td>${member.address }</td>
			</tr>
			
		</c:forEach>
		
	</table>
	
</body>
</html>




