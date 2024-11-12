<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
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
        padding: 20px 40px;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        color: #f96d00;
        font-size: 28px;
        margin-bottom: 20px;
    }
    p {
        font-size: 18px;
        margin: 10px 0;
    }
    a {
        display: inline-block;
        margin-top: 20px;
        text-decoration: none;
        color: #f96d00;
        border: 1px solid #f96d00;
        padding: 8px 16px;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
    }
    a:hover {
        background-color: #f96d00;
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
        <h1>Welcome to the Club</h1>
        <p><strong>Name:</strong> ${name}</p>
        <p><strong>Age:</strong> ${age}</p>
        <p><strong>Username:</strong> ${username}</p>
        
        <a href="index.jsp">Logout</a>
    </div>
    
    <div class="watermark">Developed by pk</div>
</body>
</html>
