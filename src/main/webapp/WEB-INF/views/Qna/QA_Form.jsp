<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>

<style type="text/css">
#join_main_base{position:relative;width:100%;height:500px;}
	#qna_main{position: relative; margin: 0 auto; width: 800px; height: 500px;}
	#temp{width: 10px; height: 30px;}
	#qna_title{font-weight: bold; font-size: 140%; position: relative;left:40px; width: 90%; height: 50px; }
	#qna_list{position: relative; left:40px; height: 360px; width: 90%; }
	#search_qna{width: 90%; height: 32px; position: relative;		left:40px;	}
	#search{position: relative; float: right; height: 20px; width: 220px; right: 80px;}
	#search_btn{position: relative; float: right; width: 70px; height: 25px;  background-color: silver;
		font-weight: bold; color: white;right:-220px;	} 
	table{border-top: 1.5px solid gray; border-bottom: 1.5px solid gray;position: relative;	}
	table th{	width: 150px; height: 30px; position: relative; background-color: #F6F4F1;	}
	#notice{ width: 475px;}
</style>

	<article>
	<form action="QA_Search" method="post">
	<div id="join_main_base">
		<div id="qna_main">
			<div id="temp"></div>
			<div id="qna_title">Q&nbsp;n&nbsp;A</div>
			<div id="search_qna">
				<input type="text" id="search" name="subject"> 
				<input type="submit" value="제목 검색" id="search_btn">
			</div>
			<div id="qna_list">
				<table>
					<tr>
						<th>N&nbsp;O</th>		
						<th id="notice">제&nbsp;목</th> 
						<th>등&nbsp;록&nbsp;일</th>
						<th>답 변 여 부</th>
					</tr>
					<c:forEach items="${qnalist }" var="qnaVO">
						<tr>
							<td style="text-align: center">${qnaVO.qna_num }</td>
							<td style="text-align: center">
								<a href="QA_Detail?qna_num=${qnaVO.qna_num}">
									${qnaVO.subject }
								</a>
							</td>
							<td style="text-align: center">
								<fmt:formatDate value="${qnaVO.indate }" type="date"/>
							</td>
							<td style="text-align: center"> 
								<c:choose>
									<c:when test="${qnaVO.rep=='x' }">no</c:when>
									<c:when test="${qnaVO.rep=='o' }">yes</c:when>
								</c:choose>
							</td>
						</tr>
					</c:forEach>
				</table>
				<input type="button" value="질문 등록" onclick="location.href='QA_Write_Form'"
				 style="position: relative; top: 5px; left: 5px; background-color: silver;
		font-weight: bold; color: white; ">
		
			</div>
		</div>
		</div>
		</form>
	</article>
<%@ include file="/resources/headerfooter/Footer.jsp" %>