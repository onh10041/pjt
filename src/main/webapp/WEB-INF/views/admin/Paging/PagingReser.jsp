<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{text-align:center;}
#paging{font-size: 120%;}
</style>
</head>
<body>
<div id="paging">
<!-- 1~10까지 있는 페이지의 페이징 -->
<c:url var="action" value="HotelServlet?command=Admin_Customer_List"/>
<c:choose> 
	<c:when test="${param.startPageNo<param.pageNo}">
    	<a href="${action}&pageNo=${param.Page-1}"><</a>
    </c:when>
    <c:otherwise>
    	<a href="#"><</a>
    </c:otherwise>
</c:choose>
<c:forEach begin="${param.startPageNo}" end="${param.endPageNo}"
                  step="1" var="i">
    <c:choose>
        <c:when test="${i eq param.pageNo}">
            ${i}
        </c:when>
        <c:otherwise>
            <a href="${action}&pageNo=${i}" >${i}</a>
        </c:otherwise>
    </c:choose>
</c:forEach>
<c:choose>
	<c:when test="${param.endPageNo>param.pageNo}">
    	<a href="${action}&pageNo=${param.pageNo+1}">></a>
    </c:when>
    <c:otherwise>
    	<a href="#">></a>
    </c:otherwise>
</c:choose>
</div>
</body>
</html>