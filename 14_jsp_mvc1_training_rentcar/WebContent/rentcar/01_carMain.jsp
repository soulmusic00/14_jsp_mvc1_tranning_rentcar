<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_carMain</title>
</head>
<body>

	<div align="center">
		
		<%
			String center = request.getParameter("center");
		
			//처음 실행 시, 다른 center값이 넘어오지않게 null처리
			if(center == null) {
				center = "04_center.jsp";	// default center값
			}
		%>
		
		<table>
			<%-- top(상단_고정) --%>
			<tr height="120px" align="center">
				<td width="1000px">
					<jsp:include page="02_top.jsp" />
				</td>
			</tr>
			
			<%-- center(각 페이지를 불러올 부분) --%>
			<tr align="center">
				<td>
					<jsp:include page="<%=center%>" />
				</td>
			</tr>
			
			<%-- bottom(하단_고정) --%>
			<tr align="center" height="100px">
				<td>
					<jsp:include page="03_bottom.jsp" />
				</td>
			</tr>
		</table>
		
	</div>

</body>
</html>