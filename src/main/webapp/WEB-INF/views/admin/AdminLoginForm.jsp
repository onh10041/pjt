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
#loginform{width:600px; height:350px; margin:0 auto; position:relative; top:300px; 
 text-align:center; }
.btn{color:white; background-color:#182D7C; border:2px solid:white;}
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<article>
		<div id="loginform">
			<form name="frm" method="post" action="admin_login">
				<img src="<c:url value='resources/images/logo.png' /> " style="margin:0 auto"/>
				<table id="Login_Table" align="center">
					<tr>
						<td align=center></td>
					</tr>
					<tr>
						<td style="color:black; font-weight:bold;">아 이 디</td>
						<td><input type="text" name="id" size="10"></td>
					</tr>
					<tr >
						<td style="color:black; font-weight:bold;"> 비밀번호 </td>
						<td>
							<input type="password" name="pwd" size="10">
						</td>
					</tr>
					<tr align="center" >
						<td  colspan="2">    
							<br><br>      
							<input class="btn" type="submit" value="업무 로그인" >
							<h4 style="color:red">${message}</h4>
						</td>
					</tr>    
				</table>    
			</form>
		</div>
	</article>
</body>
</html>

