<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>
<style type="text/css">
#minfo_update_all_base{position:relative;width:100%;height:700px;}
#minfo_update_base{position:relative;border:1px solid black;width:500px;height:600px;margin:0 auto;
	border-radius:50px;box-shadow:3px 3px 3px 3px #999;top:25px;} 
#minfo_update_base h2{height:60px;line-height:60px;margin-left:48px;}
#minfo_update_base h5{width:112px;margin:0;line-height:33px;margin-left:50px;}
#input_base{position:relative;width:640px;height:80px;}
#id-text{position:relative;width:160px; height:35px;float:left; }
#input_text{position:relative;width:250px;height:30px;font-size:90%;left:10px;margin-top:4px;border:0;}
#void{position:relative; width:600px; height:50px;}
#void-text{position:relative;width:450px;height:20px;font-size:80%;color:silver;text-align:right;}
#void-button{position:relative;float:left;}
#input_info{position:relative;border:1px solid black;width:300px;height:40px;border-radius:20px;
	overflow:hidden;z-index:10;} 	
#infoup_bts_base{position:relative;width:300px;height:80px;margin:0 auto;}
#reset{position:relative;float:right;}
#submit{position:relative;float:left;}  
</style>
<script type="text/javascript">
function go_join(){
	if(document.formm.pwd.value==""){
		alert("비밀번호를 입력 해주세요.");
		document.formm.pwd.focus();
	}else if(document.formm.pwd.value!=document.formm.pwd_re.value){
		alert("비밀번호가 같지 않습니다.");
		document.formm.pwd.focus();
	}else if(document.formm.name.value==""){
		alert("이름을 입력 해주세요.");
		document.formm.name.focus();
	}else if(document.formm.phone1.value==""){
		alert("전화번호를 입력해주세요");
		document.formm.phone1.focus();
	}else if(document.formm.phone2.value==""){
		alert("전화번호를 입력해주세요");
		document.formm.phone2.focus();
	}else if(document.formm.phone3.value==""){
		alert("전화번호를 입력해주세요");
		document.formm.phone3.focus();
	}else if(document.formm.email.value==""){
		alert("이메일을 입력해주세요");
		document.formm.email.focus();
	}else if(document.formm.domain.value==""){
		alert("도메인을 입력해주세요");
		document.formm.domain.focus();
	}
	else{
		document.formm.action="Member_Update";
		document.formm.submit();
	}
}
</script>
</head>
<body>
<form name="formm" method="post">
<div id="minfo_update_all_base">
	<div id="minfo_update_base">
		<h2>회원정보 수정</h2>
		<div id="input_base">
			<div id="id-text"><h5>비밀번호 입력:&nbsp;&nbsp;</h5></div>
			<div id="input_info">&nbsp;
				<input type="password" name="pwd" id="input_text">		
				<input type="hidden" value="${LoginUser.id}" name="id">		
			</div>
			<div id="void">
				<div id="void-text">10~20자 사이로 입력</div>
			</div>
		</div>
		<div id="input_base">
			<div id="id-text"><h5>비밀번호 재입력:&nbsp;&nbsp;</h5></div>
			<div id="input_info" style="float:left;">&nbsp;
				<input type="password" name="pwd_re" id="input_text">
			</div>
			<div id="void">
				<div id="void-text">위와 동일하게 입력하시오.</div>
			</div>
		</div>
		<div id="input_base">
			<div id="id-text"><h5>이름 입력:&nbsp;&nbsp;</h5></div>
			<div id="input_info">&nbsp;
				<input type="text" name="name" id="input_text">
			</div>
			<div id="void">
				<div id="void-text">1~20자 사이로 입력.</div>
			</div>
		</div>
		<div id="input_base">
			<div id="id-text"><h5>전화번호 입력:&nbsp;&nbsp;</h5></div>
			<div id="input_info">&nbsp;&nbsp;&nbsp;
				<input type="text" name="phone1" style="width:65px;height:30px;margin-top:2px;border-bottom:1px solid black;">&nbsp;-
				<input type="text" name="phone2" style="width:70px;height:30px;margin-top:2px;border-bottom:1px solid black;">&nbsp;-
				<input type="text" name="phone3" style="width:70px;height:30px;margin-top:2px;border-bottom:1px solid black;">
			</div>
			<div id="void">
				<div id="void-text">연락가능한 번호로 입력.</div>
			</div>
		</div>
		<div id="input_base">
			<div id="id-text"><h5>이메일 입력:&nbsp;&nbsp;</h5></div>
			<div id="input_info">&nbsp;&nbsp;&nbsp;
				<input type="text" name="email" style="width:95px;height:30px;margin-top:2px;border-bottom:1px solid black;">@
				<input type="text" name="domain" style="width:130px;height:30px;margin-top:2px;border-bottom:1px solid black;">
			</div>
			<div id="void">
				<div id="void-text">발송가능한 이메일로 입력.</div>
			</div>
		</div>
		<div id="infoup_bts_base">
			<div id="submit">
				<input type="button" value="작성완료" onclick="go_join()"
					style="width:120px;height:60px;font-size:100%;">
			</div>
			<div id="reset">
				<input type="reset" value="다시작성"
					style="width:120px;height:60px;font-size:100%;">
			</div>
		</div>
	</div>
</div>
</form>
<%@ include file="/resources/headerfooter/Footer.jsp" %>