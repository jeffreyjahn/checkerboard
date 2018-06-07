<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Checkerboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
	
</head>
<body>
	<% Integer width =  Integer.parseInt(request.getParameter("width")); %>
	<% Integer height =  Integer.parseInt(request.getParameter("height")); %>
	<% boolean pink = false; %>
	<h1> Checkerboard: <%= width %>w x <%= height %>h</h1>
	<div id="wrapper">
		<% for (Integer i = 0; i < height;i++) {%>
			<% if(pink==false){
				pink = true;%>
			<% } else{ 
				pink = false;%>
			<% } %>
			<div id="row">
				<% for(Integer j = 0;j<width; j++){ %>
					<% if(pink == false) { 
						pink = true;%>
						<div class="box pink"></div>
					<% } else{ 
						pink = false;%>
						<div class="box blue"></div>
					<% } %>
				<% } %>
			</div>
		<% } %>
	</div>
</body>
</html>