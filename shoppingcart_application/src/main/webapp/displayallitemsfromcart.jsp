<%@page import="com.jsp.shoppingcart_application.dto.Item"%>
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
  List<Item> items= (List<Item>)request.getAttribute("itemslist");
double totalprice= (Double)request.getAttribute("totalprice");
%>

<table cellpadding="20px" border="2">

<th>brand</th>
<th> Category</th>
<th> Qauantity</th>
<th> price</th>

<%
for(Item i: items){
%>

 <tr>
 <td><%=i.getBrand() %></td>
 <td><%=i.getCategory() %></td>
 <td><%=i.getQauantity() %></td>
 <td><%=i.getPrice() %></td>
 
 </tr>
<%
}
%>

</table>

Totalprice:<%=totalprice%> <br>

<a href="addorder" >Buy Now</a>


</body>
</html>