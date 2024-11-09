<%@page import="java.sql.*"%>
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
		넘어온 데이터받기
	 --%>
	
	<%!
		String id, pw, name, email, address;
	
		Connection conn;
		PreparedStatement pstmt;
		
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "C##JSPUSER2";
		String dbPw = "jsp123";
		
		String query = "INSERT INTO KGMEMBER(ID, PW, NAME, EMAIL, ADDRESS) VALUES(?, ?, ?, ?, ?)";
	
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		email = request.getParameter("email");
		address = request.getParameter("address");
		
		try{
			
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, dbId, dbPw);
			
			pstmt = conn.prepareStatement(query);
			// "INSERT INTO KGMEMBER(ID, PW, NAME, EMAIL, ADDRESS) VALUES(?, ?, ?, ?, ?)";
			
			// PreparedStatement 의 setter 메소드로 ?에 대한 데이터를 넣어준다.
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, address);
			// ?에 대한 index는 1부터 시작한다.
					
			int i = pstmt.executeUpdate();
			// executeUpdate : 반환값은 변경된 레코드의 수
			
			if(i == 1){
				
				System.out.println("INSERT 성공!");
				response.sendRedirect("memberList.jsp"); 
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
			try{
				
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
				
			}catch(Exception e2){}
			
		}
		
	
	%>
	
</body>
</html>












