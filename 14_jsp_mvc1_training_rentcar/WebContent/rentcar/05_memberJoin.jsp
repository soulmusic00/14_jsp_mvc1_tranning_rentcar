<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_memberJoin</title>
</head>
<body>
	<form action="06_memberJoinPro.jsp" method="post">
		<table border="1">
			<tr height="100px">
				<td align="center" colspan="2">
					<font size="6" color="gray">회원가입</font>
				</td>
			</tr>
			<tr height="40px">
				<td width="120px" align="center">아이디</td>
				<td width="180px"><input type="text" name="id" size="30"></td>
			</tr>
			<tr height="40px">
				<td align="center">비밀번호</td>
				<td><input type="password" name="pw" size="30"></td>
			</tr>
			<tr height="40px">
				<td align="center">이메일</td>
				<td><input type="email" name="email" size="30"></td>
			</tr>
			<tr height="40px">
				<td align="center">관련취미</td>
				<td><input type="text" name="hobby" size="30"></td>
			</tr>
			<tr height="40px">
				<td align="center">직업</td>
				<td><input type="text" name="job" size="30"></td>
			</tr>
			<tr height="40px">
				<td align="center">나이</td>
				<td><input type="text" name="age" size="30"></td>
			</tr>
			<tr height="40px">
				<td align="center">전달사항</td>
				<td><textarea rows="15" cols="30" name="info"></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="회원가입">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>