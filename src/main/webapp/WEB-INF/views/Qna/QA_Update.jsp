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
	table td:{ position: relative;}  
	#qna_btn{position: relative; left: 326px;	background-color: silver;	font-weight: bold; color: white; }
</style>
<script type="text/javascript">
	function pwdCheck(){
		if(document.formm.qna_pwd.value==""){
			alert("비밀번호를 입력해주세요.");
			document.formm.qna_pwd.focus();
		}else if(document.formm.qna_pwd.value != document.formm.pwdchk.value){
			alert("비밀번호가 틀립니다.");
			document.formm.qna_pwd.focus();
		}else{
			document.formm.action="QA_Update";
			document.formm.submit();
		}
	}
</script>
	<article>
	<form method="post" name="formm">
	<div id="join_main_base">
		<div id="qna_main">
			<div id="temp"></div>
			<div id="qna_title">Q&nbsp;n&nbsp;A</div>
			<div id="qna_list">
				<table>
					<tr>
						<th>제&nbsp;목</th>
						<td style="width: 240px;">&nbsp;&nbsp;<input type="text" name="subject">
							<input type="hidden" name="qna_num" value="${num }"> 
						</td>
						<th>비밀번호</th>
						<td>&nbsp;&nbsp;
							<input type="password" name="qna_pwd">
							<input type="hidden" name="pwdchk" value="${pwd}">
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<hr style=" border: 1px solid gray;	">
								<textarea rows="0" cols="0" name="content" style="margin: 3px;width: 733px; height: 219px;"></textarea>								
							<hr style=" border: 1px solid gray;"> 
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<input type="button" value="수정" onclick="pwdCheck()"id="qna_btn" >
							<input type="button" value="목록" onclick="location.href='QA_Form'"id="qna_btn">
							<hr style=" border: 1px solid gray;	">
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