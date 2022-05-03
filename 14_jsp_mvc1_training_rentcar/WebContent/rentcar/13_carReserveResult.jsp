<%@page import="rentcar.model.RentcarBean"%>
<%@page import="rentcar.dao.RentcarDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13_carReserveResult</title>
</head>
<body>

	<jsp:useBean id="rbean" class="rentcar.model.CarReserveBean">
		<jsp:setProperty name="rbean" property="*" />
	</jsp:useBean>
	
	<%
		String id = (String)session.getAttribute("id");
	
		if (id == null) {
	%>
			<script type="text/javascript">
				alert("로그인 후, 예약이 가능합니다.");
				location.href = '01_carMain.jsp?center=07_memberLogin.jsp';
			</script>
	<%
		}
		
		//날짜 비교
		Date rDay = new Date();
		Date tryReserveDay = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		rDay = sdf.parse(rbean.getRday());
		tryReserveDay = sdf.parse(sdf.format(tryReserveDay));		//format() = SimpleDateFormat >> yyyy-MM-dd
	
		//날짜 비교 메소드
		int compare = rDay.compareTo(tryReserveDay);
		//예약일이 현재 날짜보다 이전 : -1
		//예약일이 현재 날짜와 동일 : 0
		//예약일이 현재 날짜보다 이후 : 1을 리턴
		
		if(compare < 0) {		//현재 날짜보다 이전 날짜 선택 시,
	%>
			<script>
				alert("현재 시스템 날짜보다 이전 날짜는 선택할 수 없습니다.");
				history.go(-1);
			</script>
	<%
		}
	
		//예약 완료 시, 데이터 저장 후 결과
		id = (String)session.getAttribute("id");
		rbean.setId(id);
		
		RentcarDao rdao = RentcarDao.getInstance();
		rdao.setReserveCar(rbean);
		
		//차량 정보 호출
		RentcarBean cbean = rdao.getOneCar(rbean.getNo());
		
		//차량 총 금액
		int totCar = cbean.getPrice() * rbean.getQty() * rbean.getDday();
		
		//옵션 금액(선택 시, +10000원)
		int usein = 0;
		if (rbean.getUseIn() == 1) 	 usein = 10000;
		
		int usewifi = 0;
		if (rbean.getUseWifi() == 1) usewifi = 10000; 
		
		int useseat = 0;
		if (rbean.getUseSeat() == 1) useseat = 10000;
		
		int totOption = (rbean.getQty() * rbean.getDday() * (usein + usewifi + useseat));
		
	%>
	
	<div align="center">
		<table>
			<tr align="center" height="100px">
				<td>
					<font size="6" color="gray">차량 예약 완료</font>
				</td>
			</tr>
			<tr align="center" height="100px">
				<td>
					<img alt="자동차 이미지" src="imgCar/<%=cbean.getImg()%>" width="470px">
				</td>
			</tr>
			<tr align="center" height="50px">
				<td>
					<font size="5" color="red">차량 총 예약금액 <%=totCar%> 원</font>
				</td>
			</tr>
			<tr align="center" height="50px">
				<td>
					<font size="5" color="red">차량 총 옵션금액 <%=totOption%> 원</font>
				</td>
			</tr>
			<tr align="center" height="50px">
				<td>
					<font size="5" color="red">차량 총 금액 <%=totCar + totOption%> 원</font>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>