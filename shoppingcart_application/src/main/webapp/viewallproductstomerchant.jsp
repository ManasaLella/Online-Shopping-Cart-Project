<%@page import="com.jsp.shoppingcart_application.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<Product> products=(List<Product>)request.getAttribute("productslist");
%>

<table cellpadding="30px" border="2">
<th>id</th>
<th>brand</th>
<th>category</th>
<th>price</th>
<th>stock</th>
<th>update</th>
<th>delete</th>

<%
for(Product p:products)
{
%>

<tr>

<td><%=p.getId() %></td>
<td><%=p.getBrand() %></td>
<td><%=p.getCategory() %></td>
<td><%=p.getPrice() %></td>
<td><%=p.getStock() %></td>
<td><a href="update?id=<%=p.getId()%>">update</a></td>
<td><a href="delete?id=<%=p.getId()%>">delete</a></td>

</tr>

<%
}
%>




</table>

</body>
</html>