<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Merchant register</title>
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
        background-image: url('https://bloomidea.com/sites/default/files/styles/og_image/public/blog/Tipos%20de%20come%CC%81rcio%20electro%CC%81nico_0.png?itok=jC9MlQZq');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }

  
    </style>
</head>
<body>
<div class="background-container">

<form:form action="savemerchant" modelAttribute="merchantobj">
<ul>

<li>Enter name : <form:input path="name"/></li>
<li>Enter email : <form:input path="email"/><li>
<li>Enter password : <form:input path="password"/></li>

<input type="submit">
</ul>
</form:form>

</body>
</html>