<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/headerfooter/Header.jsp" %>

<style type="text/css">
	#join_main_base{position:relative;width:100%;height:600px;}
	#qna_main{position: relative; margin: 0 auto; width: 800px; height: 600px;}
	#temp{width: 10px; height: 30px;}
	#qna_title{font-weight: bold; font-size: 140%; position: relative;
	left:40px; width: 90%; height: 50px;}
	#qna_list{position: relative; left:40px; height: 360px; width: 90%; }
	table{border-top: 1.5px solid gray; border-bottom: 1.5px solid gray;	}
	table th{width: 120px; height: 30px; position: relative; background-color: #F6F4F1;	}
	table td:{ position: relative; }  
	#qna_btn{position: relative; left: 216px; width: 80px; height: 25px;}
</style>
<script type="text/javascript">
	function go_delete(){
		alert("비밀번호를 입력해주세여");
		if(prompt()==document.formm.pwd.value){
			document.formm.action="QA_Delete";
			document.formm.submit();
			alert("삭제되었습니다.");
		}
		else{alert("비밀번호가 틀렸습니다.");}
	}
</script>
	<article>
	<form name="formm" method="post">
	<div id="join_main_base">
		<div id="qna_main">
			<div id="temp"></div>
			<div id="qna_title">Q&nbsp;n&nbsp;A</div>
			<div id="qna_list">
			<input type="hidden" value="${qnaVO.qna_pwd }" name="pwd">
			<input type="hidden" value="${qnaVO.qna_num }" name="qna_num">
				<table>
					<tr>
						<th>제&nbsp;목</th>
						<td style="width: 320px;">${qnaVO.subject }</td>  
						<th>등&nbsp;록&nbsp;일</th>
						<td style="width: 150px;">
							<fmt:formatDate value="${qnaVO.indate }" type="date"/>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<hr style=" border: 1px solid gray;	">
								${qnaVO.content }
							<hr style=" border: 1px solid gray;"> 
						</td>
					</tr>
				<c:if test="${qnaVO.reply!=NULL}">
					<tr>
						<td colspan="4">
							<textarea rows="10" cols="70">${qnaVO.reply}</textarea>
							<hr style=" border: 1px solid gray;"> 
						</td>
					</tr>
				</c:if>
					<tr>
						<td colspan="4">
							<input type="button" value="삭제" onclick="go_delete()"
								style="background-color: silver;font-weight: bold; color: white;" id="qna_btn">
							<input type="button" value="수정" style="background-color: silver;	font-weight: bold; color: white;" 
								onclick="location.href='QA_Update_Form?qna_num=${qnaVO.qna_num}&qna_pwd=${qnaVO.qna_pwd }'" id="qna_btn">
							<input type="button" style="background-color: silver;	font-weight: bold; color: white;" 
								value="목록" onclick="location.href='QA_Form'"id="qna_btn">
							<hr style=" border:1px solid gray;">
						</td>
					</tr>
				</table><%-- 
				</c:forEach> --%>
			</div>
		</div>
		</div>
		</form>
	</article>
<%@ include file="/resources/headerfooter/Footer.jsp" %>