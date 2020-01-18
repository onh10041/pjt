<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>Insert title here</title>
<style type="text/css">
#header{position:relative;width:100%;height:115px;margin:0 auto;}
#head{position:relative; width:100%; height:75px;} 
#head_1{position:relative;width:290px;height:70px;float:left;}
#head_2{position:relative;width:50px;height:15px;border-right:1px solid silver;top:27px;
	font-size:85%;text-align:center;float:right;}
#head_2_1{position:relative;width:450px;height:15px;top:27px;float:right;
	font-size:85%;text-align:right;}
#head_3{position:relative;width:50px;height:15px;border-right:1px solid silver;top:27px;
	font-size:85%;text-align:center;float:right;}
#head_4{position:relative;width:50px;height:15px;border-right:1px solid silver;top:27px;
	font-size:85%;text-align: center;float:right;} 
#head2{position:relative; width:120%;left:-10%;height:40px; background-color:#3C0106;}
#sub_head{position:relative;width:1000px;height:40px;margin:0 auto;}
#head2-1{position:relative; width:165px; height:20px; float:left;
	text-align: center; color:white; font-size:85%; padding:10px 0px;}
#head2-2{position:relative; width:170px; height:20px; float:left;
	text-align: center;color:white; font-size:85%; padding:10px 0px;}
#head2-3{position:relative; width:200px; height:20px; float:left;
	text-align: center;color:white; font-size:85%; padding:10px 0px;}
#head2-5{position:relative; width:165px; height:20px; float:left;
	text-align: center; color:white;font-size:85%; padding:10px 0px;}
#head2-6{position:relative; width:155px; height:20px; float:left;
	text-align: center;color:white;font-size:85%; padding:10px 0px;}
#head2-7{position:relative; width:132px; height:20px; float:left;
	text-align: center; color:white;font-size:85%; padding:10px 0px;}
#head-slide{position:absolute; width:1000px; height:180px; top:40px;
	background-color:rgba(0,10,3,0.8);display:none; z-index:30;}
#head-slide_base{position:relative;width:965px;height:180px;margin:0 auto;}
#head-slide_row{position:relative;height:180px;float:left;} 
#head-slide_row li{list-style:none;font-size:80%;color:white;cursor:pointer;}
a{text-decoration:none;}
a:hover{text-decoration:underline;}
#head-slide a:hover{color:#853100;text-decoration:underline;}
#head-slide a{text-decoration:none; color:white;}
 /* <!-- ==================================================================================
여기까지 header부분 css
================================================================================= --> */
footer{position:relative;width:120%;left:-10%;}
#footer{position:relative;margin:0 auto;width: 950px;height: 50px;}
 /* <!-- ==================================================================================
여기까지 footer부분 css
================================================================================= --> */ 

</style>
<script src="resources/js/jquery-3.4.1.js"></script> 
<script type="text/javascript"> 
$(function(){$('#sub_head').mouseenter(function(){$('#head-slide').stop().slideDown('slow');});});
$(function(){$('#head-slide').mouseenter(function(){$('#head-slide').stop().slideDown('slow');});});
$(function(){$('#sub_head').mouseleave(function(){$('#head-slide').stop().slideUp('slow');});});
$(function(){$('#head-slide').mouseleave(function(){$('#head-slide').stop().slideUp('slow');});});
$(function(){$('#head-slide div ul li').mouseenter(function(){$(this).css('color','#853100')});});
$(function(){$('#head-slide div ul li').mouseleave(function(){$(this).css('color','white')});});

/* ==============================================================================================
여기까지 머릿부분 jQUERY
============================================================================================== */
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
</script>
</head>
<body onload="printClock()" style="overflow-x:hidden">
<div id="header">
	<div id="head">	
		<div style="width:900px;height:75px;margin:0 auto;">
		<div id="head_1">
			<a href="/project/">
				<img src="<c:url value='resources/images/logo.png' />" 
					style="width: 290px; height: 70px;position:relative;right:95px;">
			</a>
		</div>
		<c:choose>
				<c:when test="${empty LoginUser}">
					<div id="head_2"><a href="/project/" style="color:black;">home</a></div>
	  				<div id="head_3"><a href="Login_Form" style="color:black;">login</a></div>
	   				<div id="head_4"><a href="Join_Form" style="color:black;">join</a></div>
       			</c:when>
       			<c:otherwise>
       				<div id="head_2_1">
       					${LoginUser.name }(${LoginUser.id })님 환영합니다.
       					<input type="button" value="회원정보수정" style="cursor:pointer;"
       						onclick="location.href='Member_Update_Form'"> 
       					<input type="button" value="로그아웃" style="cursor:pointer;" 
       						onclick="location.href='Logout'">        					
       				</div>		
       			</c:otherwise>
		</c:choose>	   
		</div>
		
	</div>
	<div id="head2">
		<div id="sub_head">
		    <div id="head2-1">DELLUNA</div>
		    <div id="head2-2">
		    	<a href="Room_Info" style="color:white;">ROOM</a>
		    </div>
		    <div id="head2-3">
		    	<a href="Dining" style="color:white;">SERVICE&amp;FACILITY</a>
		    </div>
		    <div id="head2-5">RESERVATION</div>
		    <div id="head2-6">MEMBERSHIP</div>
		    <div id="head2-7">
		    	<a href="QA_Form" style="color:white;">Q&amp;A</a>
		    </div>	    
	      <div id="head-slide">
	           <div id="head-slide_base">  
	               	<div id="head-slide_row" style="width:140px;">
	                      <ul>
	                        <li><a href="Story">Delluna Story</a></li>
	                        <li><a href="Location" >Location</a></li>
	                      </ul>
	                  </div>
	                  <div id="head-slide_row" style="width:190px;">
	                       <ul>
	                        <li><a href="Business_Double">Business Double</a></li>
							<li><a href="Standard_Double">Standard Double</a></li>
							<li><a href="Standard_Twin">Standard Twin</a></li>
							<li><a href="Deluxe_Twin">Deluxe Twin</a></li>
							<li><a href="Triple">Triple</a></li>
							<li><a href="Suite">Suite</a></li>
	                      </ul>
	                  </div>
	                  <div id="head-slide_row" style="width:195px;">
	                      <ul>
	                      	<li><a href="Dining_Grill">Grill</a></li>
							<li><a href="Dining_Hall">Banquet Hall</a></li>
							<li><a href="Dining_Meet">Meeting Room</a></li>
							<li><a href="Dining_Fit">Fitness Center</a></li>
							<li><a href="Dining_Sauna">Sauna</a></li>
							<li><a href="Dining_Pool">Outdoor Pool</a></li>							
	                      </ul>
	                  </div>
	                  <div id="head-slide_row" style="width:160px;">
	                      <ul>
	                        <li><a href="Reservation_Form">Reservation</a></li>
	                        <li><a href="Reservation_Confirm">Confirm</a></li>
	                      </ul>
	                  </div>
	                  <div id="head-slide_row" style="width:167px;">
	                       <ul>
	                        <li><a href="Login_Form" style="color:white;">로그인</a></li>
	                        <li><a href="Join_Form" style="color:white;">회원가입</a></li>
	                      </ul>
	                  </div> 
	                  <div id="head-slide_row" style="width:104px;">
	                       <ul>
	                        <li><a href="QA_Form" style="color:white;">Q&amp;A</a></li>
	                      </ul>
	                  </div>
	   			</div>
	   		</div>
	   	</div>
	</div>
</div>
<!-- ===============================================================================

여기가지 머릿부문 div

=============================================================================== -->
</head>