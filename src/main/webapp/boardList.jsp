<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>board List</title>
</head>
<body>
	<%
		List<HashMap<String, Object>> list 
			= (List<HashMap<String, Object>>) request.getAttribute("list");
		String html = "";
		for(int i = 0; i < list.size(); i++){
			html += "<a href='BoardView?boardNo=" + list.get(i).get("boardNo") + "&regUser=" +list.get(i).get("regUser") + "' >" 
				+ list.get(i).get("title") + "</a><br>";
		}
	%>
	<%= html%>

</body>
</html>