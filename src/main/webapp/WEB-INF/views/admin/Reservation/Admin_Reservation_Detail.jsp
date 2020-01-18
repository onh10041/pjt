<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/resources/headerfooter2/Header.jsp"%>
<%@ include file="../Admin_Sub_Menu.jsp"%>
<style type="text/css">
h2{color:#252D39}
div{color:#252D39}
#Table_List_Bottom{position: relative;width: 100px; height: 40px; margin: 0 auto;}
</style>
<article>
<form name="frm" method="post">
<div id="Room_List">
<div id="Table_List">
<div id="Table_List_1"><h3>예약 상세 <%-- ${Room.total} --%></h3></div>
<div id="Table_List_2">
<div id="Table_List_3">
<div id="Table_List_6">
<div id="res_num">
<h2>예약 번호</h2>
<div id="res_text">${reservation.res_num}</div>
</div>
<div id="res_num">
<h2>예약자 아이디</h2>
<div id="res_text">${reservation.id}</div>
</div>
<div id="res_num">
<h2>예약 날짜</h2>
<div id="res_text">${reservation.res_date}</div>
</div>
<div id="res_num">
<h2>예약 패키지</h2>
<div id="res_text" >${reservation.pack_num}</div>
</div>
<div id="res_num">
<h2>방 등급</h2>
<div id="res_text">${reservation.room_class}</div>
</div>
<div id="res_num">
<h2>결제 금액</h2>
<div id="res_text">${reservation.price}
</div>
</div>
</div>
</div>
    <div id="Table_List_Bottom">
		<input class="btn"  type="button" value="목록" onClick="location.href='HotelServlet?command=Admin_Reservation_List'">   
	</div>
</div>
</div>
</div>
</form>
</article>
<%@ include file="/resources/headerfooter2/Footer.jsp"%>