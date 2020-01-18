<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>
<style type="text/css">
.Dining {width:1250px;height:1900px;margin:0 auto;position:relative;top:30px;}
#Dining_top {height:130px;width:450px;margin:0 auto;position:relative;text-align:center;font-size:20px;color:#182D7C;}
#Dining_top img{position:relative;}
#Dining_top_coment {font-weight: bold;font-size: 15px;}
#Dining1 {position:absolute;width:100%;height:1700px;}
#Dining1_1 {height:1700px;width:1150px;margin:0 auto;}
.Dining2_1 {position:relative;width:550px;height:550px;float:left;}
.Dining2_1_right {position:relative;width:550px;height:550px;float:left;margin-left:50px;}
.Dining2_2 {position:relative;width:30px;height:600px;float:left;}
.Dining3_1 {position:relative;width:550px;height:300px;background:silver;top:0px;left:0px;overflow:hidden;}
.Dining3_2 {position:absolute;width: 380px;height:200px;background:white;top:270px;left: 40px;box-shadow:5px 5px 9px grey;border-radius:15px;}
.Dining3_3 {position:absolute;width:170px;height:40px;background:#0F9CFA;top:300px;right: 0px;color:white;font-weight:bold;text-align:center;line-height:40px;}
.Dining4_1 {height:50px;width:250px;font-size:22px;font-weight:bold;text-align:center;	line-height: 50px;margin:0 auto;color:#182D7C;}
.Dining4_2 {height:140px;width:380px;margin:0 auto;text-align:center;font-size:12px;font-weight: bold;color:black;}
.Dining4_3{position:relative;width:100px;height:20px;color:#486BA0;font-weight:bold;font-size:14px;
    text-align: center;float:right;margin-top:130px;}

.Dining3_1 img{transition:1.3s;}
.Dining3_1 img:hover{transform:scale(1.1);}}
</style>
</head>
<body>
<article>
	<div class="Dining">
		<div id="Dining_top">
			<h2 style="margin: 0;height: 40px;">DINING/SERVICE</h2>
			<img src="<c:url value='resources/images/Dining/top_bottom.png' /> " width="430px;"/>
			<div id="Dining_top_coment">델루나 호텔이 제공하는 서비스와 시설</div>
		</div>		
		<div id="Dining_1">
			<div id="Dining1_1">
				<div class="Dining2_1">
					<div class=Dining3_1>
						<a href="Dining_Grill">
							<img src="<c:url value='resources/images/Dining/grill14.jpg' />" width="550" height="300"/>
						</a>
					</div>
					<div class=Dining3_2>
						<div class="Dining4_1">Grill</div>
							<img src="<c:url value='resources/images/Dining/top_bottom.png' /> " width="380px;"/>
						<div class="Dining4_2">전통 이탈리안 레스토랑의 맛과 퀄리티는 계승하면서 합리적인 가격으로 누구나 즐길 수 있는 곳입니다.
							투숙객을 위한 조식 서비스부터 간단한 티타임을 가질 수 있는 편안한 공간을 제공하고 있으며, 저녁시간엔 사랑하는 연인
							또는 가족과 함께 맛있는 식사를 즐기실 수 있는 공간입니다. </div>
					</div> 
						<div class="Dining4_3">
							<a href="Dining_Grill" style="color:#486BA0;">자세히보기 ></a>
						</div>
				</div>
				<div class="Dining2_1_right">
					<div class=Dining3_1>
						<a href="Dining_Fit">
							<img src="<c:url value='resources/images/Dining/fit_08.jpg' />" width="550" height="300"/>
						</a>
					</div>
					<div class=Dining3_2>
						<div class="Dining4_1">Fitness Center</div>
							<img src="<c:url value='resources/images/Dining/top_bottom.png' />" width="380px;"/>
						<div class="Dining4_2">최신식 러닝머신 15대와 30가지의 운동기구를 갖춘 PAUSE호텔 휘트니스는
							사우나와 바로 연결되어 있어 편리하게 이용하실 수 있습니다.</div>
					</div>
							<div class="Dining4_3">
								<a href="Dining_Fit" style="color:#486BA0;">자세히보기 ></a>
							</div>
				</div>
				<div class="Dining2_1">
					<div class=Dining3_1>
						<a href="Dining_Pool">
							<img src="<c:url value='resources/images/Dining/pool23.jpg' />" width="550" height="300" />
						</a>
					</div>
					<div class=Dining3_2>
						<div class="Dining4_1">Pool</div>
							<img src="<c:url value='resources/images/Dining/top_bottom.png' />" width="380px;"/>
						<div class="Dining4_2">본관 5층에 위치한 수영장은 국내에 몇 안 되는 도심 속 실외
							수영장으로써 국내 최고의 DJ들이 DJing하는 음악과 함께 술, 음식 등을 즐길 수 있는 클럽풀입니다. 수영장에서
							내려다보이는 서울 도심 속 풍경을 바라보면서 바쁜 생활 속에 지친 여러분의 스트레스를 시원히 날려줄 수 있는 기회를
							즐기시길 바랍니다.</div>
					</div>
							<div class="Dining4_3">
								<a href="Dining_Pool" style="color:#486BA0;">자세히보기 ></a>
							</div>
				</div>
				<div class="Dining2_1_right">
					<div class=Dining3_1>
						<a href="Dining_Sauna">
							<img src="<c:url value='resources/images/Dining/sauna07.jpg' />" width="550" height="300"/>
						</a>
					</div>
					<div class=Dining3_2>
						<div class="Dining4_1">Sauna</div>
							<img src="<c:url value='resources/images/Dining/top_bottom.png' />" width="380px;"/>
						<div class="Dining4_2">PAUSE호텔 사우나는 365일 연중무휴로 24시간 운영되고 있어 고객님의
							피로를 말끔히 풀어 드릴 것입니다. 또한 미용실과 이발소도 함께 이용하실 수 있습니다.</div>
					</div>
						<div class="Dining4_3">
							<a href="Dining_Sauna" style="color:#486BA0;">자세히보기 ></a>
						</div>
				</div>
				<div class="Dining2_1">
					<div class=Dining3_1>
						<a href="Dining_Meet">
							<img src="<c:url value='resources/images/Dining/meeting1.jpg' />" width="550" height="300"/>
						</a>
					</div>
					<div class=Dining3_2>
						<div class="Dining4_1">Meeting Room</div>
							<img src="<c:url value='resources/images/Dining/top_bottom.png' />" width="380px;"/>
						<div class="Dining4_2">빔 프로젝터 및 매립식 자동스크린 화이트보드 등을 갖추고 있어 20인
							이하의 소규모 모임 및 비즈니스 미팅 등에 최적화된 공간으로 이용하실 수 있습니다.</div>
					</div>
							<div class="Dining4_3">
								<a href="Dining_Meet" style="color:#486BA0;">자세히보기 ></a>
							</div>
				</div>
				<div class="Dining2_1_right">
					<div class=Dining3_1>
						<a href="Dining_Hall">
							<img src="<c:url value='resources/images/Dining/ban05.jpg' />" width="550" height="300"/>
						</a>
					</div>
					<div class=Dining3_2>
						<div class="Dining4_1">Banquet Hall</div>
							<img src="<c:url value='resources/images/Dining/top_bottom.png' />" width="380px;"/>
						<div class="Dining4_2">작은 모임에서 세계적인 국제행사까지 유치할 수 있는 완벽하고, 다양한
							연회장을 구비한 PAUSE호텔 연회장은 잊을 수 없는 감동을 선사해 드립니다. 또한 크고 작은 행사부터 가족 연회,
							세미나 등 각종 행사의 준비에서 마무리까지 정성을 다해 모실 것을 약속 드립니다.</div>
					</div>
							<div class="Dining4_3">
								<a href="Dining_Hall" style="color:#486BA0;">자세히보기 ></a>
							</div>
				</div>
			</div>
		</div>
	</div>
	</article>
<%@ include file="/resources/headerfooter/Footer.jsp" %>