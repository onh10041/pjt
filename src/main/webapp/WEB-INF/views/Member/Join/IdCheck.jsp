<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function idok(){
		opener.formm.id.value="${id}";
		opener.formm.reid.value="${id}";
		self.close();
	}
</script>
</head> 
<body>
<form id="fomm" style="width:400px;height:250px;" action="id_check_form" method="post">
	<h4>아이디 중복 체크</h4>
	<hr style="background:silver;">
	<div>
		<table align="center">
			<tr> 
				<th style="font-size:85%;">아이디&nbsp;</th>
				
				<th>
					<input type="text" name="id">&nbsp;
				</th>
				<td>
					<input type="submit" value="검색">
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
				<c:choose>
					<c:when test="${message==1 }">
						${id }는 사용 가능한 아이디입니다.
						<input type="button" value="사용" onclick="idok()">
					</c:when>
					<c:otherwise>
						<script type="text/javascript">
							opener.document.formm.id.value="";
						</script>
						${id }는 이미 사용중인 아이디입니다.
					</c:otherwise>	
				</c:choose>
				</td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>