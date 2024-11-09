<%@page import="com.jsp.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:useBean id="dto" class="com.jsp.member.MemberDTO" />
	
	<jsp:setProperty property="*" name="dto"/>
	
	<%--
		프로퍼티가 많을경우 property 속성값을 * 로 주면 
		넘어오는 파라미터의 값들이 객체의 프로퍼티 값으로 자동 바인딩된다.
		주의할점은 파라미터 이름과 프로퍼티 이름이 일치해야 한다는 점이다.
	 --%>
	
	<%
		MemberDAO dao = MemberDAO.getInstance();
	
		boolean idCheck = dao.idCheck(dto.getId());
		
		if(idCheck == true){
			// 같은 아이디가 존재한다면
			
	%>
		<script>
			alert('아이디가 이미 존재합니다.');
			history.back();	
		</script>
	
	<%
			
		}else{
			// 같은 아이디가 존재하지 않다면 
			int result = dao.insertMember(dto);
			
			if(result == 1){
				
		%>
			<script>
				alert('회원가입을 축하합니다.');
				window.location = 'login.jsp';
			</script>
		
		<%
				
			}else{
				
		%>
			<script>
				alert('회원가입에 실패했습니다.');
				history.back();	
			</script>
		
		<%
				
			}
			
		}
	
	%>
	
</body>
</html>







