<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/resources/headerfooter2/Header.jsp"%>
<%@ include file="../Admin_Sub_Menu.jsp"%>
<script type="text/javascript">
function go_detail(id){
	var theForm=document.frm;
	theForm.action="HotelServlet?command=Admin_Customer_Detail&id="+id;
	theForm.submit();
};
</script>
<form name="frm" method="post" >
<div id="Room_List">
<div id="Room_Search">
<input type="text" name="key" size="30" style=" border:1px solid #BF3352; height:35px;
font-size:100%; border-radius:5px;"placeholder="고객명">
<input class="btn" type="button" name="btn_search" value="검색" 
                 onClick="go_search()">
<input class="btn" type="button" name="btn_total" value="전체보기 "
                 onClick="go_total()">
</div>
<div id="Table_List">
<div id="Table_List_1"><h3>고객 목록 </h3></div>
<div id="Table_List_2">
<div id="Table_List_3">

<table id="Table_List_4">
<tr>
<th>ID</th><th>고객명</th><th>이메일</th><th>전화번호</th>
</tr>
      <c:forEach items="${MemberList}" var="MemberVO">
      <tr>
      <td style="text-align:left;padding-left:50px;padding-right:0px">
      <a href="HotelServlet?command=ACustomer_Detail_Action&id=${MemberVO.id}">
      	${MemberVO.id}
      </a>
      </td>
  	  <td> ${MemberVO.name} </td>
  	  <td> ${MemberVO.email} </td>
  	  <td> ${MemberVO.phone} </td>
      </tr>
     </c:forEach> 
</table>
</div>
</div>
</div>
</div>
</form>
<jsp:include page="../Paging/PagingMember.jsp">
	<jsp:param value="${paging.firstPageNo }" name="firstPageNo"/>
	<jsp:param value="${paging.prevPageNo }" name="prevPageNo"/>
	<jsp:param value="${paging.startPageNo }" name="startPageNo"/>
	<jsp:param value="${paging.pageNo}" name="pageNo"/>	
	<jsp:param value="${paging.endPageNo }" name="endPageNo"/>	
	<jsp:param value="${paging.nextPageNo }" name="nextPageNo"/>
</jsp:include>
<%@ include file="/resources/headerfooter2/Footer.jsp"%>