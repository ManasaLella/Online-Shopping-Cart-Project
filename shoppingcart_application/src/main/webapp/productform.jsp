<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding product</title>
</head>
<body>


<form:form action="saveproduct" modelAttribute="productobj">
Enter brand:<form:input path="brand"/>
Enter category:<form:input path="category"/>
Enter price: <form:input path="price"/>
Enter stock:<form:input path="stock"/>
<input type="submit">


 </form:form>

</body>
</html>