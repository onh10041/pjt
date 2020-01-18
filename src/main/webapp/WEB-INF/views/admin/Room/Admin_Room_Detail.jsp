<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/resources/headerfooter2/Header.jsp"%>
<%@ include file="../Admin_Sub_Menu.jsp"%>
<style type="text/css">
#sub_list {border:2px solid black; width:1664px; left:-8px; height:50px;position:relative;
	margin:0 auto; top:20px; background-color:#252D39;}
#sub_menu ul li {list-style-type:none;margin-top:-20px;float:left;width:150px;text-align:center;}
#sub_menu{position:relative; left:520px;}
#sub_menu a {text-decoration:none;color:white;display:block;width:100px;font-size:90%;
	padding: 20px;}  
#copy{margin:20px 0 10px 550px;font-size:85%;width:600px;float:left;}
#Room_List{position:relative;left:-8px;top:20px;width:1662px;height:1100px; border:1px solid green;
	margin:0 auto;}
body{overflow-x:hidden}
#Room_Search{left:50px;position:relative;margin:0 auto;width:600px;height:80px;top:30px;}
.btn{background-color:#BF3352;color:white;font-weight:bold;width:65px;height:40px;
	text-decoration:none;padding:5px;border-radius:10px;box-shadow:3px 3px 3px #999999;}
#Table_List {width:1200px;margin:0 auto;	height:70px;background-color:#BF3352;
	border-collapse:collapse;}
#Table_List_1{position:relative;top:22px;left:20px;color:white;font-size:90%;text-align:left;}
#Table_List_2{position:relative;margin:0 auto;width:1198px;border:1px solid silver;height:700px;
	top:30px;}
#Table_List_3{width:1198px;height:45px;position:relative;background-color:white;
	border:1px solid gray;top:-2px;}
#Table_List_4 th, td{color:#182D7C;padding:8px 5px;padding-right:120px;text-align: center;}
#RoomPicture{position:relative;float:left;width:400px;height:400px;border:1px solid blue;top:100px;}
#RoomText{position:relative;float:right;width:700px;height:600px;border:1px solid black;}
#Table_List_5 th{color:#252D39;padding:8px 10px;text-align:center;}
#Table_List_5 td{ border:1px solid #BF3352;font-size:75%;}
#Table_List_Bottom{width:1200px;height:90px;border:1px solid black;position:relative;top:-62px;}
#Table_List_Bottom input{width:90px;height:70px;position:relative;left:510px;}

#list{float:left;}
#Table_List_Bottom{position: relative;margin: 0 auto; width: 210px; height: 40px;}
</style>
<script type="text/javascript">
	function real(){
		if(confirm("정말로 삭제하시겠습니까?")==true){
			document.frm.action="admin_room_delete&room_num="+frm.room_num.value;
			document.frm.submit();
			alert(frm.room_num.value+"호 객실이 삭제되었습니다.");
		}else{
			return ;
		}
	}
</script>
<article>
<form name="frm" method="post" action="HotelServlet">
<input type="hidden" value="admin_room_update_form" name="command">
<div id="Room_List">
<div id="Table_List">
<div id="Table_List_1"><h3>객실 상세 </h3></div>
<div id="Table_List_2">
<div id="RoomPicture"></div>
<div id="RoomText">
<h2 style="color:gray">${HotelVO.room_num} 객실 상세</h2>
<table id="Table_List_5">
  <tr>
    <th>객실등급</th>
    <td  colspan="3">
  	${HotelVO.room_class}
     </td>    
    </tr>    
    <tr>
        <th align="center" >객실 호수</th>
        <td colspan="3">${HotelVO.room_num}
        	<input type="hidden" value="${HotelVO.room_num}" name="room_num">
      	 	<input type="hidden" value="${HotelVO.image}" name="image">
    		<input type="hidden" value="${HotelVO.res_sta}" name="res_sta">
    		<input type="hidden" value="${HotelVO.max_people}" name="people">
    		<input type="hidden" value="${HotelVO.price}" name="price">
    		<input type="hidden" value="${HotelVO.room_class}" name="room_class">
    		<input type="hidden" value="${HotelVO.content}" name="content">
    	</td>
    </tr>
    
    <tr>
        <th >객실가격</th>
        <td width="60">${HotelVO.price}</td>
    </tr>
       <tr>
        <th>상세설명</th>
        <td width="400px" height="300px;">${HotelVO.content }</td>
    </tr>
</table>
    </div>
 
    </div>
       <div id="Table_List_Bottom">
    		<input class="btn"  type="submit" value="수정">
    		<input class="btn"  type="button" value="삭제" onclick="real()">
			<input class="btn"  type="button" value="목록" onClick="location.href='admin_room_list'">   
		</div>
</div>
</div>
</form>
</article>
<%@ include file="/resources/headerfooter2/Footer.jsp"%>