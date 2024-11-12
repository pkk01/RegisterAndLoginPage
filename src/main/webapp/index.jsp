<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
	color: #333;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: white;
	border-radius: 10px;
	padding: 30px 50px;
	box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
	text-align: center;
}

h1 {
	color: #0062cc;
	font-size: 30px;
	margin-bottom: 20px;
}

a {
	display: inline-block;
	margin-top: 15px;
	text-decoration: none;
	color: #0062cc;
	border: 1px solid #0062cc;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s, color 0.3s;
	font-size: 16px;
}

a:hover {
	background-color: #0062cc;
	color: white;
}

.watermark {
	position: fixed;
	bottom: 10px;
	right: 10px;
	font-size: 40px;
	color: rgba(255, 255, 255, 0.8);
	font-style: italic;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Hello and Welcome!</h1>
		<a href="login.jsp">Login</a> <br>
		<br> <a href="register.jsp">Register</a>
	</div>

	<div class="watermark">Developed by pk</div>
</body>
</html>
