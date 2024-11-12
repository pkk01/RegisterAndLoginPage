<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
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
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 90%;
        text-align: center;
    }
    h3 {
        color: #00695c;
        font-size: 24px;
        margin-bottom: 20px;
    }
    label {
        font-size: 16px;
        color: #333;
        display: inline-block;
        margin-bottom: 8px;
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    button {
        background-color: #00695c;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    button:hover {
        background-color: #004d40;
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
        <h3>Please Fill Your Details</h3>
        <form action="RegisterUserServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="age">Age:</label>
            <input type="text" id="age" name="age" required>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Register</button>
        </form>
    </div>
    
    <div class="watermark">Developed by pk</div>
</body>
</html>
