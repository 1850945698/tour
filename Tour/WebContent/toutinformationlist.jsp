<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tourinformationlist</title>
</head>
<body>
<table border="1px">
	<tr>
		<td>序号</td>
		<td>景点名称</td>
		<td>地址</td>
       	     <td>描述</td>
       	     <td>操作</td>
	</tr>
	<c:forEach items="${page}" var="p">
	<tr>
	    <td>${p.id}</td>
		<td>${p.name}</td>
		<td>${p.address}</td>
	
		<td>${p.description}</td>
		<td><a href="CartServlet?id=${p.id}">添加</a></td>
	</tr>
	</c:forEach>

</table>	
</body>
</html>