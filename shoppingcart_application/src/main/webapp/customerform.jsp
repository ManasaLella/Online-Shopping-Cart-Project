<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer register</title>
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
        background-image: url('https://images.projectsgeek.com/2014/07/Online-Shopping-System-project.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }

  
    </style>
</head>
<body>
<div class="background-container">



<form:form action="savecustomer" modelAttribute="customerobj">
<ul>
<li>Enter name :       <form:input path="name"/></li>

<li>Enter email :      <form:input path="email"/></li>

<li>Enter password :    <form:input path="password"/></li>

<li>Enter mobilenumber :<form:input path="mobilenumber"/></li>

<input type="submit">
</ul>



</form:form>
</div>

</body>
</html>