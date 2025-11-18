<%@ page import="javax.servlet.http.*,javax.servlet.*,java.io.*" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="style.css">
        <style>
            body{
                display:flex;
                justify-content:center;
                align-items:center;
                height:100vh;
                background:#f0f2f5;
            }
            .container{
                background:white;
                padding:30px 40px;
                border-radius:10px;
                width:350px;
                box-shadow:0 0 15px rgba(0,0,0,0.2);
            }
            h2{
                text-align:center;
                margin-bottom:20px;
            }
            .form-group{
                margin-bottom:15px;
            }
            label{
                display:block;
                font-weight:bold;
                margin-bottom:5px;
            }
            input[type=text],input[type=password]{
                width:100%;
                padding:10px;
                border-radius:5px;
                border:1px solid #ccc;
            }
            button{
                width:100%;
                padding:10px;
                background:#4f8ff7;
                color:white;
                border:none;
                border-radius:5px;
                cursor:pointer;
            }
            button:hover{
                background:#3b6edb;
            }
            .error{
                color:red;
                text-align:center;
                margin-bottom:10px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Login</h2>
            <%
                String error = (String) request.getAttribute("error");
                if (error != null) {
            %>
            <div class="error"><%= error%></div>
            <%
                }
            %>
            <form action="Login" method="post">
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" required>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" required>
                </div>
                <button type="submit">Login</button>
            </form>
            <p style="text-align:center;margin-top:10px;">Don't have an account? <a href="register.jsp">Register</a></p>
        </div>
    </body>
</html>
