<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_top</title>
</head>
<body>

	<%
	
		String id = (String)session.getAttribute("id");
		if (id == null) 	id = "GUEST";
		
	%>
	
	<table>
		<tr height="70px">
			<td colspan="2">
				<a href="01_carMain.jsp" >
					<img alt="rent_logo" src="imgCar/rent_logo.jpg" height="120px">
				</a>
			</td>
			
			<td align="right" width="200px" colspan="3">
				<%=id%>님
				<%
					if (id.equals("GUEST")) {
				%>
						<button onclick="location.href='01_carMain.jsp?center=07_memberLogin.jsp'">로그인</button>
				<%
					} 
					else if(id.equals("admin")) {
				%>
						<button onclick="location.href='01_carMain.jsp?center=16_admin.jsp'">관리자메뉴</button>
						<button onclick="location.href='09_memberLogout.jsp'">로그아웃</button>
				<%
					} 
					else {
				%>
						<button onclick="location.href='09_memberLogout.jsp'">로그아웃</button>
				<%
					}
				%>
			</td>
		</tr>
		
		<tr height="50px" align="center">
			<td width="200px" bgcolor="pink">
				<font color="white" size="5">
					<% 
						if (id.equals("admin")) {
					%>
							예 약 하 기
					<% 	
						}
						else {
					%>
							<a href="01_carMain.jsp?center=10_carReserveMain.jsp" style="text-decoration: none">예 약 하 기</a>
					<% 
						}
					%>				
				</font>
			</td>
			
			<td width="200" bgcolor="pink">
				<font color="white" size="5">
					<% 
						if (id.equals("admin")) {
					%>
							예 약 확 인
					<% 	
						}
						else {
					%>
							<a href="01_carMain.jsp?center=14_carReserveView.jsp" style="text-decoration: none">예 약 확 인</a>
					<% 
						}
					%>		
				</font>
			</td>
			<td width="200px" bgcolor="pink">
				<font color="white" size="5">자유게시판</font>
			</td>
			<td width="200px" bgcolor="pink">
				<font color="white" size="5">이 벤 트</font>
			</td>
			<td width="200px" bgcolor="pink">
				<font color="white" size="5">고 객 센 터</font>
			</td>
		</tr>
	</table>

</body>
</html>