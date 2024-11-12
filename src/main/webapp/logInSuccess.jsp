<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Successful</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #84fab0, #8fd3f4);
        color: #333;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background-color: white;
        border-radius: 8px;
        padding: 30px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 90%;
    }
    h2 {
        color: #00695c;
        font-size: 24px;
        margin-bottom: 20px;
    }
    a {
        text-decoration: none;
        color: #00695c;
        background-color: #e0f2f1;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s, color 0.3s;
    }
    a:hover {
        background-color: #00695c;
        color: #fff;
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
        <h2>You have successfully registered to the Portal. Please log in.</h2>
        <a href="login.jsp">Login</a>
    </div>
    
    <div class="watermark">Developed by pk</div>
</body>
</html>
