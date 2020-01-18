<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/resources/headerfooter2/Header.jsp"%>
<%@ include file="../Admin_Sub_Menu.jsp"%>
<style type="text/css">
#list{float:left;}
#Table_List_Bottom{position: relative;margin: 0 auto; width: 200px; height: 40px;}
</style>
<article>
<form name="frm" method="post" action="HotelServlet">
<input type="hidden" value="admin_room_update" name="command">
<div id="Room_List">
<div id="Table_List">
<div id="Table_List_1"><h3>객실 상세 <%-- ${Room.total} --%></h3></div>
<div id="Table_List_2">
<div id="RoomPicture"></div>
<div id="RoomText">
<h2 style="color:gray">${HotelVO.room_num} 객실 상세</h2>
<input type="hidden" value="${HotelVO.room_num }" name="room_num">
<table id="Table_List_5">
  <tr>
    <th>객실등급</th>
    <td  colspan="3">
  	<input type="text" name="class" value="${HotelVO.room_class }">
  	<input type="hidden" value="${HotelVO.image}" name="image">
     </td>    
    </tr>   
     <tr>
    <th>정원</th>
    <td  colspan="3">
  	<input type="text" name="people" value="${HotelVO.max_people}">
     </td>    
    </tr>      
     <tr>
    <th>예약상태</th>
    <td  colspan="3">
    <c:if test="${HotelVO.res_sta=='x' }">
    	x(빈 방)<input type="radio" name="res_sta" value="x" checked="checked">
  		y(예약된 방)<input type="radio" name="res_sta" value="y">
  	</c:if>
  	<c:if test="${HotelVO.res_sta=='y' }">
    	x(빈 방)<input type="radio" name="res_sta" value="x">
  		y(예약된 방)<input type="radio" name="res_sta" value="y"  checked="checked">
  	</c:if>
     </td>    
    </tr>           
    <tr>
        <th >객실가격</th>
        <td width="60"><input type="text" name="price" value="${HotelVO.price }"></td>
    </tr>
    <tr>
       <tr>
        <th>상세설명</th>
        <td width="400px" height="300px;"><input type="text" name="content" value="${HotelVO.content }"></td>
    </tr>
</table>
    </div>
 
    </div>
       <div id="Table_List_Bottom">
    <input class="btn"  type="submit" value="수정">
<input class="btn"  type="button" value="목록" onClick="location.href='admin_room_list'">   
</div>
</div>
</div>
</form>
</article>
<%@ include file="/resources/headerfooter2/Footer.jsp"%>