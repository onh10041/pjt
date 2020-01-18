<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/resources/headerfooter2/Header.jsp"%>
<%@ include file="../Admin_Sub_Menu.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
#sub_list_all {position:relative;width:100%;height:50px;margin:0 auto;}
#sub_list {position:relative;border:2px solid black;width:120%;left:-10%;height:50px;
	margin:0 auto;background-color:#252D39;}
#sub_menu ul li {list-style-type:none;margin-top:-20px;float:left;width:150px;text-align:center;}
#sub_menu{position:relative;width:680px;height:50px;margin:0 auto;} 
#sub_menu a {text-decoration:none;color:white;display:block;width:100px;font-size:90%;padding: 20px;}
#copy{margin:20px 0 10px 550px;font-size:85%;width:600px;float:left;}
#Room_List{position:relative;top:20px;width:100%;height:920px;margin:0 auto;}
body{overflow-x:hidden}
#Room_Search{left:50px;position:relative;margin:0 auto;width:600px;height:80px;top:30px;}
.btn{background-color:#BF3352;color:white;font-weight:bold;width:65px;height:40px;
	text-decoration:none;padding:5px;border-radius:10px;box-shadow:3px 3px 3px #999999;}
#Table_List {width:1100px;margin:0 auto;	height:70px;background-color:#BF3352;border-collapse:collapse;}
#Table_List_1{position:relative;top:22px;left:20px;color:white;font-size:90%;text-align:left;}
#Table_List_2{position:relative;margin:0 auto;width:1098px;border:1px solid silver;height:700px;top:30px;}
#Table_List_3{width:1098px;height:45px;position:relative;background-color:white;
	border:1px solid gray;top:-2px;}
#Table_List_4 th, td{color:#182D7C;padding:8px 5px;padding-right:110px;text-align:center;}
#RoomPicture{position:relative;float:left;width:400px;height:400px;border:1px solid blue;top:100px;}
#RoomText{position:relative;float:right;width:700px;height:600px;border:1px solid black;}
#Table_List_5 th{color:#252D39;padding:8px 10px;text-align:center;}
#Table_List_5 td{ border:1px solid #BF3352;font-size:75%;}
#Table_List_Bottom{width:1200px;height:90px;border:1px solid black;position:relative;top:-62px;}
#Table_List_Bottom input{width:90px;height:70px;position:relative;left:510px;}
#page{position:relative;width:300px;height:30px;margin: 0 auto;vertical-aling:bottom;}
</style>
<article>
	<form name="frm" method="post" action="HotelServlet">
		<div id="Room_List" >
		<div id="Room_Search">
			<input type="text" name="key" size="30" style="box-shadow:3px 3px 3px #999999;border:1px solid #BF3352; height:35px;
				font-size:100%; border-radius:5px;"placeholder="고객명">
			<input class="btn" type="button" name="btn_search" value="검색" 
				onClick="go_search()">
			<input class="btn" type="button" name="btn_total" value="전체보기 "
				onClick="go_total()">
		</div>
		<div id="Table_List">
			<div id="Table_List_1"><h3>객실 목록 (9<%-- ${Room.total} --%>)</h3></div>
			<div id="Table_List_2">
				<div id="Table_List_3">
					<table id="Table_List_4">
						<tr>
							<th style="padding-left:15px;">객실번호</th>
							<th>객실등급</th>
							<th>예약금액</th>
							<th>최대인원</th>
							<th>객실가격</th>
							<th>총판매가</th>
						</tr>
						<c:choose>
							<c:when test="${empty HotelList}">
							<tr>
								<td width="100%" colspan="7" align="center" height="23">
									등록된 방이 없습니다.
								</td>      
							</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${HotelList}" var="HotelVO">
									<tr>
		      							<td style="text-align:left;padding-left:33px;padding-right:0px;" height="23" align="center" >
		      								${HotelVO.room_num}
		      							</td>
		      							<td style="text-align:left;padding-left:33px;padding-right:0px">
		      								<a href="admin_room_detail?room_num=${HotelVO.room_num }">
		      									${HotelVO.room_class}
		      								</a>
		      							</td>
										<td>${HotelVO.price}</td>
										<td>
											<c:choose>
												<c:when test="${HotelVO.res_sta=='x'}">미확인</c:when>
												<c:otherwise>확인</c:otherwise> 
											</c:choose>
										</td>
									</tr>
								</c:forEach> 
							</c:otherwise>
						</c:choose>
					</table>
					<div id="page">
						<jsp:include page="../Paging/Paging.jsp">
							<jsp:param value="${paging.firstPageNo }" name="firstPageNo"/>
							<jsp:param value="${paging.prevPageNo }" name="prevPageNo"/>
							<jsp:param value="${paging.startPageNo }" name="startPageNo"/>
							<jsp:param value="${paging.pageNo}" name="pageNo"/>	
							<jsp:param value="${paging.endPageNo }" name="endPageNo"/>	
							<jsp:param value="${paging.nextPageNo }" name="nextPageNo"/>
						</jsp:include>
					</div>
				</div>
			</div>
		</div>		
	</div>	
	</form>
</article>
<%@ include file="/resources/headerfooter2/Footer.jsp"%>

