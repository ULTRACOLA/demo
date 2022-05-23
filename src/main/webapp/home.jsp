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
        <div align="left">
            <div>
                <table border="1" cellpadding="5">
                    <caption><h2>List of inventorys</h2></caption>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Amount</th>
                    </tr>
                    <c:forEach var="inventory" items="${Inventorys}">
                        <tr>
                            <td><c:out value="${inventory.id}" /></td>
                            <td><c:out value="${inventory.name}" /></td>
                            <td><c:out value="${inventory.location}" /></td>
                            <td><c:out value="${inventory.amount}" /></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <p>input data here</p>
            <form action="addInventory">
                <span>id : </span>
                <input type="text" name="id"><br>
                <span>name : </span>
                <input type="text" name="name"><br>
                <span>amount : </span>
                <input type="text" name="amount"><br>
                <span>location : </span>
                <input type="text" name="location"><br>
                <input type="submit"><br>
            </form>

            <p>update data here</p>
                <form action="updateInventory">
                <span>id : </span>
                <input type="text" name="id"><br>
                <span>name : </span>
                <input type="text" name="name"><br>
                <span>amount : </span>
                <input type="text" name="amount"><br>
                <span>location : </span>
                <input type="text" name="location"><br>
                <input type="submit"><br>
            </form>

            <p>delete data here</p>
            <form action="deleteInventory">
                <span>id : </span>
                <input type="text" name="id"><br>
                <span>comment : </span>
                <input type="text" name="comment"><br>
                <input type="submit"><br>
            </form>

            <p>add location here</p>
            <form action="setLocation">
                <span>id : </span>
                <input type="text" name="id"><br>
                <span>location : </span>
                <input type="text" name="location"><br>
                <input type="submit"><br>
            </form>
        </div>
    </body>
</html>