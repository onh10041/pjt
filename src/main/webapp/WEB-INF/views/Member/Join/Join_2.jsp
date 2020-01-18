<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>

<style type="text/css">
#join_main {position:relative;width:800px;height:650px;margin:0 auto;}
#temp {width:10px;height:30px;}
#join_title {font-weight:bold;font-size:120%;width:700px;height:50px;margin:0 auto;}
#part {position:relative;width:700px;height:100px;margin:0 auto;}
#cont{width:700px;height:450px;position:relative;margin:0 auto;font-weight:bold;}
#cont table th{width:200px;height:30px;background-color:#F6F4F1;font-size:90%;
	border-bottom:1px solid #C3C3C3;}
#cont table td{border-bottom:1px solid #C3C3C3;width:500px;font-weight:normal;
	font-size:80%;}
#und_btn{width:210px;height:50px;position:relative;margin:0 auto;}
#und_btn input{width:100px;height:35px;position:relative;}
#join_main_base{position:relative;left:-50px;width:1775px;height:500px;}
</style>
<script type="text/javascript">
function go_join(){
	if(document.formm.id.value==""){
		alert("아이디를 입력해주세요.");
		document.formm.id.focus();
	 }else if(document.formm.id.value!=document.formm.reid.value){
		alert("아이디를 중복 체크를 해주세요.");
		document.formm.id.focus(); 
	}else if(document.formm.pwd.value==""){
		alert("비밀번호를 입력 해주세요.");
		document.formm.pwd.focus();
	}else if(document.formm.pwd.value!=document.formm.pwd_re.value){
		alert("비밀번호가 같지 않습니다.");
		document.formm.pwd.focus();
	}else if(document.formm.name.value==""){
		alert("이름을 입력 해주세요.");
		document.formm.name.focus();
	}else{
		document.formm.action="Join";
		document.formm.submit();
	}
}
function idcheck(){
	if(document.formm.id.value==""){
		alert("아이디를 입력해주세요");
		document.formm.id.focus();
		return ;
	}
	var url="id_check_form?id="+document.formm.id.value;
	var pop="toolbar=no,menubar=nu,scrollbars=yes, resizable=no,width=500,height=200";
	window.open(url,"_blank_1",pop);
}

</script>
</head>
<body>
<form name="formm" method="post">
	<div id="join_main">
		<div id="temp"></div>
		<div id="join_title">회 원 가 입</div>
		<div id="part">
			<img src="<c:url value='resources/images/dong2.png' />" style="width: 700px;"/>
		</div>
		<div id="cont">
			개인정보입력
			<hr>
			<table>
			<tr>
				<th>아이디</th>
				<td>&nbsp;&nbsp;
					<input type="text" name="id">&nbsp;&nbsp;
					<input type="button" value="중복 검사" style="color:white; font-size: 90%;cursor:pointer;
						background: linear-gradient(to bottom, #cdcdcd 0%,#ababab 48%,#8f8f8f 51%,#8f8f8f 100%);" 
						onclick="idcheck()">
					<input type="hidden" name="reid">
					&nbsp;*4자 이상
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>&nbsp;&nbsp;
					<input type="password" name="pwd">&nbsp;&nbsp;*10자리 이상
				</td>
			</tr>
			<tr>
				<th>비밀번호확인</th>
				<td>&nbsp;&nbsp;
					<input type="password" name="pwd_re">
				</td>
			</tr>
			<tr>
				<th>고객명</th>
				<td>&nbsp;&nbsp;
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>&nbsp;&nbsp;
					<input type="text" size="5" name="phone1">
					 - <input type="text"size="8" name="phone2">
					 - <input type="text"size="8" name="phone3">
				</td>
			</tr>  
			<tr> 
				<th>이메일</th>
				<td>&nbsp;&nbsp;
					<input type="text" name="email" size="15"> @ 
					<input type="text" name="domain">
				</td>
			</tr>
		</table>
		<div id="temp"></div><div id="temp"></div>		
		<div id="und_btn">
			<input type="button" value="가입" style="color:white;cursor:pointer;
			background: linear-gradient(to bottom, #616878 0%,#495164 100%);" onclick="go_join()">
			<input type="reset" value="취소" style="color:white;cursor:pointer;
			background: linear-gradient(to bottom, #cdcdcd 0%,#ababab 48%,#8f8f8f 51%,#8f8f8f 100%);">
		</div>
		</div>
	</div>
</form>
<%@ include file="/resources/headerfooter/Footer.jsp" %>