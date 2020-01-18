<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/resources/headerfooter/Header.jsp" %>

<style type="text/css">
#join_main {position:relative;width:800px;height:600px;margin:0 auto;}
#temp {width: 10px;	height: 30px;}
#join_title {font-weight:bold;font-size:120%;width:690px;height:50px;margin:0 auto;
	line-height:50px;}
#part {	position: relative;	width: 700px;	height: 100px;	border: 1px solid red;
	margin: 0 auto;}
#cont{width:750px;height:200px;position:relative;margin:0 auto;font-weight:bold;}
#cen_box{width:280px;height: 90px;position:relative;margin:0 auto;}
#comple{width:150px;height: 40px;position:relative;margin:0 auto; }
#com_btn{color:white;background:linear-gradient(to bottom, #616878 0%,#495164 100%);
		 width:150px;height:40px;}
#foot_text{font-weight:normal;font-size:70%;} 
</style>
</head>
<body>
<div id="join_main">
		<div id="temp"></div>
		<div id="join_title">회원가입 완료</div>
		<div id="cont">
			<hr>
			<div id="temp"></div>
			<div id="cen_box">
				<img src="<c:url value='resources/images/comple.png' />"/>
			</div>
			<div id="temp"></div>
			<div id="comple">
				<input type="button" value="메인화면으로 이동" id="com_btn" onclick="location.href = '/project/'">
			</div>
			<div id="temp"></div>
			<hr>
			<div id="foot_text">
			- 델루나 호텔에 오신것을 환영합니다. 델루나 호텔에서 고객님의 특별한 혜택을 누려보세요.<br>
			&nbsp;&nbsp;델루나 호텔은 소중한 고객님을 가족으로 모십니다.<br><br>
			- 입력하신 귀하의 개인정보 및 기타정보를 델루나 호텔 웹사이트에 국한하여 사용됨을 다시 한번 말씀드립니다.
			</div>
		</div>
</div>
<%@ include file="/resources/headerfooter/Footer.jsp" %>