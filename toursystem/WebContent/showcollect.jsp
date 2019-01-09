<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>景点收藏</title>
</head>
<body>
 <h1 align="center">收藏详情</h1>
   <c:if test="${empty(cart.map) }"> 
        您还没收藏景点
   </c:if>
   <c:if test="${!empty(cart.map) }"> 
       <table border="3" align="center">
       	 <tr>
       	     <td>景点名称</td>
       	     <td>景点地址</td>
       	     <td>景点描述</td>
       	     
       	 </tr>
       	  <c:forEach items="${cart.map}" var="entry">
       	  <tr>
       	  	  <td>${entry.value.tourinformation.name}</td>
       	      <td>${entry.value.tourinformation.taddress}</td>
       	     <td>${entry.value.tourinformation.tdescription}</td>
       	    
       	     <td><a href="deleteItem?id=${entry.value.tourinformation.id}">删除</a></td>
       	  </tr> 
       	  </c:forEach>
       	  
       	  <tr>
       
       	     <td colspan="1"><a href="clearCart">清空收藏</a></td> 
       	  
       	  </tr>
       
       
       
       
       
       
       
       
       </table>
   </c:if>
</body>
</html>