<%@page import="rentcar.dao.RentcarDao"%>
<%@page import="rentcar.model.CarViewBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14_carReserveView</title>
</head>
<body>

	<%
		String id = (String)session.getAttribute("id");
		if (id == null) {
	%>
			<script>
				alert("로그인을 해주세요.");
				location.href = '01_carMain.jsp?center=07_memberLogin.jsp';
			</script>
	<%
		}
		
		ArrayList<CarViewBean> carViewList = RentcarDao.getInstance().getAllReserve(id);
	%>
	
	<div align="center">
		<br>
		<font size="6" color="gray">차량 예약 완료</font>
		<br><br>
		<table border="1">
			<colgroup>
				<col width="150px">
				<col width="150px">
				<col width="150px">
				<col width="60px">
				<col width="100px">
				<col width="60px">
				<col width="60px">
				<col width="60px">
				<col width="60px">
				<col width="60px">
				<col width="60px">
			</colgroup>
			<tr height="40px">
				<th>이미지</th>
				<th>이름</th>
				<th>대여일</th>
				<th>대여기간</th>
				<th>금액</th>
				<th>수량</th>
				<th>보험</th>
				<th>wifi</th>
				<th>네비게이션</th>
				<th>베이비시트</th>
				<th>삭제</th>
			</tr>
	<%
			for (CarViewBean bean : carViewList) {
	%>
				<tr height="70px" align="center">
					<td><img alt="렌트카 이미지" src="imgCar/<%=bean.getImg()%>" width="120px" height="70px"></td>
					<td><%=bean.getName()%></td>
					<td><%=bean.getRday()%></td>
					<td><%=bean.getDday()%></td>
					<td><%=bean.getPrice()%></td>
					<td><%=bean.getQty()%></td>
					<td><%=bean.getUseIn()%></td>
					<td><%=bean.getUseWifi()%></td>
					<td><%=bean.getUseNavi()%></td>
					<td><%=bean.getUseSeat()%></td>
					<td><button onclick="location.href='15_carReserveDel.jsp?id=<%=id%>&rday=<%=bean.getRday()%>'">삭제</button></td>				
				</tr>
	<%
			}
	%>
		</table>
	
	</div>

</body>
</html>