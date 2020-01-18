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
#Header{width:850px;height:140px;margin:0 auto;}
#Admin_text{position:relative;width:150px;height:60px;font-size:90%;color:#182D7C;float:right;}
.Header_1{width:470px;height:110px;border:3px solid #182D7C;margin:0 auto;border-radius:12px;
	position:relative;font-weight:bold;color:#182D7C;font-size:230%;text-align:100px;line-height:20px;}
#logo_text{position:relative; top:45px;font-family: Dotum;}
#logo{position:relative;width:440px;margin:0 auto;}
</style>
</head>
<body>
<div id="Header">
	<div id="Admin_text">
		<div>관리자 ${loginUser.id} 접속중</div>
	</div>
	<div id="logo">
		<img src="<c:url value='resources/images/logo.png' />" style="width:440px;"/>
	</div>
</div>
