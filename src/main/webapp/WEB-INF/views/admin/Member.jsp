<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap{
	width:971px; margin:0; margin-left:auto; margin-right:auto;
}
h1{color:black;}
table{width:100%; border-collapse:collapse; font-size:12px; line-height:24px;}
table td,th{border:#d3d3d3 solid 1px; padding:5px;}
th{background:yellowgreen;}
img{width:220px; height:300px;}
a{text-decoration:none; color:black;}
a:hover{text-decoration:underline; color:green;}
</style>
</head>
<body>
<form id="wrap" align="center">
	<h1>회원 목록</h1>
	<table>
		<tr>		
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>e메일</th>
		</tr>
		<%-- <c:forEach items="{}" var="memberVO">
		<tr>
			<th>${memberVO.pseq }</th>
			<th>${memberVO.id }</th>
			<th>${memberVO.name }</th>
			<th>${memberVO.phone }</th>
			<th>${memberVO.email }</th>			
		</tr>
		</c:forEach> --%>
	</table>	
	<br>
	<input type="submit" value="로그아웃">
	<input type="button" value="회원등록">
</form> 
</body>
</html>