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
<!-- ==================================================================
서브메뉴 jquery
=================================================================  -->

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
<!-- ================================================================
	서브메뉴 시계 jQUERY
================================================================= -->
</script>
<style> 
#history_base{position:relative;width:1000px;height:1000px;margin:0 auto;}
#history_main{position:relative;width:700px;height:920px;margin:0 auto;top:30px;float:right;}
#p1{position: relative; float: left; width: 700px; height: 140px;}
#p2{position: relative; float: left; width: 446px; height: 300px;}
#p3{position: relative; float: left; width: 250px; height: 300px;}
#p4{position: relative; float: left; width: 700px; height: 470px;}

#left-menu{position:relative;width:200px;height:320px;border:1px solid silver;font-size:80%;
	z-index:20;float:left;}
.left_menu_list{list-style:none;}
.left_menu_list li{margin-bottom:15px; cursor:pointer; height:20px; border-bottom:1px solid silver;}
</style>
<article>
	<div id="history_base">
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
		<div id="history_main">
			<div id="p1">
				<img src="<c:url value='resources/images/history/his1.png' /> " style="width:700px; height: 140px;">
			</div>
			<div id="p2">
				<img src="<c:url value='resources/images/history/hotel_pront.png' /> " style="width:446px; height: 300px;">
			</div>
			<div id="p3">
				<img src="<c:url value='resources/images/history/his2.png' /> " style="width:250px; height: 300px;">
			</div>
			<div id="p4">
				<img src="<c:url value='resources/images/history/his3.png' /> " style="width:700px; height: 470px;">
			</div>
		</div>
	</div>
</article>


<%@ include file="/resources/headerfooter/Footer.jsp" %>