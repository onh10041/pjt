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
var fade=1;

$(function(){
	$('#a').click(function(){
		if(fade==0){
				$('#b').animate({opacity:0},'slow');	
				$('#b').animate({'z-index':0},'slow');
			fade=1;
		}else if(fade==1){ 
				$('#b').animate({opacity:1},'slow');	
				$('#b').css({'z-index':20});
			fade=0;
		}
	});
});
</script>
<style type="text/css">
#dinning_all_base{position:relative;width:100%;height:800px;}
#dinning_base{position:relative;margin:0 auto;width:1000px;height:850px; }
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

#play_icon{position:relative;float:right;widht:50px;height:50px;cursor:pointer;}
#b{position:absolute;width:700px;height:550px;right:0;z-index:-10;opacity:0;}
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
		<div id="play_base">
			<div class="play">
				<iframe id="b" width="700px" height="550px;" src="https://www.youtube.com/embed/skAep2lTHwM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
		</div>
		<div id="slide_base">
			<div id="gallery">
				<div id="img_list">
					<img src="<c:url value='resources/images/Dining/pool16.jpg' /> " width="700" height="360" />
					<img src="<c:url value='resources/images/Dining/pool17.jpg' /> " width="700" height="360" />
					<img src="<c:url value='resources/images/Dining/pool18.jpg' /> " width="700" height="360" />
					<img src="<c:url value='resources/images/Dining/pool20.jpg' /> " width="700" height="360" />
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
					<div class="fit_title">Outdoor Swimming Pool</div>					
					<div class="fit_content">
						<div style="border-bottom:1px dotted black;height:145px;'">
							<div class="fit_content_title" style="height:145px;">◎&nbsp; 소개</div>
							<div class="fit_content_content">
								본관 5층에 위치한 수영장은 국내에 몇 안 되는 도심 속 실외 수영장으로써 국내 최고의 DJ들이 DJing하는 음악과 함께 술, 음식 등을 즐길 수 있는 클럽풀입니다. 
								수영장에서 내려다보이는 서울 도심 속 풍경을 바라보면서 바쁜 생활 속에 지친 여러분의 스트레스를 시원히 날려줄 수 있는 기회를 즐기시길 바랍니다.<br><br>
								만 19세 미만 출입 금지<br>
								객실고객 : 수영장 입장료 50% 할인
								<div id="play_icon">
									<img src="<c:url value='resources/images/Dining/btn_mov.jpg' /> " id="a">
								</div>
							</div>
							
						</div>
						<div style="border-bottom:1px dotted black;height:70px;margin-top:10px;">
							<div class="fit_content_title" style="height:70px;">◎&nbsp; 영업시간</div>
							<div class="fit_content_content"> 
								매년 5월 말 ~ 9월 초<br>
								10:00 ~ 18:00<br>
								[야간파티는 입장료 별도]
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
								본관 5층
							</div>
						</div>
						<div style="border-bottom:1px dotted black;height:35px;margin-top:10px;">
							<div class="fit_content_title" style="height:35px;">◎&nbsp; 대관문의</div>
							<div class="fit_content_content"> 
								02-1234-1234
							</div>
						</div>
					</div>
		</div>
	</div>
</div>
<%@ include file="/resources/headerfooter/Footer.jsp" %>