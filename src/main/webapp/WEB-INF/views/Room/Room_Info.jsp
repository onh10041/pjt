<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/resources/headerfooter/Header.jsp" %>
<script src="js/jquery-3.4.1.js"></script>
<style type="text/css">
#room_info_all_base{position:relative;width:100%;height:800px;margin:0 auto;}
a {text-decoration: none;}
img {border: none;}
#room_info_base{position:relative;width:1200px;height:800px;margin:0 auto;}
.slider {position:relative;width:1200px;height:680px;margin:0 auto;background-color:white;
  overflow:hidden;}
.slider .panel {width:100%;height:635px;position:relative;margin:0;padding:0;}
.slider .panel a{color:white;}
.slider .panel li {width:100%;height:100%;position:absolute;top:0px;left:0px;color:#fff;
  font-size:30px;display:none;}
.panel li:nth-child(1) {display:block;}
 .btn {position:relative;width:75px;height:30px;margin:0 auto;padding:0;list-style:none;}
.btn li {float:left;width:15px;height:15px;background-color:#000;border-radius:50%;
  margin-left:20px;cursor:pointer;} 
.btn .on {background-color:cadetblue;}
.btn li:hover {background-color:cadetblue;}
.btn li:last-child {margin-right:0px;}
.prev {position:absolute;left:80px;top:325px;width:50px;height:50px;cursor:pointer;z-index:20;}
.next {position:absolute;right:65px;top:325px;width:50px;height:50px;cursor:pointer;}
/* ===============================================================

내용물 시작

=============================================================== */

#room1{position:absolute; width:400px; height:250px;left:185px;}
#room2{position:absolute; width:400px; height:250px;left:635px;}
.cover{position:absolute;width:400px;height:250px;border:1px solid black;z-index:20;
	background-color:black;background-color:rgba(0,10,3,0.6);font-size:45%;opacity:0;}

 /* =====================================================
 슬라이드 내용물 끝
 ===================================================== */

 #button{position:relative;width:140px;height:60px;margin:0 auto;}
</style>

<script type="text/javascript">
$(document).ready(function() {
	  //좌우버튼, 동그라미 버튼 연동 //
	  var wid = $(".slider").width();
	  var i = $(".btn li.on").index();
	  var len = $(".panel li").length;
	  $(".prev").click(function() {
	    if (i == 0) {
	      i = len - 1;
	    } else {
	      i = i - 1;
	    }
	    showSlide();
	  });
	  $(".next").click(function() {
	    if (i == 1) {
	      i = 0;
	    } else {
	      i = i + 1;
	    }
	    showSlide();
	  });
	  $(".btn li").click(function() {
	    i = $(this).index();
	    showSlide();
	  });
 
	 function showSlide() {
	    $(".btn li").removeClass("on");
	    $(".btn li").eq(i).addClass("on");
	    $(".panel li").stop(true, true).fadeOut();
	    $(".panel li").eq(i).stop(true, true).fadeIn();
	  }
	}); 

/* ===============================================================

내용물 시작

=============================================================== */
$(function(){$('.cover').mouseover(function(){$(this).css('opacity',1);});});
$(function(){$('.cover').mouseout(function(){$(this).css('opacity',0);});});


/* =================================================================================

	슬라이드 내용물 끝

==================================================================================	 */

</script>
</head>
<body>
<div id="room_info_all_base">
	<div id="room_info_base">
		<div class="slider">
		<div class="prev">
			<img src="<c:url value='resources/images/prev.png' />" style="width:50px;height:50px;">
		</div>		  
		  <ul class="panel">
		    <li>
		    	<a href="Business_Double">
			        <div id="room1" style="top:60px;">
				        <div class="cover">
				        	# 비지니스 더블 (Business Double Room)<br><br>컴팩트한 구조를 가진 비즈니스 더블 룸은 아늑하고 넉넉한 여유 공간으로 
				        	내 집과 같은 편안함을 느낄 수 있도록 장기투숙을 원하는 비즈니스맨에게 추천하는 객실입니다.<br><br>
				        	바쁜 비즈니스맨의 모든 니즈와 편리함이 만족되는 최신설비와 최상의 서비스를 통해 편안한 휴식을 제공해 드립니다.
						</div>
						<img src="<c:url value='resources/images/hotel/room1.png' /> ">
					</div>
				</a>
				<a href="Standard_Double">
			        <div id="room2" style="top:60px;">
				        <div class="cover">
				        	# 스탠다드 더블 (Standard Double Room)<br><br>
							합리적인 공간 구조를 가지고 있는 더블 룸은 바쁜 일정 중 휴식과 비즈니스를 함께 할 수 있는 공간을 제공하고 있습니다.<br><br>
							고객님께서 편히 쉬실 수 있도록 은은한 조명과 함께 안락하고 편안한 실내분위기를 조성하여 최상의 컨디션을 유지하실 수 있도록 디자인 되었습니다.
						</div>
						<img src="<c:url value='resources/images/hotel/room2.png' /> ">
					</div>	
				</a>
				<a href="Standard_Twin">
			        <div id="room1" style="top:350px;">
				        <div class="cover">
				       		# 스탠다드 트윈 (Standard Twin)<br><br>
							모던한 인테리어로 품위와 실용성을 동시에 추구하는 고객님을 위해 준비된 객실로 외국인 여행객들의 선호도가 가장 높은 객실입니다.<br><br>
							 바쁜 일정에 지쳐있는 고객님께 편안한 휴식과 더불어 다음날의 지속될 삶의 재충전까지 선사하여 성공적인 비즈니스를 준비하는데 한층 더 안락함과 여유를 더해줄 것입니다.
						</div>
						<img src="<c:url value='resources/images/hotel/room3.png' /> ">
					</div>
				</a>
				<a href="Deluxe_Twin">
			        <div id="room2" style="top:350px;">
				        <div class="cover">
				        	# 디럭스 (Deluxe Room)<br><br>
							브라운 컬러와 베이지라는 컬러 사이에 존재하는 무수한 컬러들과 그에 따른 소재의 재구성을 통해 최고인 당신을 위하여 신중하게 디자인 된 
							디럭스 객실입니다.<br><br> 디지털 시대에 걸맞게 책상 위에 멀티콘센트를 삽입하여 TV와 노트북이 연동되게 하였고, 
							효율적인 비즈니스 업무에 필요한 모든 편리함이 만족되는 최신설비와 고객의 취향을 만족시켜주는 최상의 서비스를 통해 실용적이면서도 최고의 순간을 선사합니다.
						</div>
						<img src="<c:url value='resources/images/hotel/room6.png' /> ">
					</div>
				</a>
		    </li>
		    <li>
		    	<a href="Triple">
			        <div id="room1" style="top:60px;">
				        <div class="cover">
				        	# 트리플 (Triple Room)<br><br>
							다양한 라이프 스타일에 맞추어 1개의 더블침대와 2개의 슈퍼싱글을 갖춘 트리플 룸 은 가족단위의 고객들에게 여유롭고 편히 쉬실 수 있는 공간을 제공해 줍니다.<br><br>
							고급 매트리스와 린넨을 이용한 침대와 아늑한 조명이 어우러지는 인테리어는 최고의 여행을 위한 모든 편리함으로 기대 이상의 만족을 드릴 스페셜 룸입니다.
						</div>
						<img src="<c:url value='resources/images/hotel/room5.png' /> ">
					</div>
				</a>
				<a href="Suite">
			        <div id="room2" style="top:60px;">
				        <div class="cover" id="cover">
				        	# 스위트 (Suite Room)<br><br>
							침실과 거실의 분리를 통해 용도에 맞게 구성하였고, 특히 침실 창호 부분에는 각별히 가구적인 개념을 도입한 슬라이딩 도어를 설치하여 닫으면 벽체와 일치되고, 
							열면 외부와 소통할 수 있는 공간으로 디자인 하였습니다.<br><br> 현대적 감각을 반영한 디자인과 집과 같은 여유로움과 함께 특급 호텔의 품격이 완벽히 조화된 시설 및 
							해밀톤의 품격 있는 서비스는 성공적인 비즈니스와 안락한 휴식 두 가지 모두를 완벽하게 충족시켜드리는 단 하나의 공간이 될 것입니다.
						</div>
						<img src="<c:url value='resources/images/hotel/room11.png' /> ">
					</div>
				</a>		       
		    </li>
		  </ul>
		  <div class="next">
		  	<img src="<c:url value='resources/images/next.png' /> " style="width:50px;height:50px;">
		  </div>
		  <ul class="btn">
		    <li class="on"></li>
		    <li></li>
		  </ul>	  
		</div>
		<div id="button">
			<input type=button style="width:120px;height:40px;cursor:pointer;float:right;" 
				value="예약하러 가기" onclick="location.href='Reservation_Form'">
		</div>
	</div>
</div>
<!-- =========================================================

내용물 끝

========================================================= -->
 

<%@ include file="/resources/headerfooter/Footer.jsp" %>