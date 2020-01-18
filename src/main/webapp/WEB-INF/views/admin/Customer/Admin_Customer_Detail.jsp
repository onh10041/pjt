<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/resources/headerfooter2/Header.jsp"%>
<%@ include file="../Admin_Sub_Menu.jsp"%>

<article>
<form name="frm" method="post">
<div id="Room_List">
<div id="Table_List">
<div id="Table_List_1"><h3>${member.id}고객 상세 <%-- ${Room.total} --%></h3></div>
<div id="Table_List_2">
<div id="Cu_base">
<div id="Cu_Name">
<h1>고객명</h1>
<div id="Cu_Textbox">${member.name}</div>
</div>
<div id="Cu_Email">
<h2>이메일</h2>
<div id="Cu_Textbox">${member.email }</div>	
</div>
<div id="Cu_Phone">
<h1>전화번호</h1>
<div id="Cu_Textbox">${member.phone }</div>	
</div>
</div>
    </div>
       <div id="Table_List_Bottom">
<input class="btn"  type="button" value="목록" onClick="location.href='HotelServlet?command=Admin_Customer_List'">   
</div>
</div>
</div>
</form>
</article>
<%@ include file="/resources/headerfooter2/Footer.jsp"%>