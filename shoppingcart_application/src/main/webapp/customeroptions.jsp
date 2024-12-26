<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        background-image: url('https://www.edesk.com/wp-content/uploads/2021/03/find-trending-products-sell-ecommerce.png');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
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

  
    </style>
</head>

<body>
<div class="background-container">
<div class="overlay-content">
<h1 style="color:Tacao" align="center">WELCOME TO SHOPPING</h1>
<h3 <i class="bi bi-bag-check-fill"></i>><a href="fetchallproducts">View All Products</a></h3>
<h3 <i class="bi bi-bag-heart"></i>><a href="readbrandfromcustomer.jsp">View Products By Brand</a></h3>
<h3><a href="">View Products By Category</a></h3>
<h3><a href="">View Products Between Price Range </a></h3>
</div>
</body>
</html>