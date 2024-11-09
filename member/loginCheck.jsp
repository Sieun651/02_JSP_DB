<%@page import="com.jsp.member.MemberDTO"%>
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
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = MemberDAO.getInstance();
		
		int result = dao.loginCheck(id, pw);
		
		if(result == -1){ // id가 없는경우
			
		%>
			<script>
				alert('아이디가 존재하지 않습니다.');
				history.back();
			</script>
		<%
			
		}else if(result == 0){// pw가 틀린경우
			
		%>
			<script>
				alert('비밀번호가 틀립니다.');
				history.back();
			</script>
		<%
			
		}else if(result == 1){ // 로그인 ok
			
			MemberDTO dto = dao.getMember(id);
		
			session.setAttribute("member", dto);
			
			response.sendRedirect("main.jsp");
			
		}
		
		
	%>
	
	
</body>
</html>