<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %> 

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script type="text/javascript">
$(function(){
	$("#startDate").datepicker({
		dateFormat:"yy-mm-dd",		
		changeMonth:true,
		changeYear:true,
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		showMonthAfterYear:true,
		onClose:function(selectedDate){
			$("#endDate").datepicker("option","minDate",selectedDate );
		}
	});	
	$("#endDate").datepicker({
		dateFormat:"yy-mm-dd",
		changeMonth:true,
		changeYear:true,
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		showMonthAfterYear:true,
		onClose:function(selectedDate){
			$("#startDate").datepicker("option","maxDate",selectedDate);
		} 
	});
});

function search(){
	if(document.formm.startDate.value==""){
		alert("체크인 날짜를 선택해주세요.");
		document.formm.startDate.focus();
	 }else if(document.formm.endDate.value==""){
		 alert("체크아웃 날짜를 선택해주세요.");
			document.formm.endDate.focus();
	}else{
		document.formm.action="Res_Room_Search";
		document.formm.submit();
	}
}
function ok(){
	if(document.formm.start.value==""){
		alert("체크인 날짜를 선택해주세요.");
		document.formm.startDate.focus();
	 }else if(document.formm.end.value==""){
		 alert("체크아웃 날짜를 선택해주세요.");
			document.formm.endDate.focus();
	}else if(document.formm.peo.value==""){
		 alert("정원을 선택해주세요.");
			document.formm.people.focus();
	}else if(document.formm.check_room.value==""){
		 alert("방을 선택해주세요.");
	}else if(document.formm.room_class.value==""){
		 alert("객실 클래스를 선택해주세요.");
			document.formm.room_class.focus();
	}else{
		document.formm.action="Res_Info";
		document.formm.submit();
	}
	
}

function reservation(){
	if(document.formm.name.value==""){
		 alert("성함을 입력해주세요.");
			document.formm.name.focus();
	}else if(document.formm.email1.value==""){
		 alert("이메일을 입력해주세요.");
			document.formm.email1.focus();
	}else if(document.formm.email2.value==""){
		 alert("이메일를 입력해주세요.");
			document.formm.email2.focus();
	}else if(document.formm.phone1.value==""){
		 alert("전화번호를 입력해주세요.");
			document.formm.phone1.focus();
	}else if(document.formm.phone2.value==""){
		 alert("전화번호를 입력해주세요.");
			document.formm.phone2.focus();
	}else if(document.formm.phone3.value==""){
		 alert("전화번호를 입력해주세요.");
			document.formm.phone3.focus();
	}else{
		document.formm.action="Reservation";
		document.formm.submit();
	}
	if(document.formm.message.value!=""){
		alert(document.formm.message.value);
	}
}

</script>
<style type="text/css">

#res_base{position:relative;width:1200px;height:auto;margin:0 auto;}
#res_date{position:relative;width:700px;height:120px;}
#res_content{position:relative;width:800px;height:auto;float:right; right: 150px;z-index:20;}
.res_dateperson tr{border:1px solid gray;} 

td{font-size:90%;padding:0;margin:0; border-width: 0 0 1px 0;border: 1px solid gray; }   
th{width:120px;height:30px;font-weight:normal;font-size:90%;padding:0;margin:0;border-width: 1px 0 1px 0;  
background: linear-gradient(to bottom, rgba(205,205,205,1) 2%,rgba(196,196,196,1) 3%,rgba(166,166,166,1) 48%,rgba(143,143,143,1) 51%,rgba(143,143,143,1) 99%);
border: 1px solid #5B5B5B; color:white;font-weight: bold; font-size: 90%; }
table{border-collapse: collapse;}
 
#res_roompack{position:relative;width:700px;} 
#res_room_list{position:relative;width:700px;height:auto;border-bottom:1px dotted black; float :left;}
#res_room_content{position:relative;width:500px;height:auto;float:left; left:100px;}
#res_room_imgs{position:relative;width:170px;height:150px;float:left;}
#res_room_info{position:relative;width:140px;height:120px;float:right;font-size:95%;}
#res_room_bt{position:relative;width:373px;height:30px;text-align:center;top: 5px;float:right;}
#dateperson_sel{position:relative;width:700px;height:30px;float:left;}
 
#hotel_pack{position:relative;width:700px;height:165px;margin-top:30px; float:left;}
#hotel_pack_select{position:relative;width:300px;height:75px;float:right;}

#charge_count{position:relative;width:700px;height:auto;border:2px solid black; float:left; margin-top: 30px;}
#charge_count_title{position:relative;width:700px;height:30px;background:black;color:white;
	font-size:95%;font-weight:bold;}
#room_box{position: relative; float: left; width: 450px; height: 170px;background-color: #B09D77;
box-shadow: 4px 3px 5px 1px grey}
#res_list{position: relative; width: 200px; height: 50px; line-height: 50px; text-align: center; }
#temp{position: relative; width: 100px; height: 25px; float: left;}
#rm_name{position: relative; float: left; font-weight: bold; width: 160px; height: 30px;text-align: center;
background-color: #F2F1E9;box-shadow: 4px 4px 3px 0px #4F4635; color: #AA6325; font-size: 120%;}
#rm_content{position: relative;width: 160px; height: 100px; float: left; background-color: #F2F1E9;
box-shadow: 4px 4px 3px 0px #4F4635; font-size: 90%; color:#3F382B}
#rm_price{position: relative;width: 160px; height: 20px;  float: left; text-align: right; background-color: #F2F1E9;
box-shadow: 4px 4px 3px 0px #4F4635; color:#FFD259; font-size: 80%; color: #AA6325;}
#clear{position:relative;width:800px;height:100px;}

</style>
<article>
<form name="formm" action="HotelServlet" method="post">
	<div id="res_base">
		<div id="res_content">			
			<div id="res_date">
				<div id="res_room_title" style="width:700px;font-size:95%;font-weight:bold;">
					날짜 &amp; 인원 선택
					<hr size="2px" color="silver">
				</div>
				<div style="width:700px;float:left;"> 
					<table class="res_dateperson" cellspacing="0"style="width:700px;">
					<c:choose>
						<c:when test="${empty people}">
							<tr>
									<th>체크인</th>
									<td>&nbsp;<input type="text" name="startDate" id="startDate" size="7" autocomplete="off"></td>
									<th>체크아웃</th>
									<td>&nbsp;<input type="text" name="endDate" id="endDate" size="7" autocomplete="off"></td>
								</tr>
								<tr>
									<th>인원</th>
									<td style="width:175px;">&nbsp;
										<select name="people">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
										</select>
									</td>
									<th>객실선택</th>
									<td>	&nbsp;
										<select name="room_class">
											<option value="A">Business Double</option>
											<option value="B">Standard Double</option>
											<option value="C">Standard Twin</option>
											<option value="D">Deluxe Twin</option> 
											<option value="E">Triple</option>
											<option value="F">Suite</option>
										</select>
										<input type="button" value="조회" id="res_button" onclick ="search()"
											style="width:70px;float:right;right:15px;position:relative;">
									</td>
								</tr>
		       			</c:when>
		       			<c:otherwise>
		       				 <tr>
								<th>체크인</th>
								<td>&nbsp;<input type="text" name="startDate" id="startDate" 
									size="7" autocomplete="off" ><input type="hidden" value="${start }" name="start"></td>
								<th>체크아웃</th>
								<td>&nbsp;<input type="text" name="endDate" id="endDate" 
									size="7" autocomplete="off" ><input type="hidden" value="${end }" name="end"></td>							
							</tr>
							<tr>
								<th>인원</th>
								<td style="width:175px;">&nbsp;
									<input type="hidden" value="${people }" name="peo">
									<select name="people">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
									</select>
								</td>
								<th>객실선택</th>
								<td>	&nbsp;
									<input type="hidden" value="${room_class}" name="r_c">
									<input type="hidden" value="${check_room }" name="c_r">
									<select name="room_class">
										<option value="A">Business Double</option>
										<option value="B">Standard Double</option>
										<option value="C">Standard Twin</option>
										<option value="D">Deluxe Twin</option> 
										<option value="E">Triple</option>
										<option  value="F">Suite</option>
									</select>
									<input type="button" value="조회" id="res_button" onclick ="search()"
										style="width:70px;float:right;right:15px;position:relative;">
								</td>
							</tr>
						</c:otherwise>
					</c:choose>						
					</table>
				</div>
			</div>
			<div id="res_roompack">
				<div id="res_room_title" style="width:700px;font-size:95%;font-weight:bold; height:auto;">
					객실 &amp; 패키지 선택					
					<hr size="2px" color="silver">
				</div>
				<div id=res_room_list>
					<div id="res_room_content">
						<c:choose>
							<c:when test="${hlist.size()==0}">
								예약 가능한 객실이 없습니다
							</c:when>
							<c:otherwise>
								<c:forEach items="${hlist}" var="hlist">
									<div id="room_box">
										<div>
											<img src="<c:url value='resources/images/hotel/${hlist.image}' />" style="width: 240px; height:160px; float: left; 
												position:relative;margin-right:15px;left:5px;top:5px;box-shadow:4px 4px 3px 0px #4F4635;"/>
										</div>
										<input type="radio" id="rm_btn" name="check_room" value="${hlist.room_num }" style="position: relative; float: right;right: 5px; top: 5px;">
										<div style="position: relative;top: 5px;">
											<div id="rm_name">${hlist.room_num}호</div>
											<div id="rm_content"><div style="position: relative; left: 5px;">${hlist.content }</div></div>
											<div id="rm_price"><div style="position: relative; top: -5px; right: 5px;">￦ ${hlist.price }</div></div>
										</div>
									</div>
									<div id="temp"></div>
								</c:forEach>								
							</c:otherwise>
						</c:choose>
						
					</div>
						
					<div id="hotel_pack">
						<div id="hotel_pack_info">
							<table cellspacing="0" style="width:700px;">
								<tr>
									<th>A</th>
									<td style="text-align:center;width:345px;">수영장, 헬스장, 조식, 디너</td>
									<th style="text-align:center;">￦69,900</th>
								</tr>
								<tr>
									<th>B</th>
									<td style="text-align:center;">조식, 디너</td>
									<th style="text-align:center;">￦49,900</th>
								</tr>
								<tr>
									<th>C</th>
									<td style="text-align:center;">수영장, 헬스장</td>
									<th style="text-align:center;">￦39,900</th>
								</tr>
								<tr>
									<th>D</th>
									<td style="text-align:center;">조식</td>
									<th style="text-align:center;">￦19,900</th>
								</tr>
								<tr>
									<th>E</th>
									<td style="text-align:center;">디너</td>
									<th style="text-align:center;">￦34,900</th>
								</tr>
							</table>
						</div>
					</div>
					<div id="hotel_pack_select">
						<div style="width:300;height:40px;">
							<table style="height:40px;width: 130px; position: relative; float: left;">
								<tr> 
									<th style="margin-right: 5px;">
										패키지 선택
									</th>
								</tr>
							</table>
							<select style="width: 150px;height: 25px; position: relative; float: left;top: 7px; left:5px;" name="coss">
								<option value="X">선택안함</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="D">D</option>
								<option value="E">E</option>
							</select>
						</div> 
						<input type="hidden" value="${coss }" name="coss_req">
						<div id="res_room_bt">
							<div style="font-size:75%;float:left;line-height:27px;">
							* 객실/패키지 선택 후 선택하기 버튼을 눌러주세요
							</div>
							<input type="button" value="선택하기" onclick="ok()">
						</div>					
					</div>						
					</div>
				</div>
				<div style="width:700px;height:auto;">
					<div id="res_room_title" style="width:700px;font-size:95%;font-weight:bold;">
					 	예약자 정보
					<hr size="2px" color="silver">
					</div>
					<div>
						<table cellspacing="0"style="width:700px;">
							<tr>
								<th>예약자 성명</th>
								<td>&nbsp;<input type="text" size="20" name="name"></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>&nbsp;<input type="text" size="20" name="email1">&nbsp;@&nbsp;
								<input type="text" size="20" name="email2"></td>
							</tr>
							<tr>
								<th>휴대폰</th>
								<td>&nbsp;<input type="text" size="5"name="phone1">&nbsp;-&nbsp;
								<input type="text" size="5" name="phone2">&nbsp;-&nbsp;
								<input type="text" size="5" name="phone3"></td>
							</tr>
						</table>
					</div>				
				</div>
				<div id="charge_count">
					<div id="charge_count_title">
						&nbsp;요금합계
					</div>
					<div>
						<table cellspacing="0"	style="width:700px;height:100px;">
							<tr>
								<th>체크인/체크아웃</th>
								<td><div id="res_list">${date }</div></td>
								<th>객실/패키지 종류</th> 
								<td><div id="res_list">${room_class } / ${coss }</div></td>
							</tr>	
							<tr>
								<th>인원</th>
								<td><div id="res_list">${people }</div></td>
								<th>이용요금</th>
								<td><div id="res_list">${price }<input type="hidden" value="${price }" name="price"></div></td>
							</tr>
							<tr>
								<td colspan="4">   </td>
							</tr> 
							<tr align="center" style="height: 50px;">
								<td colspan="4">
									<input type="reset" value="초기화">
									<input type="button" value="예약하기" onclick="reservation()">
								</td>
							</tr>
						</table>
					</div>
					</div>
				</div>
			</div>
			<div id="clear"></div>
</form>
</article>
<%@ include file="/resources/headerfooter/Footer.jsp" %>