<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
         <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="additemtocart" modelAttribute="itemobj">
       <form:hidden path="pid"/>
brand:  <form:input path="brand" readonly="true" />
Category: <form:input path="category" readonly="true" />
price:  <form:input path="price" readonly="true" />
Enter qauantity:  <form:input path="qauantity" />
<input type="submit">

</form:form>
</body>
</html>