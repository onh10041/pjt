<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>
<script src="js/jquery-3.4.1.js"></script>
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
#Room_context_allbase{position:relative;;width:100%;height:1000px;}
#Room_context_base{position:relative;;width:1090px;height:1000px;margin:0 auto;}
#Room_context{position:relative; width:800px; height:1000px;float:right;}   
#Room_context_img{position:relative; width:720px; height:335px;  left:40px; top:20px;}
#Room_context_text{position:relative;width:720px;height:125px;left:40px;top:20px;font-size:85%;}
#Room_context_if{position:relative; width:720px; height:380px;  left:40px; top:20px;
	background-color:#F1F2E9;}
#Room_context_request{position:relative;width:225px;height:380px;left:495px; 
	top:-210px;background-color:#A86C3A;color:white;}
#Room_context_request ul{font-size:90%;}
#Room_context_icons{position:relative; width:326px; height:162px;  left:-365px; top:-75px;}
/* ==================================================================================
Sub_menu부분 css
================================================================================= */
#left-menu{position:relative;width:200px;height:320px;border:1px solid silver;float:left;
	font-size:80%;z-index:20;margin-left:85px;}
.left_menu_list{list-style:none;font-size:15;}
.left_menu_list li{margin-bottom:15px; cursor:pointer; height:20px; border-bottom:1px solid silver;}
</style>
</head>
<body>
<div id="Room_context_allbase">
	<div id="Room_context_base">
		<div id="left-menu">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;HAMILTON</h2>
			<ul class="left_menu_list">
				<li><a href="Business_Double" style="color:black;">Business Double</a></li>
				<li><a href="Standard_Double" style="color:black;">Standard Double</a></li>
				<li><a href="Standard_Twin" style="color:black;">Standard Twin</a></li>
				<li><a href="Deluxe_Twin" style="color:black;">Deluxe Twin</a></li>
				<li><a href="Triple" style="color:black;">Triple</a></li>
				<li><a href="Suite" style="color:black;">Suite</a></li>
			</ul>   
			<div style=" width:170px; height:50px; line-height:47px;color:#666;font-size:20px; text-align:center;
				border-radius:40px; position:relative; left:15px; bottom:10px;" id="clock">
			</div>
		</div>
		<div id="Room_context" >
			<div id="Room_context_img">
				<img src="<c:url value='resources/images/Room/suite.jpg' /> "/>
			</div>
			<div id="Room_context_text">
				<h3>Suite</h3>
				침실과 거실의 분리를 통해 용도에 맞게 구성하였고, 특히 침실 창호 부분에는 각별히 가구적인 개념을 도입한 슬라이딩 
				도어를 설치하여 닫으면 벽체와 일치되고, 열면 외부와 소통할 수 있는 공간으로 디자인 하였습니다. 현대적 감각을 반영한 
				디자인과 집과 같은 여유로움과 함께 특급 호텔의 품격이 완벽히 조화된 시설 및 델루나의 품격 있는 서비스는 성공적인 
				비즈니스와 안락한 휴식 두 가지 모두를 완벽하게 충족시켜드리는 단 하나의 공간이 될 것입니다.
			</div>
			<div id="Room_context_if">
				<ul style="position:relative;font-size:85%;line-height:28px;top:10px;">
					<li>침대타입 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 Double</li>
					<li>객실크기 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;47.34㎡</li>
					<li>
						룸서비스 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조식 07:00 ~ 10:00<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;음료 10:00 ~ 11:00<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;음료&음식 11:00 ~ 21:30
					</li>
					<li>투숙객특전 : &nbsp;&nbsp;객실 어메니티 제공, 생수 2병 제공</li>
					<li>편의시설</li>
				</ul>
				<div id="Room_context_request">
					<div style="position:relative;top:10px;">
						<div style="font-size:110%;font-weight:bold;">
							<span>&nbsp;&nbsp;DELLUNA</span><span style="color:#FFD259">&nbsp;REQUEST</span>
						</div>	
						<div style="position:relative;font-size:75%;top:10px;">
							&nbsp;&nbsp;&nbsp;&nbsp;DELLUNA 호텔 이용에 대한 <br>
							&nbsp;&nbsp;&nbsp;&nbsp;문의사항이나 궁금한 점 있으신가요?
						</div>
						<input type="button" value="예약하기" 
							style="margin-left:140px;margin-top:25px;background:#B09D77;color:white;cursor:pointer;">
						<ul>
							<li>INQUIRY<br>객실이용문의<br>02-3786-6000</li>
							<li>
								CHECK-IN/ CHECK-OUT<br>  
								체크인 시간14:00<br>
								체크아웃 시간12:00 
							</li> 
						</ul> 
						<div id="Room_context_icons">
							<img src="<c:url value='resources/images/Room/room_icon1.png' /> "/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/resources/headerfooter/Footer.jsp" %>