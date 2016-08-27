<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/23
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="top-header">
    <div class="logo">
        <a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png" alt="" /></a>
        <p>Aode Library</p>
    </div>
    <div class="search">
        <form action="${pageContext.request.contextPath}/stage/search" method="post">
            <input type="text" value="Search.." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search..';}" name="name"/>
            <input type="submit" value="">
        </form>
    </div>
    <div class="clearfix"></div>
</div>