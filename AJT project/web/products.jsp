<%-- 
    Document   : products
    Created on : 9 Nov 2025, 3:01:02 pm
    Author     : ravik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products | Ryzon Store</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #232f3e;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 24px;
            letter-spacing: 1px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }

        .product {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin: 15px;
            width: 220px;
            text-align: center;
            transition: transform 0.3s;
        }

        .product:hover {
            transform: scale(1.05);
        }

        .product img {
            width: 200px;
            height: 180px;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
            margin-top: 10px;
        }

        .product h3 {
            font-size: 18px;
            color: #333;
        }

        .product p {
            color: #555;
            font-weight: bold;
        }

        .product button {
            background-color: #ff9900;
            border: none;
            padding: 10px 15px;
            color: white;
            font-weight: bold;
            border-radius: 5px;
            margin-bottom: 15px;
            cursor: pointer;
        }

        .product button:hover {
            background-color: #e68a00;
        }
    </style>
</head>
<body>

<div class="header">Available Products</div>

<div class="container">
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/experiment6", "root", "Cnxl@424");

        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM products");

        while (rs.next()) {
%>
            <div class="product">
                <img src="<%= rs.getString("image") %>" alt="<%= rs.getString("name") %>">
                <h3><%= rs.getString("name") %></h3>
                <p>₹ <%= rs.getDouble("price") %></p>
                <button>Add to Cart</button>
            </div>
<%
        }
        con.close();
    } catch (Exception e) {
        out.println("<p style='color:red; text-align:center;'>Error: " + e.getMessage() + "</p>");
    }
%>
</div>

</body>
</html>

