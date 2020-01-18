<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>
<script src="http://code.jquery.com/jquery-1.11.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
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
$(function(){	
	$('#remote div').click(function(){
		var k = $(this).index();
		var s1 = '#remote div:eq(' + k + ')';		
		for(var i=0; i<=3; i++){
			var s3 = '#remote div:eq(' + i + ')';			
			$(s3).removeClass('re_sel');					
		}
		$(s1).addClass('re_sel');
		$('#img_list').animate({left:(-1)*k*706}, 600);
		
	});	
	var p=1;
	setInterval(function(){
		var s1 = '#remote div:eq(' + p + ')';
		$(s1).click();
		p++;
		if(p>3)p=0;
	},3000);
});
</script>
<style type="text/css">
#dinning_all_base{position:relative;width:100%;height:800px;}
#dinning_base{position:relative;margin:0 auto; width:1000px; height:800px; }
#gallery{position:relative;margin:0 auto;width:700px;height:360px;overflow:hidden;right:0;}	
#slide_base{position:relative;width:700px;height:400px;right:0px;float:right;}
#img_list{position:relative;top:0px;left:0px;width:2824px;height:350px;}		
#remote{position:relative;width:150px;height:20px;float:right;margin-top:5px;}	
.re{position:relative;width:15px;height:15px;background:silver;margin-left:5px;float:left;cursor:pointer;}
.re_sel{background:#182D7C;cursor:pointer;}
#bottom_div{position:relative;width:700px;height:400px;float:right;}
.fit_title{width:700px;height:40px;font-size:110%;font-weight:bold;line-height:40px;border-bottom:3px solid black;}
.fit_content{posision:relative;widht:700px;height:300px;margin-top:10px;}
.fit_content_title{position:relative;width:130px;font-size:90%;color:#182D7C;font-weight:bold;float:left;}
.fit_content_content{position:relative;width:550px;font-size:90%;float:left;}
/* ==================================================================================
Sub_menu부분 css
================================================================================= */
#left-menu{position:relative;width:200px;height:320px;border:1px solid silver;float:left;
	font-size:80%;z-index:20;margin-left:45px;}
.left_menu_list{list-style:none;font-size:15;}
.left_menu_list li{margin-bottom:15px; cursor:pointer; height:20px; border-bottom:1px solid silver;}
</style> 
</head>
<body>
<div id="dinning_all_base">
	<div id="dinning_base">
		<div id="left-menu">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;HAMILTON</h2>
				<ul class="left_menu_list">
					<li><a href="Dining_Grill" style="color:black;">Grill</a></li>
					<li><a href="Dining_Hall" style="color:black;">Banquet Hall</a></li>
					<li><a href="Dining_Meet" style="color:black;">Business Meeting Room</a></li>
					<li><a href="Dining_Fit" style="color:black;">Fitness Center</a></li>
					<li><a href="Dining_Sauna" style="color:black;">Sauna</a></li>
					<li><a href="Dining_Pool" style="color:black;">Outdoor Swimming Pool</a></li>
				</ul>   
			<div style=" width:170px; height:50px; line-height:47px;color:#666;font-size:20px; text-align:center;
				border-radius:40px; position:relative; left:15px; bottom:10px;" id="clock">
			</div>
		</div>
		<div id="slide_base">
			<div id="gallery">
				<div id="img_list">
					<img src="<c:url value='resources/images/Dining/ban01.jpg' /> " width="700" height="360" />
					<img src="<c:url value='resources/images/Dining/ban04.jpg' /> " width="700" height="360" />
					<img src="<c:url value='resources/images/Dining/ban03.jpg' /> " width="700" height="360" />
					<img src="<c:url value='resources/images/Dining/ban05.jpg' /> " width="700" height="360" />
				</div>			 
			</div>
			<div id="remote">
				<div style="margin-left:70px;" class="re re_sel"></div>
				<div class="re"></div>
				<div class="re"></div>
				<div class="re"></div>
			</div>
		</div>
		<div id="bottom_div">
					<div class="fit_title">Banquet Hall</div>					
					<div class="fit_content">
						<div style="border-bottom:1px dotted black;height:95px;">
							<div class="fit_content_title" style="height:65px;">◎&nbsp; 소개</div>
							<div class="fit_content_content">
								작은 모임에서 세계적인 국제행사까지 유치할 수 있는 완벽하고, 다양한 연회장을 구비한 해밀톤호텔 연회장은 잊을 수 없는 감동을 선사해 드립니다. 
								또한 크고 작은 행사부터 가족 연회, 세미나 등 각종 행사의 준비에서 마무리까지 정성을 다해 모실 것을 약속 드립니다.
							</div>
						</div>
						<div style="border-bottom:1px dotted black;height:35px;margin-top:10px;">
							<div class="fit_content_title" style="height:35px;">◎&nbsp; 영업시간</div>
							<div class="fit_content_content"> 
								09:00 ~ 21:00
							</div>
						</div>
						<div style="border-bottom:1px dotted black;height:35px;margin-top:10px;">
							<div class="fit_content_title" style="height:35px;">◎&nbsp; 문의전화</div>
							<div class="fit_content_content">
								02-1234-1234
							</div>
						</div>
						<div style="border-bottom:1px dotted black;height:35px;margin-top:10px;">
							<div class="fit_content_title" style="height:35px;">◎&nbsp; 위치</div>
							<div class="fit_content_content"> 
								본관 3층
							</div>
						</div>
					</div>
		</div>		
	</div>
</div>
<%@ include file="/resources/headerfooter/Footer.jsp" %>