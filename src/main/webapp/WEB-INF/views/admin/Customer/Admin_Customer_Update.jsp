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
<input type="text" name="name" style="width:300px; height:70px; border-radius:10px; font-size:110%;"value="${member.name}">
</div>
<div id="Cu_Email">
<h2>이메일</h2>
<input type="text" name="email" style="width:300px; height:70px;  border-radius:10px; font-size:110%;" value="${member.email }">	
</div>
<div id="Cu_Phone">
<h1>전화번호</h1>
<input type="text" name="phone" style="width:300px; height:70px;  border-radius:10px; font-size:110%;" value="${member.phone }">	
</div>
<div id="Cu_Content">
<h1>고객정보</h1>
<textarea name="content" rows="5.5" cols="40" style="font-size:110%; border-radius:10px;"></textarea>	
</div>
</div>
    </div>
       <div id="Table_List_Bottom">
<input class="btn"  type="button" value="수정" onClick="go_mod('${MemberVO.id}')">
<input class="btn"  type="button" value="목록" onClick="go_list()">   
</div>
</div>
</div>

</form>
</article>
<%@ include file="/resources/headerfooter2/Footer.jsp"%>