<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>input data here</p>
<form action="addInventory">
<p>id</p>
<input type="text" name="id"><br>
<p>name</p>
<input type="text" name="name"><br>
<p>price</p>
<input type="text" name="price"><br>
<p>location</p>
<input type="text" name="location"><br>
<input type="submit"><br>
</form>
<p>search data here</p>
<form action="getInventory">
<input type="submit" value = "search" ><br>
</form>

<p>update data here</p>
<form action="updateInventory">
<p>id</p>
<input type="text" name="id"><br>
<p>name</p>
<input type="text" name="name"><br>
<p>price</p>
<input type="text" name="price"><br>
<p>location</p>
<input type="text" name="location"><br>
<input type="submit"><br>
</form>

<p>delete data here</p>
<form action="deleteInventory">
<input type="text" name="id"><br>
<input type="submit"><br>
</form>

<p>add location here</p>
<form action="setLocation">
<input type="text" name="id"><br>
<input type="text" name="location"><br>
<input type="submit"><br>
</form>
</body>
</html>