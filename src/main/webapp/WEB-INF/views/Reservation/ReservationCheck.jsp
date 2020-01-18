<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %> 
<style type="text/css">
#res_check_base{position:relative;width:1000px;height:900px;margin:0 auto;}
#check_info_table{position:relative;width:660px;height:900px;margin:0 auto}
table th{width:150px;height:35px;font-weight:normal; border: 1px solid white; color:white; 
	font-size:85%;background: linear-gradient(to bottom, rgba(212,212,212,1) 0%, rgba(219,219,219,1) 50%, rgba(186,186,186,1) 51%, rgba(201,201,201,1) 100%);}
table td{width:400px;height:35px;border-bottom:1px solid #c3c3c3;font-size:85%;}
#rescheck_btns{position:relative;width:100px;height:50px;margin:0 auto;}
#clear{position:relative;width:700px;height:20px;} 
table{border-top: 1px solid gray; position: relative; margin: 0 auto;}

</style>
</head>
<body>
<article>
<form>
	<div id="res_check_base">
		<div id="check_info_table">
			<h3 style="text-align:center;">예약 확인</h3> 
				<table cellspacing="0">
					<tr>
						<th>체크인</th>
						<td>&nbsp;${reservationVO.chk_in}</td>
					</tr>
					<tr>
						<th>체크아웃</th>
						<td>&nbsp;${reservationVO.chk_out}</td>
					</tr>
					<tr>
						<th>성명</th>
						<td>&nbsp;${reservationVO.name}</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>&nbsp;${reservationVO.email}</td>
					</tr>
					<tr>					
						<th>객실</th>
						<td>&nbsp;${reservationVO.room_num}</td>
					</tr>
					<tr>
						<th>인원</th>
						<td>&nbsp;${reservationVO.people_num}</td>
					</tr>
					<tr>
						<th>객실 종류</th>
						<td>&nbsp;${reservationVO.room_class}</td>
					</tr>
					<tr>
						<th>금액</th>
						<td>&nbsp;￦ ${reservationVO.price}</td>
					</tr>
					</table>
					<div id="clear"></div>
					<div id="daumRoughmapContainer1573632497634" 
					class="root_daum_roughmap root_daum_roughmap_landing" style="left:25px;"></div>					
				<div id="clear"></div>
				<div id="rescheck_btns">
					<input type="button" value="메인페이지로" onclick="location.href='/project/'"
					style="background: linear-gradient(to bottom, #616878 0%,#495164 100%); color:white;
					width: 100px; height: 40px;">
				</div>
			</div>
		</div>
	</form>
</article>
					<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
					<script charset="UTF-8">
						new daum.roughmap.Lander({
							"timestamp" : "1573632497634",
							"key" : "vtvv",
							"mapWidth" : "600",
							"mapHeight" : "320"
						}).render();
					</script>
<%@ include file="/resources/headerfooter/Footer.jsp" %>