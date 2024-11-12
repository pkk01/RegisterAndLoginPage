<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Failed</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #ff9a9e, #fad0c4);
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background-color: white;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 400px;
        width: 90%;
    }
    h2 {
        color: #d32f2f;
        font-size: 24px;
        margin-bottom: 20px;
    }
    .button-container a {
        text-decoration: none;
        margin: 10px;
    }
    .button-container button {
        background-color: #6a1b9a;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .button-container button:hover {
        background-color: #4a148c;
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
        <h2>Login Failed</h2>
        
        <div class="button-container">
            <a href="login.jsp"><button>Login</button></a>
            <a href="register.jsp"><button>Register</button></a>
        </div>
    </div>

    <div class="watermark">Developed by pk</div>
</body>
</html>
