<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/resources/headerfooter2/Header.jsp"%>
<%@ include file="../Admin_Sub_Menu.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<article>
<form name="frm" method="post">
<div id="Room_List">
<div id="Room_Search">
<input type="text" name="key" size="30" style=" box-shadow: 3px 3px 3px #999999;border:1px solid #BF3352; height:35px;
font-size:100%; border-radius:5px;"placeholder="고객명">
<input class="btn" type="button" name="btn_search" value="검색" 
                 onClick="go_search()">
<input class="btn" type="button" name="btn_total" value="전체보기 "
                 onClick="go_total()">
</div>
<div id="Table_List">
<div id="Table_List_1"><h3>예약 목록 (9<%-- ${Room.total} --%>)</h3></div>
<div id="Table_List_2">
<div id="Table_List_3">
<table id="Table_List_4">
<tr>
<th>예약 번호</th><th>객실 클래스</th><th>아이디</th><th>체크인</th><th>체크아웃</th><th>가격</th>
</tr>
  <c:choose>
      <c:when test="${empty ReservationList}">
       <tr>
          <td width="100%" colspan="7" align="center" height="23">
            등록된 방이 없습니다.
          </td>      
       </tr>
      </c:when>
      <c:otherwise>
       <c:forEach items="${ReservationList}" var="ReservationVO">
       <tr>
      <td style="text-align:left;padding-left:80px;padding-right:0px">
      <a href="HotelServlet?command=AReservation_Detail&res_num=${ReservationVO.res_num }">
      		${ReservationVO.res_num}
      </a>
      </td>
      <td>
      	${ReservationVO.room_class}
      </td>
      <td>
      	${ReservationVO.id}	
      </td>
      <td>
      	${ReservationVO.chk_in}
      </td>
      <td>
      	${ReservationVO.chk_out}
      </td>
      <td>
      	${ReservationVO.price}
      </td>
      </tr>
     </c:forEach> 
      </c:otherwise>
     </c:choose>
</table>
</div>
</div>
</div>
</div>
<jsp:include page="../Paging/PagingReser.jsp">
	<jsp:param value="${paging.firstPageNo }" name="firstPageNo"/>
	<jsp:param value="${paging.prevPageNo }" name="prevPageNo"/>
	<jsp:param value="${paging.startPageNo }" name="startPageNo"/>
	<jsp:param value="${paging.pageNo}" name="pageNo"/>	
	<jsp:param value="${paging.endPageNo }" name="endPageNo"/>	
	<jsp:param value="${paging.nextPageNo }" name="nextPageNo"/>
</jsp:include>
</form>
</article>

<%@ include file="/resources/headerfooter2/Footer.jsp"%>

