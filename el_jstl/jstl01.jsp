<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<%--
	자바에서 import 문을 선언하듯 jsp에서 jstl 확장태그를 사용하려면
	taglib 지시자로 라이브러리 선언을 해주어야 한다.
 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
	일반적으로 JSTL이란 JSTL + EL의 조합을 말한다.
	HTML 코드 내에 java 코드인 스크립틀릿 코드를 대체하여 사용한다.
	스크립틀릿을 사용하면 가독성이 떨어지고, 뷰와 비즈니스로직의 분리로 인해 
	현재는 JSTL을 많이 사용하는 추세이다.
	 --%>
	
	<%--
		set : 변수값 선언
		out : 변수값 출력
		remove : 변수값 제거
		
		var : 값을 지정할 변수이름
		value : 변수의 값 제정
		scope : 범위지정(page, request, session, application)
	 --%>
	
	<c:set var="name" value="홍길동" scope="page" />
	
	이름 : <c:out value="${name }" /><br>
	
	<c:remove var="name" scope="page" />
	
	이름 : <c:out value="${name }" /><br>
	
	
	
	
</body>
</html>








