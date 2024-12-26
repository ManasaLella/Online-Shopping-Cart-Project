<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>customer</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }
    .background-container {
        position: relative;
        width: 100%;
        height: 100vh; /* Full viewport height */
        background-image: url('https://media.licdn.com/dms/image/v2/D5612AQFwtboy0RllCQ/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1709552807854?e=2147483647&v=beta&t=eMjzSz0rCcIJEdD4xAFIqVY2fsuU1itl69pQwUpSMTA');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
    .overlay-content {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        color: white;
        background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent background */
        padding: 20px;
        border-radius: 10px;
    }
    .overlay-content h2 {
        text-align: center;
        color:white;
    }
    .overlay-content a {
        display: inline-block;
        text-decoration: none;
        background-color: blue;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
        margin: 10px;
        font-size: 16px;
    }
    .overlay-content a:hover {
        background-color: darkblue;
    }
</style>

</head>
<body>
<div class="background-container">
        <div class="overlay-content">
<h2>WELCOME TO CUSTOMER</h2>

<button>
<a href="addcustomer">Register</a>
</button>

<button>
<a href="customerloginform.jsp">login</a>
</button>
</div>
</div>

</body>
</html>