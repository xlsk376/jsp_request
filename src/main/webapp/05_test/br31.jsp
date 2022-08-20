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
	<h1>베스킨라빈스31</h1>
	
	<%
	String play = request.getParameter("play");
	
	int total = 0;
	int turn = 0;
	
	if(play.equals("gameStart")){
		total = 0;
		turn = 1;
	}else if(play.equals("gamePlaying")){
		total = Integer.parseInt(request.getParameter("total"));
		turn = Integer.parseInt(request.getParameter("turn"));
	}
	
	%>
	
	<h3>현재스코어 : <%=total %></h3>
	<%if(turn % 2 == 1){ %>	
	player 1 <br>
	<%}else{ %>
	player 2 <br>
	<%} %>	
	
	
	<button onclick="window.location.href='br31Pro.jsp?total=<%=total + 1 %>&turn=<%=turn %>'"><%=total + 1 %></button>
	<button onclick="window.location.href='br31Pro.jsp?total=<%=total + 2 %>&turn=<%=turn %>'"><%=total + 2 %></button>
	<button onclick="window.location.href='br31Pro.jsp?total=<%=total + 3 %>&turn=<%=turn %>'"><%=total + 3 %></button>
	
	
	
</body>
</html>