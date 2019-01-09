<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>显示景点信息</title>
</head>
<body>
<h1 align="center">景点列表</h1>
   <c:if test="${empty(cart.map) }"> 
        您还没收藏景点
   </c:if>
   <c:if test="${!empty(cart.map) }"> 
       <table border="3" align="center">
       	 <tr>
       	     <td>序号</td>
       	     <td>景点名称</td>
       	     <td>地址</td>
       	     <td>描述</td>
       	     <td>操作</td>
       	 </tr>
       	  <c:forEach items="${cart.map}" var="entry">
       	  <tr>
       	  <td>${entry.value.tif.id}</td>
       	  	  <td>${entry.value.tif.name}</td>
       	      <td>${entry.value.tif.address}</td>
       	     <td>${entry.value.tif.description}</td>
       	      <td><input type="text" name="count" value="${entry.value.count}" style="width: 20"/></td>
       	      <td><a href="deleteItem?id=${entry.value.tif.id}">删除</a></td>
       	  </tr> 
       	  </c:forEach>
         
       </table>
   </c:if>
</body>
</html>