<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${msg}
<form:form action="saveorder" modelAttribute="ordersobj">
Enter name : <form:input path="name" />
Enter mobilenumber:  <form:input path="mobilenumber"/>
Enter adress:  <form:input path="adress"/>

<input type="submit">

</form:form>
</body>
</html>