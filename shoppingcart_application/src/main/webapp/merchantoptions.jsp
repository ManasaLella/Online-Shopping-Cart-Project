<%@page import="com.jsp.shoppingcart_application.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Options for merchant</title>
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
        background-image: url('https://www.globalsign.com/application/files/2516/0498/6435/General_Banner_Online_Shopping_Blog_1_APAC_2020_09_03.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
    .overlay-content{
        position: absolute;
        top: 10%;
         text-align: center;
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
    </style>
</head>
<body>
<div class="background-container">
<div class="overlay-content">
<%
    Merchant m= (Merchant)session.getAttribute("merchantinfo");
%>

<%
if(m!=null){

%>
 <button>
 <a href="addproduct">Add product</a>
 </button>
 
<button>
<a href="viewallproducts">View All Products</a>
</button>

<%
}else{
%>

<a href="merchantloginform.jsp">login first</a>
<%
}
%>
</div>
</div>
</body>
</html>