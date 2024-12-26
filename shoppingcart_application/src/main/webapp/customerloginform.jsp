<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Login</title>
<style>
 body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }
    .background-container {
        position: relative;
        width: 100%;
        height: 100vh; 
        background-image: url('https://5.imimg.com/data5/SELLER/Default/2023/6/314591778/LV/KD/LE/84997243/online-shopping-system.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
    .container{
    }

  
    </style>
</head>
<body>
<div class="background-container">
${msg}
<form action="customerloginvalidation">
<div class="container">
Enter Email:<input type="text" name="email">
Enter Password:<input type="password" name="password">
<input type="submit">
</div>
 </form>
 </div>

</body>
</html>