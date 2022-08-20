<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	
	int total = Integer.parseInt(request.getParameter("total"));
	int turn = Integer.parseInt(request.getParameter("turn"));
	
	int state = 0;
	
	if(total >= 31 && turn % 2 == 1){
		state = 1;
	}else if(total >= 31 && turn % 2 == 0){
		state = 2;
	}
	%>
	<h3>현재스코어 : <%=total %></h3>
	<%if(turn % 2 == 1){ %>	
	player 1 <br>
	<%}else{ %>
	player 2 <br>
	<%} %>	
	
	<%if(state == 1){ %>
	player 1 win <br>
	<a href="index.jsp">처음으로</a>
	<%}else if(state == 2){ %>
	player 2 win
	<a href="index.jsp">처음으로</a>
	<%}else{ %>
	<a href="br31.jsp?total=<%=total %>&turn=<%=turn + 1 %>&play=gamePlaying">뒤로가기</a>
	<%} %>
	
</body>
</html>