<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12_carOptionSelect</title>

<script>
	window.onload = function() {
		document.getElementById("tday").value = new Date().toISOString().substring(0,10);
	}
</script>

</head>
<body>

	<%
	
		request.setCharacterEncoding("utf-8");
	
		int no     = Integer.parseInt(request.getParameter("no"));
		int qty    = Integer.parseInt(request.getParameter("qty"));
		String img = request.getParameter("img");
		
	%>
	
	<form action="01_carMain.jsp?center=13_carReserveResult.jsp" method="post">
		<table>
			<tr height="100px" align="center">
				<td colspan="3">
					<font size="6" color="gray">옵션 선택</font>
				</td>
			</tr>
			<tr align="center">
				<td rowspan="7" width="500">
					<img alt="차량 이미지" src="imgCar/<%=img%>" width="450">
				</td>
				<td width="250px">대여기간</td>
				<td width="250px">
					<select name="dday">
						<option value="1">1일</option>
						<option value="2">2일</option>
						<option value="3">3일</option>
						<option value="4">4일</option>
						<option value="5">5일</option>
						<option value="6">6일</option>
						<option value="7">7일</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td>대여일</td>
				<td>
					<input type="date" name="rday" id="tday" size="15">
				</td>
			</tr>
			<tr align="center">
				<td>보험</td>
				<td>
					<select name="useIn">
						<option value="1">적용(1일 1만원)</option>
						<option value="2">비적용</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td>Wifi</td>
				<td>
					<select name="useWifi">
						<option value="1">적용(1일 1만원)</option>
						<option value="2">비적용</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td>네비게이션</td>
				<td>
					<select name="useNavi">
						<option value="1">적용(무료)</option>
						<option value="2">비적용</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td>베이비시트</td>
				<td>
					<select name="useSeat">
						<option value="1">적용(1일 1만원)</option>
						<option value="2">비적용</option>
					</select>
				</td>
			<tr align="center">
				<td colspan="2">
					<input type="hidden" name="no" value="<%=no%>">
					<input type="hidden" name="qty" value="<%=qty%>">
					<input type="submit" value="차량예약하기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>