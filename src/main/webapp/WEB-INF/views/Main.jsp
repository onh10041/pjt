<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
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

var page=0;

 setInterval(
	function(){
		$('.imgs_list').animate({left:page}, 'slow');
		page+=-1900; 
		if(page==-7600)  
			page=0;
	}
,2500);
</script>
<style type="text/css">
#main{position:relative;width:100%;height:680px;margin:0 auto;}
#imgs{position:relative;width:120%;height:680px;left:-10%;margin:0 auto;overflow: hidden;}
#imgs ul{list-style:none;padding:0;margin:0;width: 7600px;height: 680px;position: relative;}
#imgs ul li {float:left;width:1900px;height:680px;position: relative;}
#res_box{position:relative;width:1050px;height:70px;font-weight:bold;margin:0 auto;
	background-color:white;z-index:20;opacity:0.8;bottom:150px;}
#box_menu{position:relative;height:50px;float:left;padding-left:20px;margin-top:10px;
	font-size:90%;line-height:23px;border-left:1px solid black;}
</style>

<body>
<article>
<div id="main">	
	<div id="imgs">
		<ul class="imgs_list">
			<li><img src="<c:url value='resources/images/main/main_photo1.jpg' />" style="width:1900px;height:680px;"/></li>
			<li><img src="<c:url value='resources/images/main/main_photo2.jpg' />" style="width:1900px;height:680px;"/></li>
			<li><img src="<c:url value='resources/images/main/main_photo3.jpg' />" style="width:1900px;height:680px;"/></li>
			<li><img src="<c:url value='resources/images/main/main_photo4.jpg' />" style="width:1900px;height:680px;"/></li>
		</ul>		
	</div>	
	<div id="res_box">
		<div id="box_menu" style="width:180px;margin-left:20px">Hotel Logo</div>
		<div id="box_menu" style="width:130px;">		
			체크인
			<input type="text" name="startDate" id="startDate" size="10">
		</div>
		<div id="box_menu" style="width:130px;">
			체크아웃
			<input type="text" name="endDate" id="endDate" size="10">
			<!-- frm.startDate.value=$("#startDate").val(); -->
		</div>
		<div id="box_menu" style="width:150px;">
			객실 선택
			<select>
				<option>Business Double</option>
				<option>Standard Double</option>
				<option>Standard Twin</option>
				<option>Delux Twin</option>
				<option>Triple</option>
				<option>Suite</option>
			</select>
		</div>
		<div id="box_menu" style="width:70px;">
			성인<br>
			<select>
				<option>&nbsp;&nbsp;1&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;2&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;3&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;4&nbsp;&nbsp;</option>
			</select>
		</div>
		<div id="box_menu" style="width:70px;">
			어린이<br>
			<select>
				<option>&nbsp;&nbsp;0&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;1&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;2&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;3&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;4&nbsp;&nbsp;</option>
			</select>
		</div>
		<div id="box_menu" style="width:150px;">
			<input type="button" value="Reservation" onclick="location.href='Reservation_Form'"
				style="cursor:pointer;border:1px solid black;background:white;font-weight:bold;width:120px;height:30px;margin-top:10px;">
		</div>
	</div>
</div>
</article>
<%@ include file="/resources/headerfooter/Footer.jsp" %>