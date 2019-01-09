<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改</title>
</head>
<body>
<form action="editProduct2" method="post" >
		<input type="hidden" name="id" value="${tourinformation.id }" />
	   景点名称：<input type="text" name="name" value="${tourinformation.name }"/><br>
	    景点地址：<input type="text" name="address" value="${tourinformation.address }"/><br>
	    商品图片：<input type="image" name="listimg" src="images/${tourinformation.listimg }" width="180" height="150"/><br>
	   <!-- 商品价格：<input type="text" name="price" value="${product.price }"/><br> -->
	    景点描述  <input type="text" name="description" value="${tourinformation.description }"/><br>
	    <input type="submit" value="修改">
	</form>
</body>
</html>