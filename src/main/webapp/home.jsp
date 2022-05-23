<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
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
                    <c:forEach var="inventory" items="${inventorys}">
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

            <p>recover data here</p>
            <form action="recoverInventory">
                <span>id : </span>
                <input type="text" name="id"><br>
                <input type="submit"><br>
            </form>

            <div align="left">
            <div>
                <table border="1" cellpadding="5">
                    <caption><h2>List of deleted inventorys</h2></caption>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Amount</th>
                        <th>Original Id</th>
                        <th>Comment</th>
                    </tr>
                    <c:forEach var="deletedInventory" items="${deletedInventorys}">
                        <tr>
                            <td><c:out value="${deletedInventory.id}" /></td>
                            <td><c:out value="${deletedInventory.name}" /></td>
                            <td><c:out value="${deletedInventory.location}" /></td>
                            <td><c:out value="${deletedInventory.amount}" /></td>
                            <td><c:out value="${deletedInventory.originalId}" /></td>
                            <td><c:out value="${deletedInventory.comment}" /></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>