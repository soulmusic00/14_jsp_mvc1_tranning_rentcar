<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_memberLogin</title>
</head>
<body>
	<br>
	<form action="08_memberLoginPro.jsp" method="post">
		<table border="1">
			<tr height="100px">
				<td align="center" colspan="2">
					<font size="6" color="gray">로그인</font>
				</td>
			</tr>
			<tr height="40px">
				<td width="120px" align="center">아이디</td>
				<td width="180px">&nbsp; <input type="text" name="id" size="15"></td>
			</tr>
			<tr height="40px">
				<td align="center">비밀번호</td>
				<td>&nbsp; <input type="password" name="pw" size="15"></td>
			</tr>
			<tr height="40px">
				<td align="center" colspan="2">
					<input type="submit" value="로그인">
					<input type="button" value="회원가입" onclick="location.href='01_carMain.jsp?center=05_memberJoin.jsp'" >
				</td>
			</tr>
		</table>
	</form>
</body>
</html>