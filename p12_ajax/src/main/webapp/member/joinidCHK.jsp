<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id ="dao" class="pkg.dao" />
    
    
<%
request.setCharacterEncoding("UTF-8");
String userId = request.getParameter("userId");
out.print("userId :" + userId);

int rtnCnt=0;
if(userId != null){
	rtnCnt = dao.chkUserId(userId);
}

out.print(rtnCnt > 0 ?"중복된 아이디 입니다." : "사용 가능한 아이디 입니다.");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>서버측 실행 페이지</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>비동기 요청 처리페이지</h1>
	</div>
	<!-- div#wrap -->
	
</body>
</html>    