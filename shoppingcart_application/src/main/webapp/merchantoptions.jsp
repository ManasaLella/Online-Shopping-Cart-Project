<%@page import="com.jsp.shoppingcart_application.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>