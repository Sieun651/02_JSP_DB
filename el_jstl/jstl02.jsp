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
	
	<%--
		if : if문 (else문 없음)
		test="조건식"
	 --%>
	
	<c:if test="${1+2 == 3}">
	
		1더하기2는 3입니다.<br>
	
	</c:if>
	
	<hr>
	
	<c:if test="${1+2 != 3}">
	
		1더하기2는 3이 아닙니다.<br>
	
	</c:if>
	
	<hr>
	
	<%--
		choose 태그는 자바의 switch문과 비슷한 역할을 한다.
		case 문과 같은 역할을 하는 것은 choose 태그안의 when 태그이다.
		default문과 같은 역할을 하는 것은 choose 태그안의 otherwise 태그이다.
	 --%>
	
	<c:set var="a" value="70" />
	
	<c:choose>
	
		<c:when test="${a == 10 }">
			a는  10 입니다.<br>
		</c:when>
		
		<c:when test="${a == 20 }">
			a는  20 입니다.<br>
		</c:when>
		
		<c:when test="${a == 30 }">
			a는  30 입니다.<br>
		</c:when>
		
		<c:otherwise>
			a는 10, 20, 30이 아닙니다.<br>
		</c:otherwise>
		
	</c:choose>
	
	<hr>
	
	<%--
		forEach : for문
	 --%>
	
	<c:forEach var="i" begin="0" end="30" step="3" >
		
		${i}&nbsp;
		
	</c:forEach>
	
	<hr>
	
	<%
		ArrayList<String> list = new ArrayList<>();
	
		list.add("홍길동");
		list.add("성춘향");
		list.add("이순신");
		
		request.setAttribute("names", list);
		
	%>
	
	<c:forEach var="name" items="${names}">
		${name} &nbsp;
	</c:forEach>
	
</body>
</html>












