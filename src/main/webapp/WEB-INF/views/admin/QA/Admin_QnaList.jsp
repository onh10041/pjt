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
<div id="Table_List_1"><h3>고객 질문 목록 (9<%-- ${qna.total} --%>)</h3></div>
<div id="Table_List_2">
<div id="Table_List_3"> 
<table id="Table_List_4">
<tr>
<th></th><th>답변상태</th><th>Q&A번호</th><th>아이디</th><th>제목</th><th>내용</th><th>날짜</th>
</tr>
  <c:choose>
      <c:when test="${QnAListSize<=0}">
       <tr>
          <td width="100%" colspan="7" align="center" height="23">
            등록된 방이 없습니다.
          </td>      
       </tr>
      </c:when>
      <c:otherwise>
       <c:forEach items="${QnAList}" var="QnAVO">
       <tr>
      <td height="23" align="center" >${QnAVO.qna_num}</td>
      <td style="text-align:left;padding-left:50px;padding-right:0px">
      <a href="#" onClick="go_detail('${tpage}', '${QnAVO.qna_num}')">
      ${QnAVO.qna_num}
      </a>
      </td>
           <td>
            <c:choose>
             <c:when test='${QnAVO.rep=="n"}'>미답변</c:when>
            <c:otherwise>답변완료</c:otherwise> 
            </c:choose>
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
</form>


</article>

<%@ include file="/resources/headerfooter2/Footer.jsp"%>

