<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>
<script type="text/javascript">
$(function(){
	   $('.left_menu_list li').mouseover(function(){
		   $(this).css('color','#853100');
	   });
});
$(function(){
	   $('.left_menu_list li').mouseout(function(){
		   $(this).css('color','black');
	   });
});
/* ==================================================================
서브메뉴 jquery
================================================================= */
function printClock() {
 var clock = document.getElementById("clock");            // 출력할 장소 선택
 var currentDate = new Date();                                     // 현재시간
 var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
 var amPm = 'AM'; // 초기값 AM
 var currentHours = addZeros(currentDate.getHours(),2); 
 var currentMinute = addZeros(currentDate.getMinutes() ,2);
 var currentSeconds =  addZeros(currentDate.getSeconds(),2);
 if(currentHours >= 12){ // 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
 	amPm = 'PM';
 	currentHours = addZeros(currentHours - 12,2);
 }
 clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +" <span style='font-size:20px;'>"+ amPm+"</span>"; //날짜를 출력해 줌
 setTimeout("printClock()",1000);         // 1초마다 printClock() 함수 호출
}
function addZeros(num, digit) { // 자릿수 맞춰주기
	  var zero = '';
	  num = num.toString();
	  if (num.length < digit) {
	    for (i = 0; i < digit - num.length; i++) {
	      zero += '0';
	    }
	  }
	  return zero + num;
}
/* ================================================================
	서브메뉴 시계 jQUERY
================================================================= */
</script>

<style type="text/css">
#login_base{position:relative;width:920px;height:400px;margin:0 auto;}
#login_main{position:relative;width:650px;height:500px;margin:0 auto;left:70px;} 
#temp{width:500px;height:30px;}
#temp2{width:10px;height:20px;}
#login_title{font-weight:bold;font-size: 140%; position: relative;width:350px;height:50px;margin:0 auto;}
#login_box{position:relative;margin:0 auto;height:250px;width:500px;}
#login{border-bottom:2px solid gray;border-top:2px solid gray;width:363px;height:100px;margin:0 auto;position:relative;}
#id_pwd{width:260px;position:relative;float:left;height:100px;font-size:85%;}
#login_btn{position:relative;float:left;height:60px;width:100px;background:linear-gradient(to bottom, #616878 0%,#495164 100%);
	color:white;font-weight:bold;border:1px solid #495164;}
#id{width:100%;height:30px;position:relative;float:left; } 
#pwd{width:100%;height:30px;position:relative;float:left;}
#join_box{width:363px;height:100px;margin:0 auto;position:relative;}
#join_btn{background:#cdcdcd;color:white;font-size:70%;width:100px;height:25px;border: 1px solid gray;
	background: linear-gradient(to bottom, #cdcdcd 0%,#ababab 48%,#8f8f8f 51%,#8f8f8f 100%); 
	position: relative; float: right;}
/* ==================================================================================
Sub_menu부분 css
================================================================================= */
#left-menu{position:relative;width:200px;height:320px;border:1px solid silver;float:left;
	font-size:80%;z-index:20;}
.left_menu_list{list-style:none;font-size:15;}
.left_menu_list li{margin-bottom:15px; cursor:pointer; height:20px; border-bottom:1px solid silver;}
</style>
</head>
<body>
	<article>
	<form action="Login" method="post">
	<div id="login_base">
		<div id="left-menu">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;HAMILTON</h2>
			<ul class="left_menu_list">
				<li><a href="Login_Form" style="color:black;">Login</a></li>
				<li><a href="Join_Form" style="color:black;">Join Account</a></li>
			</ul>   
			<div style=" width:170px; height:50px; line-height:47px;color:#666;font-size:20px; text-align:center;
				border-radius:40px; position:relative; left:15px; bottom:10px;" id="clock">
			</div>
		</div>
		<div id="login_main">
			<div id="temp"></div>
			<div id="login_title">로&nbsp;그&nbsp;인 </div>
			<div id="login_box">
				<div id="temp"></div>
				<div id="login">
					<div id="id_pwd">
						<div id="temp2"></div>
						<div id="id">아 이 디&nbsp;<input type="text" name="id"></div>
						<div id="pwd">&nbsp;&nbsp;암&nbsp; 호&nbsp;&nbsp;<input type="password" name="pwd"></div>
					</div>
					<div id="temp2"></div>
						<input type="submit" value="로그인" id="login_btn" style="cursor:pointer;">
				</div>
				<div id="join_box">
				  	<div id="temp2"></div>
					<div id="join" style="font-size:90%;">> 아직 저희의 회원이 아니십니까?&nbsp;&nbsp;
						<a href="Join_Form">	
							<input type="button" value="회 원 가 입" id="join_btn" style="cursor:pointer;">
						</a>
						<br><br>
						<div>${message }</div>
					</div>
				</div>
			</div>
		</div> 
	</div>
	</form>
	</article>

<%@ include file="/resources/headerfooter/Footer.jsp" %>