<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>
<style type="text/css">
#map_all_base{position:relative;width:1000px;height:1150px;margin:0 auto;}
#map_sub_base{position:relative;width:780px;height:1100px;margin:0 auto;top:30px;float:right;}
#map_base {position:relative;width:780px;height:1100px;margin:0 auto;float:right;}
#barinfo_table{position:relative;width:780px;height:596px;}
#bar1 {position:absolute;width:250px;height:40px;border:1px solid silver;left:25px;border-radius:15px 15px 0 0;
	top:50px;text-align:center;line-height:30px;cursor:pointer;background:#f3f3f3;font-size:90%;}  
#bar2 {	position: absolute;width: 250px;height: 40px;border: 1px solid silver;left: 275px;border-radius:15px 15px 0 0;
	top:50px;text-align: center;line-height: 30px;cursor: pointer;background:white;font-size:90%;} 
#bar3 {position: absolute;width: 250px;height: 40px;border: 1px solid silver;left: 525px;border-radius:15px 15px 0 0;
	top:50px;text-align: center;line-height: 30px;cursor: pointer;background:white;font-size:90%;}
#bar1_text {position:absolute;width:750px;height:550px;border:1px solid silver;left:25px;top:90px;opacity:1;}
#bar2_text {position:absolute;width:750px;height:550px;border:1px solid silver;left:25px;top:90px;opacity:0;}
#bar3_text {position:absolute;width:750px;height:550px;border:1px solid silver;left:25px;top:90px;opacity:0;}
#bar1_text_left {text-align:center;position:absolute;width:250px;height:110px;border:1px solid silver;
	background:#f3f3f3;line-height:80px;font-size:90%;}
#bar1_text_right{position:absolute;width:500px;height:110px;border:1px solid silver;left:250px;font-size:80%;}
#bar2_text_left{position:absolute;width:250px;border:1px solid silver;background:#f3f3f3;
	font-size:90%;text-align:center;}
#bar2_text_right{position:absolute;width:500px;border:1px solid silver;left:250px;font-size: 80%;}

#left-menu{position:relative;width:200px;height:320px;border:1px solid silver;font-size:80%;
	z-index:20;float:left;}
.left_menu_list{list-style:none;}
.left_menu_list li{margin-bottom:15px; cursor:pointer; height:20px; border-bottom:1px solid silver;}
</style>
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

	$(function() {
		$('#bar1').click(function() {
			$('#bar1_text').css('opacity', 1)
			$('#bar2_text').css('opacity', 0)
			$('#bar3_text').css('opacity', 0)			
		});
	});	
	$(function() {
		$('#bar1').click(function() {
			$('#bar1').css('background','#f3f3f3')
			$('#bar2').css('background','white')
			$('#bar3').css('background','white')	
		});
	});
	$(function() {
		$('#bar2').click(function() {
			$('#bar1_text').css('opacity', 0)
			$('#bar2_text').css('opacity', 1)
			$('#bar3_text').css('opacity', 0)			
		});
	});	
	$(function() {
		$('#bar2').click(function() {
			$('#bar1').css('background','white')
			$('#bar2').css('background','#f3f3f3')
			$('#bar3').css('background','white')		
		});
	});	
	$(function() {
		$('#bar3').click(function() {
			$('#bar1_text').css('opacity', 0)
			$('#bar2_text').css('opacity', 0)
			$('#bar3_text').css('opacity', 1)				
		});
	});
	$(function() {
		$('#bar3').click(function() {
			$('#bar1').css('background','white')
			$('#bar2').css('background','white')
			$('#bar3').css('background','#f3f3f3')			
		});
	});
</script>
<div id=map_all_base>
	<div id="left-menu">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;DELLUNA</h2>
			<ul class="left_menu_list">
				<li><a href="Story" style="color:black;">Delluna Story</a></li>
				<li><a href="Location" style="color:black;">Location</a></li>
			</ul>   
			<div style=" width:170px; height:50px; line-height:47px;color:#666;font-size:20px; text-align:center;
				border-radius:40px; position:relative; left:15px; top:30px;" id="clock">
			</div>
		</div>
	<div id="map_sub_base">
		<div id=map_base>
			<div id="daumRoughmapContainer1573632497634"
				class="root_daum_roughmap root_daum_roughmap_landing"
				style="left: 80px;"></div>
			<div id="barinfo_table">
				<div id="bar1">서울시내 교통안내</div>
				<div id="bar2">인천국제공항에서 오시는 길</div>
				<div id="bar3">김포공항에서 오시는길</div>
				<div id="bar1_text">
					<div id="bar1_text_left" style=""><h3>강남방면에서 오시는길</h3>
					</div>
					<div id="bar1_text_left" style="top:110px;"><h3>명동방면에서 오시는길</h3>
					</div>
					<div id="bar1_text_left" style="top:220px;"><h3>주차안내</h3>
					</div>
					<div id="bar1_text_left" style="top:330px;"><h3>지하철</h3>
					</div>
					<div id="bar1_text_left" style="top:440px;"><h3>버스</h3>
					</div>
					<div id="bar1_text_right">
						<ul>
							<li>강남대로(3.6㎞) - 한남대로(1.8㎞) - 이태원로(1.3㎞)</li>
							<li>이동거리 : 총 6.66㎞</li>
							<li>소요시간 : 약 20분</li>
							<li>택시비 : 약 8,500원</li>
						</ul>
					</div>
					<div id="bar1_text_right" style="top:110px;">
						<ul>
							<li>삼일대로(2.2㎞) - 이태원로(1.3㎞)</li>
							<li>이동거리 : 총 3.9㎞</li>
							<li>소요시간 : 약 12분</li>
							<li>택시비 : 약 5,300원</li>
						</ul>
					</div>
					<div id="bar1_text_right" style="top:220px;">
						<ul>
							<li>고객 주차공간이 협소한 관계로 주차가 어려울 수도 있으니 02-3786-6321으로 사전 문의주시면
								자세히 안내해 드리겠습니다.</li>
						</ul>
					</div>
					<div id="bar1_text_right" style="top:330px;">
						<ul>
							<li>지하철 6호선 이태원역 1, 2번 출구 도보 1분</li>
						</ul>
					</div>
					<div id="bar1_text_right" style="top:440px;">
						<ul>
							<li>해밀톤호텔 정류장 하차[간선]110A, 110B, 421[순환]03, 90S투어 [공항]6030</li>
							<li>보광동입구 정류장 하차[간선]400, 405, 421</li>
							<li>이태원역앞 정류장 하차[마을]버스용산01</li>
						</ul>
					</div>
				</div>
				<div id="bar2_text">
					<div id="bar2_text_left" style="height:200px;line-height: 160px;"><h3>자가용</h3></div>
					<div id="bar2_text_left" style="height:200px;top:200px;line-height: 160px;"><h3>지하철</h3></div>
					<div id="bar2_text_left" style="height:150px;top:400px;line-height: 130px;"><h3>리무진</h3></div>
					<div id="bar2_text_right" style="height:200px;">
						<ul>
							<li>경로 1(약 1시간 3분 소요/총 61.39㎞)</li>
							<li>공항로(3.4㎞) - 인천국제공항고속도로(37.3㎞) - 강변북로(11.0㎞)</li>
							<li>이동거리 : 61.38㎞</li>
							<li>소요시간 : 약 1시간 10분</li>
							<li>통행료 : 약 7,600원</li>
							<li>택시비 : 약 45,000원</li>
						</ul>
					</div>
					<div id="bar2_text_right" style="height:200px;top:200px;">
						<ul>
							<li>공항인천국제공항역 - 공덕역에서<br> 지하철 6호선으로 환승 - 이태원역 하차 - 1, 2번
								출구 도보 1분
							</li>
							<br>
							<li>소요시간 : 약 1시간 20분</li>
							<li>요금 : 4,150원</li>
						</ul>
					</div>
					<div id="bar2_text_right" style="height:150px;top:400px;">
						<ul>
							<li>공항6030번 승차 - 이태원 해밀톤호텔 정류장 하차 - 도보 3분 거리</li>
							<li>탑승위치 : 인천공항 6B, 13A 정류장</li>
							<li>요금 : 16,000원</li>
							<li>배차간격 : 약 20 ~ 30분 간격</li>
							<li>소요시간 : 약 1시간 40분</li>
						</ul>
					</div>
				</div>
				<div id="bar3_text">
					<div id="bar2_text_left" style="height:150px;line-height: 120px;"><h3>자가용</h3></div>
					<div id="bar2_text_left" style="height:150px;top:150px;line-height: 130px;"><h3>지하철</h3></div>
					<div id="bar2_text_left" style="height:250px;top:300px;line-height: 200px;"><h3>리무진</h3>	</div>
					<div id="bar2_text_right" style="height:150px;">
						<ul>
							<li>공항대로(6.7㎞) - 강변북로(7.1㎞) - 이태원로(1.8㎞)</li>
							<li>이동거리 : 약 21.36㎞</li>
							<li>소요시간 : 약 40분</li>
							<li>택시비 : 약 20,000원</li>
						</ul>
					</div>
					<div id="bar2_text_right" style="height:150px;top:150px;">
						<ul>
							<li>공항김포공항역승차 - 공덕역에서 지하철 6호선으로 환승 - 이태원역 하차 - 1, 2번 출구 도보 1분</li>
							<li>소요시간 : 50분</li>
							<li>요금 : 1,550원</li>
						</ul>
					</div>
					<div id="bar2_text_right" style="height:250px;top:300px;">
						<ul>
							<li>공항6001번 승차 - 숙대입구역 정류장 간선421번 환승 - 해밀톤호텔 정류장 하차 -도보 3분 거리</li>
							<li>탑승위치 : 김포공항 국제선 정류장</li>
							<li>요금 : 8,000원</li>
							<li>배차간격 : 약 10 ~ 20분 간격</li>
							<li>소요시간 : 약 50분</li>
							<br>
							<li>605번 승차 - 숙대입구역 정류장 간선 421번 환승 - 해밀톤호텔 정류장 하차 - 도보 3분거리</li>
							<li>탑승위치 : 김포공항 국제선 정류장</li>
							<li>요금 : 1,600원</li>
							<li>배차간격 : 약 10분 간격</li>
							<li>소요시간 : 약 1시간 30분</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<!-- ===================================================================
카카오지도 필요한 소스 시작 -->
	<script charset="UTF-8" class="daum_roughmap_loader_script"
		src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
	<script charset="UTF-8">
		new daum.roughmap.Lander({
			"timestamp" : "1573632497634",
			"key" : "vtvv",
			"mapWidth" : "640",
			"mapHeight" : "360"
		}).render();
	</script>
<%@ include file="/resources/headerfooter/Footer.jsp" %>