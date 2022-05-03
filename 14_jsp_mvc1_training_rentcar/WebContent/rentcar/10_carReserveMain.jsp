<%@page import="rentcar.model.RentcarBean"%>
<%@page import="rentcar.dao.RentcarDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_carReserveMain</title>
</head>
<body>

	<%
 		String id = (String) session.getAttribute("id");
 		
 		if (id == null) {
	%>
			<script>
				alert("로그인을 먼저 해주세요.");
				location.href = '01_carMain.jsp?center=07_memberLogin.jsp';
			</script>
	<%
		}
	%> 
	<div align="center">
		<table>
			<tr height="100px">
				<td align="center" colspan="3">
					<font size="6" color="gray">전체 렌트카 보기</font>
				</td>
			</tr>
			
		<%
			ArrayList<RentcarBean> rentcarList = RentcarDao.getInstance().getAllCar();
			
			int j = 0;
			
			for(RentcarBean bean : rentcarList) {
		
				if (j % 3 == 0) {
		%>
					<tr height="220px">
		<% 			
				}
		%>
					<td width="333px" align="center">
						<a href="01_carMain.jsp?center=11_carReserveInfo.jsp?no=<%=bean.getNo()%>">
							<img alt="" src="imgCar/<%=bean.getImg()%>" width="300" height="200">
						</a>
						<p><font size="3" color="gray"><b><%=bean.getCompany() %> | <%=bean.getName()%></b></font>
					</td>
		<%		
				j++;
				if (j % 3 == 0) {
		%>
					</tr>
		<% 		
				}
				
			}
		%>
		</table>
	
	</div>
</body>
</html>