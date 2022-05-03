<%@page import="rentcar.dao.RentcarDao"%>
<%@page import="rentcar.model.CarViewBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자메뉴</title>
</head>
<body>

	<% 
	
		request.setCharacterEncoding("utf-8"); 
		
		ArrayList<CarViewBean> reserveList =  RentcarDao.getInstance().getAllReserve();
		
	%>
	
	<div align="center">
		<h1>전체 차량 예약 현황</h1>
		
		<table border="1">
			<colgroup>
				<col width="150px">
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
				<th>예약자</th>
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
			for (CarViewBean bean : reserveList) {
	%>
				<tr height="70px" align="center">
					<td><img alt="렌트카 이미지" src="imgCar/<%=bean.getImg()%>" width="120px" height="70px"></td>
					<td><%=bean.getName()%></td>
					<td><%=bean.getId()%></td>
					<td><%=bean.getRday()%></td>
					<td><%=bean.getDday()%></td>
					<td><%=bean.getPrice()%></td>
					<td><%=bean.getQty()%></td>
					<td><%=bean.getUseIn()%></td>
					<td><%=bean.getUseWifi()%></td>
					<td><%=bean.getUseNavi()%></td>
					<td><%=bean.getUseSeat()%></td>
					<td>
						<button onclick="location.href='15_carReserveDel.jsp?id=<%=bean.getId()%>&rday=<%=bean.getRday()%>'">삭제</button>
					</td>				
				</tr>
	<%
			}
	%>
		</table>
	</div>

</body>
</html>