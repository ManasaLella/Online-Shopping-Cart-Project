<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Merchant login</title>
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
        background-image: url('https://img.freepik.com/free-vector/happy-tiny-man-woman-with-shopping-bags-huge-gift-boxes_778687-1341.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }

  
    </style>
</head>
<body>
${msg}
<div class="background-container">
<form action="merchantlogin">
Enter email:<input type="text" name="email">
Enter password:<input type="password" name="password">
<input type="submit">

</form>

</body>
</html>