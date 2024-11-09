<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
		id, pw 입력받는 폼 만들기
	 --%>
	
	<form action="el02.jsp" method="post">
		
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="text" name="pw"><br>
		<input type="submit" value="로그인">
	
	</form>
	
	<%--
		EL의 내장객체 param 객체로 넘어온 파라미터 값을 사용할수 있다.
	 --%>
	
	아이디 : ${param.id }<br>
	비밀번호 : ${param.pw }<br>
	
	아이디 : ${param["id"] }<br>
	비밀번호 : ${param["pw"]}<br>
	
</body>
</html>






