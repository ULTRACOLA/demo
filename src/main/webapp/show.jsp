<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of inventorys</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Location</th>
                <th>Price</th>
            </tr>
            <c:forEach var="inventory" items="${Inventorys}">
                <tr>
                    <td><c:out value="${inventory.id}" /></td>
                    <td><c:out value="${inventory.name}" /></td>
                    <td><c:out value="${inventory.location}" /></td>
                    <td><c:out value="${inventory.price}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>