<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/resources/headerfooter/Header.jsp" %>

<style type="text/css">
	#qna_main{position: relative; margin: 0 auto; width: 800px; height: 400px;}
	#temp{width: 10px; height: 30px;}
	#qna_title{font-weight: bold; font-size: 140%; position: relative;left:40px; width: 90%; height: 50px;}
	#qna_list{position: relative; left:40px; height: 230px; width: 90%; }
	#search_qna{width: 90%; height: 32px; border: 1px solid blue; position: relative;	left:40px;	}
	#search{position: relative; float: right; height: 20px; width: 220px; right: 10px;}
	#search_btn{position: relative; float: right; width: 60px; height: 25px;  background-color: silver;
		font-weight: bold; color: white;}
	table{border-top: 1.5px solid gray; border-bottom: 1.5px solid gray;	}
	table th{	width: 150px; height: 30px; position: relative; background-color: #F6F4F1;	}
	#notice{ width: 475px;}
	#buttons{position: relative; width: 265px; height: 50px;}
	
	
</style>
</head>
<body>
	<article>
	<form action="QA_Write" method="post">
		<div id="qna_main">
			<div id="temp"></div>
			<div id="qna_title">Q&nbsp;n&nbsp;A</div>
			<div id="qna_list">
				<table> 
					<tr>
						<th>제목</th>		
						<td><input type="text" name="subject"></td>
						<th>비밀번호</th>
						<td><input type="password" name="qna_pwd"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><textarea rows="10" cols="70" name="content"></textarea></td>
					</tr>
				</table>
			</div>
			<div id="buttons" style="float:right">
				<input type="submit"  value="글쓰기" style="background-color: silver;
						font-weight: bold; color: white;">
				<input type="button" onclick="location.href='QA_Form'" class="cancel"
						style="background-color: silver;font-weight: bold;color:white;" value="취소">
				<input type="button" class="submit" onclick="location.href='/project/'"
						style="background-color:silver;font-weight:bold;color:white;" value="메인으로"> 
			</div>
		</div>
		</form>
	</article>
<%@ include file="/resources/headerfooter/Footer.jsp" %>