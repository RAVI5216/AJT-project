<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register - RYZONE</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #1f1c2c, #928dab);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-card {
            background-color: white;
            padding: 40px 35px;
            border-radius: 12px;
            width: 350px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.3);
            position: relative;
        }

        .register-card h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
            transition: 0.3s;
        }

        .form-group input:focus {
            border-color: #4f8ff7;
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            background-color: #4f8ff7;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background-color: #3b6edb;
        }

        .login-link {
            text-align: center;
            margin-top: 12px;
            font-size: 14px;
        }

        .login-link a {
            color: #4f8ff7;
            text-decoration: none;
            font-weight: bold;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        .error-msg {
            text-align: center;
            color: red;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .success-msg {
            text-align: center;
            color: green;
            font-weight: bold;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <div class="register-card">
        <h2>Create Your Account</h2>

        <!-- Display messages from servlet -->
        <% String error = (String) request.getAttribute("error"); 
           String success = (String) request.getAttribute("success");
           if(error != null){ %>
            <div class="error-msg"><%= error %></div>
        <% } else if(success != null) { %>
            <div class="success-msg"><%= success %></div>
        <% } %>

        <form action="Register" method="post">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" placeholder="Choose a username" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" placeholder="Choose a password" required>
            </div>
            <button type="submit">Register</button>
        </form>

        <div class="login-link">
            Already have an account? <a href="login.jsp">Login</a>
        </div>
    </div>

</body>
</html>
